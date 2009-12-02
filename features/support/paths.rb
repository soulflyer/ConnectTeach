module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
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
    when /the first newsitem page/i
      newsitem_path(1)
    when /the list newsitems page/i
      newsitems_path
    when /the tutor info page/i
      '/tutorinfo'
    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
