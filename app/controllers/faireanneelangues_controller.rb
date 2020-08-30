class FaireanneelanguesController < ApplicationController
  before_action :set_faireanneelangue, only: [:show, :edit, :update, :destroy]

  # GET /faireanneelangues
  # GET /faireanneelangues.json
  def index
    @faireanneelangues = Faireanneelangue.all
  end

  # GET /faireanneelangues/1
  # GET /faireanneelangues/1.json
  def show
  end

  # GET /faireanneelangues/new
  def new
    @faireanneelangue = Faireanneelangue.new
  end

  # GET /faireanneelangues/1/edit
  def edit
  end

  # POST /faireanneelangues
  # POST /faireanneelangues.json
  def create
    @faireanneelangue = Faireanneelangue.new(faireanneelangue_params)

    respond_to do |format|
      if @faireanneelangue.save
        format.html { redirect_to @faireanneelangue, notice: 'Faireanneelangue was successfully created.' }
        format.json { render :show, status: :created, location: @faireanneelangue }
      else
        format.html { render :new }
        format.json { render json: @faireanneelangue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faireanneelangues/1
  # PATCH/PUT /faireanneelangues/1.json
  def update
    respond_to do |format|
      if @faireanneelangue.update(faireanneelangue_params)
        format.html { redirect_to @faireanneelangue, notice: 'Faireanneelangue was successfully updated.' }
        format.json { render :show, status: :ok, location: @faireanneelangue }
      else
        format.html { render :edit }
        format.json { render json: @faireanneelangue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faireanneelangues/1
  # DELETE /faireanneelangues/1.json
  def destroy
    @faireanneelangue.destroy
    respond_to do |format|
      format.html { redirect_to faireanneelangues_url, notice: 'Faireanneelangue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faireanneelangue
      @faireanneelangue = Faireanneelangue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faireanneelangue_params
      params.require(:faireanneelangue).permit(:name)
    end
end
