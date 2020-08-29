class CarteconsulairesController < ApplicationController
  before_action :set_carteconsulaire, only: [:show, :edit, :update, :destroy]

  # GET /carteconsulaires
  # GET /carteconsulaires.json
  def index
    @carteconsulaires = Carteconsulaire.all
  end

  # GET /carteconsulaires/1
  # GET /carteconsulaires/1.json
  def show
  end

  # GET /carteconsulaires/new
  def new
    @carteconsulaire = Carteconsulaire.new
  end

  # GET /carteconsulaires/1/edit
  def edit
  end

  # POST /carteconsulaires
  # POST /carteconsulaires.json
  def create
    @carteconsulaire = Carteconsulaire.new(carteconsulaire_params)

    respond_to do |format|
      if @carteconsulaire.save
        format.html { redirect_to @carteconsulaire, notice: 'Carteconsulaire was successfully created.' }
        format.json { render :show, status: :created, location: @carteconsulaire }
      else
        format.html { render :new }
        format.json { render json: @carteconsulaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteconsulaires/1
  # PATCH/PUT /carteconsulaires/1.json
  def update
    respond_to do |format|
      if @carteconsulaire.update(carteconsulaire_params)
        format.html { redirect_to @carteconsulaire, notice: 'Carteconsulaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @carteconsulaire }
      else
        format.html { render :edit }
        format.json { render json: @carteconsulaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteconsulaires/1
  # DELETE /carteconsulaires/1.json
  def destroy
    @carteconsulaire.destroy
    respond_to do |format|
      format.html { redirect_to carteconsulaires_url, notice: 'Carteconsulaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteconsulaire
      @carteconsulaire = Carteconsulaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carteconsulaire_params
      params.require(:carteconsulaire).permit(:name)
    end
end
