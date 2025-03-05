class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({"email" => params["email"]})
    if @user["email"] != nil
      if BCrypt::Password.new(@user["password"]) == params["password"]
        session["user_id"] = @user["id"]
        flash["notice"] = "welcome, #{@user["first_name"]}"
        redirect_to "/companies"
      else 
        flash["notice"] = "login failed. Please try again"
        redirect_to "/login"
      end
    else 
      flash["notice"] = "login failed. Please try again"
      redirect_to "/login"
    end
  end

  def destroy
    session["user_id"] = nil
    flash["notice"] = "Bye"
    redirect_to "/login"
  end
end
