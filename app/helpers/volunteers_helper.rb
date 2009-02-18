module VolunteersHelper
  
  def html_info(volunteer)
    "<strong>#{h volunteer.first_name} #{h volunteer.last_name} (#{link_to 'details', volunteer})</strong><br/>take dogs: #{h volunteer.can_keep_dogs}<br/>take cats: #{h volunteer.can_keep_cats}<br/>take other: #{h volunteer.can_keep_other}".gsub(/[\[{'"]*/,'')
  end
end
