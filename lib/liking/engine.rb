module Liking
  class Engine < ::Rails::Engine
    isolate_namespace Liking
    
    initializer 'liking.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Liking::LikesHelper
      end
    end
    
  end
end
