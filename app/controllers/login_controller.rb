class LoginController < ApplicationController
  protect_from_forgery except: :login

  def index

  end

  def login

    if params[:uname] == nil || params[:uname] == ""
      return redirect_to controller: 'login', action: "index", alert: "ログインエラー"
    end

    user_Info = User.where(uname: params[:uname])

    user_Info.each do | user |
      if params[:password] == user[:password]
        session[:uid] = user[:id]
        session[:permission] = user[:permission]
        return redirect_to controller: "index", action: "index"
      else
        return redirect_to controller: 'login', action: "index", alert: "ログインエラー"
      end
    end

  end


  def get

  end

end
