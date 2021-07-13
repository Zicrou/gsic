class BureausmembersController < ApplicationController
  before_action :set_bureausmember, only: [:show, :edit, :update, :destroy]
  access [:responsable] => [:index, {except: [:show, :new, :create, :edit, :update,:destroy]}],[:president] => [:index, :show, :new, :create, :edit, :update, :destroy], [:user] => [:index, :show, {except: [:new, :create, :edit, :update, :destroy]}], site_admin: :all
  #access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /bureausmembers
  def index
    @bureausmembers = Bureausmember.all
  end

  # GET /bureausmembers/1
  def show
  end

  # GET /bureausmembers/new
  def new
    @bureausmember = Bureausmember.new
  end

  # GET /bureausmembers/1/edit
  def edit
  end

  # POST /bureausmembers
  def create
    @bureausmember = Bureausmember.new(bureausmember_params)

    if @bureausmember.save
      redirect_to @bureausmember, notice: 'Bureausmember was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bureausmembers/1
  def update
    if @bureausmember.update(bureausmember_params)
      redirect_to @bureausmember, notice: 'Bureausmember was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bureausmembers/1
  def destroy
    @bureausmember.destroy
    redirect_to bureausmembers_url, notice: 'Bureausmember was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bureausmember
      @bureausmember = Bureausmember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bureausmember_params
      params.require(:bureausmember).permit(:user_id, :profil_id, :duration, :started_at)
    end
end
