# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  ActionView::Base.default_form_builder = SimpleFormBuilder
end
