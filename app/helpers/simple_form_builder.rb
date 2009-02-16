class SimpleFormBuilder < ActionView::Helpers::FormBuilder
  
  def text_field_row(attribute, label = nil, options={})
    <<-EOF
      <div class="row">
        #{label(attribute, (label || attribute.to_s.humanize) + ":")}
        #{text_field(attribute, options)}
      </div>
    EOF
  end
  def check_box_row(attribute, label = nil, options={})
    <<-EOF
      <div class="row">
        #{check_box(attribute, options)}
        #{label(attribute, (label || attribute.to_s.humanize) + ":")}
      </div>
    EOF
  end
  def password_field_row(attribute, label = nil, options={})
    <<-EOF
      <div class="row">
        #{label(attribute, (label || attribute.to_s.humanize) + ":")}
        #{password_field(attribute, options)}
      </div>
    EOF
  end
  
  def collection_select_row(attribute, collection, value_method, text_method, label = nil)
    @template.content_tag(:div, :class => "row") do
      label(attribute, (label || attribute.to_s.humanize) + ":") +
      collection_select(attribute, collection, value_method, text_method)
    end
  end
    
  def submit_row(label)
    <<-EOF
      <div class="row">
        #{submit(label)}
      </div>
    EOF
  end
  
end
