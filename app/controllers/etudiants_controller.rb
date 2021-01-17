require 'date'
class EtudiantsController < ApplicationController
  require 'date'
  before_action :set_etudiant, only: [:show, :edit, :update, :destroy]

  access [:user, :embassade, :responsable_zone, :president] => [:index, :show, :new, :create, :edit, :update, :carte_membre,{except: [:destroy, :generate_matricule_member_card]}], site_admin: :all


  # GET /etudiants
  # GET /etudiants.json
  def index
    @total_etudiant = Etudiant.count
    #@entreenchine = Etudiant.where(etreenchine: "non").count
    #@entreenchine.count()
    #@entreenchine
    if logged_in?(:site_admin, :responsable_zone, :president, :embassade)
      @etudiants = Etudiant.all
      @etudiant_zone = current_user.etudiant.province.zone
      

    elsif logged_in?(:user)
      @etudiants = Etudiant.where(user_id: current_user.id)
      if !current_user.etudiant.nil?
        @etdt = @etudiants.first
        #etdt = @etudiant
        #pry
      end

      #@etudiants = Etudiant.where(user_id: current_user.id)
      #@etudiant_zone = @etudiants.first.province.zone

      #if !@etudiants.empty?
#
      #  @dat = @etudiants.first.province_uinversite_filiere
      #  @data = Province.find_by name: @dat
      #  @data_zone = @data.zone
  #
      #end
    else
      redirect_to root_path(), notice:"Vous n'êtes pas autorisé à acceder à cette page"
    end
  end

  # GET /etudiants/1
  # GET /etudiants/1.json
  def show
    if !@etudiant.province_langue.nil?
      @dat = @etudiant.province_langue
      @data = Province.find_by id: @dat
      @province_langue = @data
    end
  end

  # GET /etudiants/new
  def new
    @etudiant = Etudiant.new
  end

  # GET /etudiants/1/edit
  def edit
  end

  def generate_matricule_member_card
    puts "GreiY!"
    @etudiants = Etudiant.all
    @etudiants.each do |etudiant|
      @anne_graduate = etudiant.annee_de_graduation.strftime("%Y")
      #puts @anne_graduate
      @zone_etudiant = etudiant.province.zone.id
      #puts "Zone id = #{@zone_etudiant}"
      if etudiant.id > 0 and etudiant.id < 10 
        #puts "#{etudiant.id}  Est inferieur a 2 chiffres donc"
        @id_number = "00#{etudiant.id}"
        #puts "Now etudiant_id is =  #{@id_number}"
      end
      if etudiant.id > 10 and etudiant.id < 100 
        #puts "#{etudiant.id}  Est inferieur a 3 chiffres donc"
        @id_number = "0#{etudiant.id}"
        #puts "Now etudiant_id is =  #{@id_number}"
      end
      if etudiant.id > 100 and etudiant.id < 1000
        #puts "#{etudiant.id}  Est inferieur a 4 chiffres donc"
        @id_number = "#{@id_number}"
        #puts "Now id_number =  #{@id_number}"
      end
      @matricule = "#{@anne_graduate}#{@id_number}#{@zone_etudiant}"
      @idEtudiant = etudiant.id
      if Etudiant.generate_matricule_member_card(@idEtudiant,@matricule)
        puts "ALHAMDOULILLAH"
        puts "GreiY"
      end
    end 
    redirect_to etudiants_path()
    #pry
    
  end

  # POST /etudiants
  # POST /etudiants.json
  def create
    @etudiant = Etudiant.new(etudiant_params)
    
    @etudiant.user_id = current_user.id
    
    respond_to do |format|
      if @etudiant.save
        format.html { redirect_to @etudiant, notice: 'Etudiant was successfully created.' }
        format.json { render :show, status: :created, location: @etudiant }
      else
        format.html { render :new }
        format.json { render json: @etudiant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etudiants/1
  # PATCH/PUT /etudiants/1.json
  def update
    @etudiant.user_id = current_user.id
    
    respond_to do |format|
      if @etudiant.update(etudiant_params)
        format.html { redirect_to @etudiant, notice: 'Etudiant was successfully updated.' }
        format.json { render :show, status: :ok, location: @etudiant }
      else
        format.html { render :edit }
        format.json { render json: @etudiant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etudiants/1
  # DELETE /etudiants/1.json
  def destroy
    if logged_in?(:site_admin)
      @etudiant.destroy
      respond_to do |format|
        format.html { redirect_to etudiants_url, notice: 'Etudiant was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to etudiants_path, notice:"Vous n'êtes pas autorisé à acceder à cette page"
    end
  end

  # Customs methods
  def mazone
    
    #@etudiants.each do |etudiant|
    #  etudzone
    #end
    @responsablezone = current_user.zone
    @etudiants = Etudiant.where(zone: @responsablezone.id)
    @total_etudiant = Etudiant.where(zone: @responsablezone.id).count
    
  end

  def carte_membre
    @id_etudiant = params["format"]
    @etudiant = Etudiant.find(@id_etudiant)
    #@data = Province.find_by name: @dat
    #@etudiant = Etudiant.find(params[:etudiant])
    #pry
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etudiant
      @etudiant = Etudiant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etudiant_params
      params.require(:etudiant).permit(:nom, :prenom, :date_nasissance, :genre_id, :telephone, :passport, :date_passport_expiration, :carteconsulaire_id, :adresse, :boursier_id, :typebourse_id, :faireanneelangue_id, :province_id, :annee_langue_chinoise, :universite_annee_langue_chinoise, :annee_debut_filiere, :province_langue, :universite_filiere, :filiere, :langueformation_id, :duree_formation, :annee_de_graduation, :niveau_formation, :photo, :passport_image, :etreenchine, :email)
    end
end
