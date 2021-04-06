class YesNosController < ApplicationController
  before_action :set_yes_no, only: [:show, :edit, :update, :destroy]
  access [:user, :embassade, :responsable, :president] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all

  # GET /yes_nos
  def index
    @yes_nos = YesNo.all
  end

  # GET /yes_nos/1
  def show
  end

  # GET /yes_nos/new
  def new
    @yes_no = YesNo.new
  end

  # GET /yes_nos/1/edit
  def edit
  end

  # POST /yes_nos
  def create
    @yes_no = YesNo.new(yes_no_params)

    if @yes_no.save
      redirect_to @yes_no, notice: 'Yes no was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /yes_nos/1
  def update
    if @yes_no.update(yes_no_params)
      redirect_to @yes_no, notice: 'Yes no was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /yes_nos/1
  def destroy
    @yes_no.destroy
    redirect_to yes_nos_url, notice: 'Yes no was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yes_no
      @yes_no = YesNo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yes_no_params
      params.require(:yes_no).permit(:name)
    end
end
