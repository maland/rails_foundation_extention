require 'rails_foundation_extention'
module RailsFoundationExtention
  class Railtie < Rails::Railtie
    initializer "rails_foundation_extention" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
