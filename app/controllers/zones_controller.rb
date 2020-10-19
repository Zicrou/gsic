class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]
  #access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
  access [:user] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all, [:responsable_zone, :president]=> [:index, :show, :new, :create, :edit, :update, { except: [ :destroy]}], [:embassade] => [:index, :show, {except: [:destroy, :new, :create, :edit, :update]}]

  # GET /zones
  def index
    @zones = Zone.all
  end

  # GET /zones/1
  def show
  end

  # GET /zones/new
  def new
    @zone = Zone.new
    
  end

  # GET /zones/1/edit
  def edit
   
  end

  # POST /zones
  def create
    #@responsable_zones = User.responsable_zone_only()

    @zone = Zone.new(zone_params)

    if @zone.save
      redirect_to @zone, notice: 'Zone was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /zones/1
  def update
    @responsable_zones = User.responsable_zone_only()

    if @zone.update(zone_params)
      redirect_to @zone, notice: 'Zone was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /zones/1
  def destroy
    @zone.destroy
    redirect_to zones_url, notice: 'Zone was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def zone_params
      params.require(:zone).permit(:name, :codeqr, :user_id)
    end
end
