# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  #@tok = "New"
  def new
    super
  end
  
  # POST /resource/password
  def create
    @u = params[:user][:email]
    raw, hashed = Devise.token_generator.generate(User, :reset_password_token)
    @user = User.find_by(email: @u)
    @user.reset_password_token = hashed
    @user.reset_password_sent_at = Time.now.utc
    if @user.save
      puts "ALHAMDOULILLAH"
      #@link1 = "http://localhost:3000/password/edit?reset_password_token=" + raw
      #@link2 = "http://localhost:3000/password/edit?reset_password_token=#{raw}"
      #puts @link1
      #puts @link2
      #redirect_to "http://localhost:3000/password/edit?reset_password_token=" + raw, notice:"Create your new password"
      redirect_to "https://www.gsic.info/password/edit?reset_password_token=" + raw, notice:"Create your new password"
      #respond_with({}, location: after_sending_reset_password_instructions_path_for(resource_name))
    #link_to edit_password_path(@link)
    end
    #self.resource = resource_class.send_reset_password_instructions(resource_params)
    #yield resource if block_given?
    #
    #if successfully_sent?(resource)
    #  respond_with({}, location: after_sending_reset_password_instructions_path_for(resource_name))
    #else
    #  respond_with(resource)
    #end
  end
   
   # GET /resource/password/edit?reset_password_token=abcdef
   # def edit
   #   super
  # end
  
  # PUT /resource/password
  # def update
    # super
  # end
  
  # protected
   
   #def after_resetting_password_path_for(resource)
   # super(resource)
   #end
  
   # The path used after sending reset password instructions
   #def after_sending_reset_password_instructions_path_for(resource_name)
    #new_session_path(resource_name) if is_navigational_format?
  #end

  #def resource_params
  #  params.fetch(resource_name, {})
  #  @rescr_email = params.fetch(resource_name, {})
  #  pry
  #end
end
