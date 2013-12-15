module ApplicationHelper
  def display_delete?(request_user, comment_user)
    current_user == request_user || current_user == comment_user
  end
end
