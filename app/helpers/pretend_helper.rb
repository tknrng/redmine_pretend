module PretendHelper
  def can_user_pretend_to?(user)
    return false unless user.try(:id)

    not_pretending? &&
      User.current.admin? &&
      User.current != user &&
      !user.admin?
  end

  private

  def not_pretending?
    session[:real_user_id].blank?
  end
end
