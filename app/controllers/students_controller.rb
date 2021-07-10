class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  #access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
  access  [:user, :responsable, :president] => [:index, :show, :edit, :update, :new, :create, {except: [:destroy]}], site_admin: :all
  # GET /students
  def index
    if !current_user.is_a?(GuestUser)
      if logged_in?(:site_admin, :responsable, :president)
        @students = Student.all.recent
      elsif logged_in?(:user)
        @students = Student.where(user_id: current_user.id)
      end
    else
      redirect_to root_path(), notice:"Permission denied"
    end
  end

  # GET /students/1
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  def create
    @student = Student.new(student_params)
    
    @student.user_id = current_user.id

    if !current_user.student.nil?
      redirect_to @student, notice: 'This user already have a student'
    else
      if @student.save
        redirect_to @student, notice: 'Student was successfully created.'
      else
        render :new
      end
    end
  end

  # PATCH/PUT /students/1
  def update

    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:name, :surname, :genre_id, :date_of_birth, :telephone, :email, :passport_number, :passport_expiration_date, :address, :are_you_in_china, :photo, :passport_picture, :boursier_id, :typebourse_id, :faireanneelangue_id, :language_province, :year_of_chinese_language, :university_of_chinese_language_year, :starting_year_major, :province_id, :university_major, :major, :langueformation_id, :major_duration, :graduation_year, :niveauformation_id, :user_id)
    end
end
