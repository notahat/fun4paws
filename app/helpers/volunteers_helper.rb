module VolunteersHelper
  
  def html_info(v)
    "<strong>#{h v.first_name} #{h v.last_name} (#{link_to 'details', v, :target=> '_details'})</strong><br/>can take dogs: #{h v.can_keep_dogs}<br/>can take cats: #{h v.can_keep_cats}<br/>take other: #{h v.can_keep_other}<br/>fence security: #{h v.how_secure}<br/>special skills: #{h v.special_skills}".gsub(/[\[{'"]*/,'') 
  end
end
