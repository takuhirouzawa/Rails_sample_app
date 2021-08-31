module SessionsHelper

    # 渡されたユーザーでログインする
    def log_in(user)
        session[:user_id] = user.id
    end

    # 現在ログイン中のユーザーを返す(いる場合)

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id]) #current_userがnilの場合，User.find_by(id:session[:user_id])が入る。nilでない場合，@current_userが返ってくる
        end
    end

end
