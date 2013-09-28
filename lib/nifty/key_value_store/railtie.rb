module Nifty
  module KeyValueStore
    class Railtie < Rails::Railtie #:nodoc:
      
      initializer 'nifty.key_value_store.initialize' do

        ActiveSupport.on_load(:active_record) do
          require 'nifty/key_value_store/key_value_pair'
          require 'nifty/key_value_store/model_extension'
          ::ActiveRecord::Base.send :include, Nifty::KeyValueStore::ModelExtension
        end
        
      end
      
      generators do
        require 'nifty/key_value_store/migration_generator'
      end
      
    end
  end
end
