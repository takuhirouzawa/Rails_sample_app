class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) #strong Parameters(コントローラー層で必須のパラメータと許可されたパラメータが指定でき，マスアサインメントの脆弱性から守れる)
    if @user.save
      flash[:success] = "welcome to the Sample App!" #User登録が成功した場合にフラッシュメッセージを表示する
      # 保存の成功をここで扱う。

    else
      render 'new'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
