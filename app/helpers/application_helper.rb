module ApplicationHelper
  def logged_in?
    !current_corsaire.nil?
  end
end
