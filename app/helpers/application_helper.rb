module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      (link_to "#{current_user.first_name}", edit_user_registration_path) +
      " ".html_safe +
      (link_to 'logout', destroy_user_session_path, method: :delete)
    else
      (link_to 'Register', new_user_registration_path) +
      " ".html_safe +
      (link_to 'Login', new_user_session_path)
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} #{current_user.name}!"
      content_tag(:p, greeting, class: "greeting")
    end
  end
end
