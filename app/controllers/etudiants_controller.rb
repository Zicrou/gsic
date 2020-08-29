require 'date'
class EtudiantsController < ApplicationController
  require 'date'
  before_action :set_etudiant, only: [:show, :edit, :update, :destroy]

  # GET /etudiants
  # GET /etudiants.json
  def index
    @etudiants = Etudiant.all
  end

  # GET /etudiants/1
  # GET /etudiants/1.json
  def show
  end

  # GET /etudiants/new
  def new
    @etudiant = Etudiant.new
  end

  # GET /etudiants/1/edit
  def edit
    #byebug
  end

  # POST /etudiants
  # POST /etudiants.json
  def create
    @etudiant = Etudiant.new(etudiant_params)
    #byebug
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
    @etudiant.destroy
    respond_to do |format|
      format.html { redirect_to etudiants_url, notice: 'Etudiant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etudiant
      @etudiant = Etudiant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etudiant_params
      params.require(:etudiant).permit(:nom, :prenom, :date_nasissance, :genre_id, :telephone, :passport, :date_passport_expiration, :carteconsulaire_id, :adresse, :boursier, :type_bourse, :annee_langue_chinoise, :province, :annee_langue_chinoise, :universite_annee_langue_chinoise, :annee_debut_filiere, :province_uinversite_filiere, :universite_filiere, :filiere, :duree_formation, :annee_de_graduation, :niveau_formation)
    end
end
