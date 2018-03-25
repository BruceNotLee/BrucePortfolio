module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
      " ".html_safe +
      (link_to 'Login', new_user_session_path)
    else
      (link_to "#{current_user.first_name}(#{current_user.role})", edit_user_registration_path) +
      " ".html_safe +
      (link_to 'logout', destroy_user_session_path, method: :delete)
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} #{current_user.name}!"
      content_tag(:p, greeting, class: "greeting")
    end
  end

  def set_copyright
    DynamicPortfolioCopyright::Renderer.copyright 'Bruce Lesko', 'All Rights Reserved'
  end
end
