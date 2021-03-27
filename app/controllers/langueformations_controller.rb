class LangueformationsController < ApplicationController
  before_action :set_langueformation, only: [:show, :edit, :update, :destroy]
  access [:user, :responsable, :president] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all

  # GET /langueformations
  # GET /langueformations.json
  def index
    @langueformations = Langueformation.all
  end

  # GET /langueformations/1
  # GET /langueformations/1.json
  def show
  end

  # GET /langueformations/new
  def new
    @langueformation = Langueformation.new
  end

  # GET /langueformations/1/edit
  def edit
  end

  # POST /langueformations
  # POST /langueformations.json
  def create
    @langueformation = Langueformation.new(langueformation_params)

    respond_to do |format|
      if @langueformation.save
        format.html { redirect_to @langueformation, notice: 'Langueformation was successfully created.' }
        format.json { render :show, status: :created, location: @langueformation }
      else
        format.html { render :new }
        format.json { render json: @langueformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /langueformations/1
  # PATCH/PUT /langueformations/1.json
  def update
    respond_to do |format|
      if @langueformation.update(langueformation_params)
        format.html { redirect_to @langueformation, notice: 'Langueformation was successfully updated.' }
        format.json { render :show, status: :ok, location: @langueformation }
      else
        format.html { render :edit }
        format.json { render json: @langueformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /langueformations/1
  # DELETE /langueformations/1.json
  def destroy
    @langueformation.destroy
    respond_to do |format|
      format.html { redirect_to langueformations_url, notice: 'Langueformation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_langueformation
      @langueformation = Langueformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def langueformation_params
      params.require(:langueformation).permit(:name)
    end
end
