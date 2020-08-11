module WithPresent
  class Railtie < Rails::Railtie
    initializer "with_present.add_helpers" do
      ActionView::Base.include WithPresent::Helpers
    end
  end
end
