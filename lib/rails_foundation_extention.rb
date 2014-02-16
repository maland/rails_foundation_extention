require "rails_foundation_extention/version"
require 'rails_foundation_extention/railtie' if defined?(Rails)

module RailsFoundationExtention
  module ViewHelpers
    def li_dropdown(name, &block)
      content_tag :li, link_to( name, '#' ) + content_tag( :ul, capture(&block), class: "dropdown" ), class: "has-dropdown"
    end
  
  
    def li_a(name, url, options = {})
      content_tag :li, link_to( name, url, options )
    end
  
  
    def li_form(&block)
      content_tag :li, capture(&block), class: 'has-form'
    end
  
  
    def fi(icon, content = nil)
      content_tag :i, content, class: "fi-#{icon}"
    end
  
    
    def r(add_classes = '', &block)
      content_tag :div, capture(&block), class: 'row '+add_classes
    end


    # def c(add_classes = '', &block)
    #   content_tag :div, capture(&block), class: 'column '+add_classes
    # end
    def c(add_classes = '', content = nil, &block)
      if block_given?
        content = capture(&block)
        add_classes = 'small-6' if add_classes.blank?
      else
        if content.blank?
          content = add_classes
          add_classes = 'small-6'
        end
      end
    
      content_tag :div, content, class: 'column '+add_classes
    end
    
    
    def span(content, css_class = '')
      content_tag :span, content, class: css_class
    end


    def ln(date_time_value)
      date_time_value.blank? ? '[unkown]' : l(date_time_value)
    end

  end
end