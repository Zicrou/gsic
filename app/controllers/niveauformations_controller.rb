class NiveauformationsController < ApplicationController
  before_action :set_niveauformation, only: [:show, :edit, :update, :destroy]
  access [:user, :embassade, :responsable_zone, :president] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all

  # GET /niveauformations
  def index
    @niveauformations = Niveauformation.all
  end

  # GET /niveauformations/1
  def show
  end

  # GET /niveauformations/new
  def new
    @niveauformation = Niveauformation.new
  end

  # GET /niveauformations/1/edit
  def edit
  end

  # POST /niveauformations
  def create
    @niveauformation = Niveauformation.new(niveauformation_params)

    if @niveauformation.save
      redirect_to @niveauformation, notice: 'Niveauformation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /niveauformations/1
  def update
    if @niveauformation.update(niveauformation_params)
      redirect_to @niveauformation, notice: 'Niveauformation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /niveauformations/1
  def destroy
    @niveauformation.destroy
    redirect_to niveauformations_url, notice: 'Niveauformation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_niveauformation
      @niveauformation = Niveauformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def niveauformation_params
      params.require(:niveauformation).permit(:name)
    end
end
