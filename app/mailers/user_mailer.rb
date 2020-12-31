class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        @user.name = "Zicrou"
        @user.email = "AazSeck@Zicrou.com"
        @url = "localhost:3000/Login"
        mail(to: @user.email, subject: "WElome To My Awesome Site!")
    end
end
