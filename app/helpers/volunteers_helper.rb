module VolunteersHelper
  
  def html_info(volunteer)
    "<strong>#{volunteer.first_name} #{volunteer.last_name} (#{link_to 'details', volunteer})</strong><br/>take dogs: #{volunteer.can_keep_dogs}<br/>take cats: #{volunteer.can_keep_cats}<br/>take other: #{volunteer.can_keep_other}"
  end
end
