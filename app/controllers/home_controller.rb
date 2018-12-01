class HomeController < ActionController::Base

  protect_from_forgery except: :login

  def login_form

  end

  def login

    # @user = User.find_by(addles: params[:addles], pwd: params[:pwd])

    if params[:addles].nil? && params[:pwd].nil? then
      # @error = "ログイン失敗"
      render("home/login")
    else
      if User.find_by(addles: params[:addles],pwd: params[:pwd]).nil? then
        #デーたがDBにない
        # redirect_to("/test")
        @error = "ログイン失敗"
        render("home/login")
      else

        @user_id = User.find_by(addles: params[:addles],pwd: params[:pwd]).id
        session[:user_id] = @user_id

        cookies[:user_id] = @user_id
        # session[:id] = User.find_by(addles: params[:addles],pwd: params[:pwd])
        # render("home/login")
        url = "/mypage/" + @user_id.to_s #暗黒の処理
        redirect_to(url)
      end

    end



  end

  def register

  end

  def test
    @user_id = params[:id] || "hoge"

  end
end
