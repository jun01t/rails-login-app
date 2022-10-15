class ApplicationController < ActionController::Base
  # 新規登録後のリダイレクト先をマイページへ
  def after_sign_in_path_for(_resource)
    if current_user
      flash[:notice] = 'ログインに成功しました'
      todos_path # 　指定したいパスに変更
    end
  end

  def after_sign_out_path_for(_resource)
    flash[:notice] = 'ログアウトしました'
    logout_path
  end
end
