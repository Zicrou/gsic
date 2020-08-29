class BoursiersController < ApplicationController
  before_action :set_boursier, only: [:show, :edit, :update, :destroy]

  # GET /boursiers
  # GET /boursiers.json
  def index
    @boursiers = Boursier.all
  end

  # GET /boursiers/1
  # GET /boursiers/1.json
  def show
  end

  # GET /boursiers/new
  def new
    @boursier = Boursier.new
  end

  # GET /boursiers/1/edit
  def edit
  end

  # POST /boursiers
  # POST /boursiers.json
  def create
    @boursier = Boursier.new(boursier_params)

    respond_to do |format|
      if @boursier.save
        format.html { redirect_to @boursier, notice: 'Boursier was successfully created.' }
        format.json { render :show, status: :created, location: @boursier }
      else
        format.html { render :new }
        format.json { render json: @boursier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boursiers/1
  # PATCH/PUT /boursiers/1.json
  def update
    respond_to do |format|
      if @boursier.update(boursier_params)
        format.html { redirect_to @boursier, notice: 'Boursier was successfully updated.' }
        format.json { render :show, status: :ok, location: @boursier }
      else
        format.html { render :edit }
        format.json { render json: @boursier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boursiers/1
  # DELETE /boursiers/1.json
  def destroy
    @boursier.destroy
    respond_to do |format|
      format.html { redirect_to boursiers_url, notice: 'Boursier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boursier
      @boursier = Boursier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boursier_params
      params.require(:boursier).permit(:name)
    end
end
