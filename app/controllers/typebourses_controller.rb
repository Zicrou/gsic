class TypeboursesController < ApplicationController
  before_action :set_typebourse, only: [:show, :edit, :update, :destroy]
  access [:user, :responsable, :president] => {except: [:index, :show, :new, :create, :edit, :update, :destroy]}, site_admin: :all

  # GET /typebourses
  # GET /typebourses.json
  def index
    @typebourses = Typebourse.all
  end

  # GET /typebourses/1
  # GET /typebourses/1.json
  def show
  end

  # GET /typebourses/new
  def new
    @typebourse = Typebourse.new
  end

  # GET /typebourses/1/edit
  def edit
  end

  # POST /typebourses
  # POST /typebourses.json
  def create
    @typebourse = Typebourse.new(typebourse_params)

    respond_to do |format|
      if @typebourse.save
        format.html { redirect_to @typebourse, notice: 'Typebourse was successfully created.' }
        format.json { render :show, status: :created, location: @typebourse }
      else
        format.html { render :new }
        format.json { render json: @typebourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typebourses/1
  # PATCH/PUT /typebourses/1.json
  def update
    respond_to do |format|
      if @typebourse.update(typebourse_params)
        format.html { redirect_to @typebourse, notice: 'Typebourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @typebourse }
      else
        format.html { render :edit }
        format.json { render json: @typebourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typebourses/1
  # DELETE /typebourses/1.json
  def destroy
    @typebourse.destroy
    respond_to do |format|
      format.html { redirect_to typebourses_url, notice: 'Typebourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typebourse
      @typebourse = Typebourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typebourse_params
      params.require(:typebourse).permit(:name)
    end
end
