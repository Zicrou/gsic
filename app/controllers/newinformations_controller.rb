class NewinformationsController < ApplicationController
  before_action :set_newinformation, only: [:show, :edit, :update, :destroy]
  #access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
  access [:responsable, :president] => [:index, :show, :new, :create, :edit, :update, {except: [:destroy]}], user: [:index, :show, {except: [:new, :create, :edit, :update, :destroy]}], site_admin: :all
  #access [:user, :responsable, :president] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all

  # GET /newinformations
  def index
    if !current_user.is_a?(GuestUser)
      @newinformations = Newinformation.all
    else
      redirect_to root_path(), notice:"Permission denied"
    end
  end

  # GET /newinformations/1
  def show
  end

  # GET /newinformations/new
  def new
    @newinformation = Newinformation.new
  end

  # GET /newinformations/1/edit
  def edit
  end

  # POST /newinformations
  def create
    @newinformation = Newinformation.new(newinformation_params)

    if @newinformation.save
      redirect_to @newinformation, notice: 'New information was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /newinformations/1
  def update
    if @newinformation.update(newinformation_params)
      redirect_to @newinformation, notice: 'New information was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /newinformations/1
  def destroy
    @newinformation.destroy
    redirect_to newinformations_url, notice: 'New information was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newinformation
      @newinformation = Newinformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newinformation_params
      params.require(:newinformation).permit(:title, :body, :photo)
    end
end
