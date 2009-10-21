module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /the homepage/i
      root_path
    when /the sign up page/i
      new_user_path
    when /the sign in page/i
      new_session_path
    when /the password reset request page/i
      new_password_path
    when /the create tutor page/i
      new_tutor_path
    when /the edit tutor (\d+) page/i
      edit_tutor_path(:id => $1)
    when /the list tutors page/i
      tutors_path
    when /the list pages page/i
      pages_path
    # Add more page name => path mappings here
    
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end
 
World(NavigationHelpers)
