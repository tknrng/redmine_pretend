class PretendController < ApplicationController
  def update
    return render_403 unless can_pretend?

    unless pretending?
      user = User.find(params[:id])
      return render_403 if user.admin?

      remember_current_user
      logger.info "#{User.current} is pretend as #{user}"
      set_user(user)
    end

    redirect_to user_path(user)
  end

  def restore
    if pretending?
      logger.info "#{session[:real_user_id]} stop pretend"
      set_user(real_user)
      reset_pretent_storage
    end
    redirect_to :back
  end

  def pretending?
    session[:real_user_id].present?
  end

  private

  def set_user(user)
    User.current = user
    start_user_session(user)
  end

  def can_pretend?
    User.current.logged? && User.current.admin?
  end

  def remember_current_user
    session[:real_user_id] = User.current.id
  end

  def reset_pretent_storage
    @real_user = nil
    session[:real_user_id] = nil
  end
end
