require_dependency 'application_controller'

module RedminePretend
  module ApplicationControllerPatch
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.class_eval do
        helper PretendHelper
        helper_method :real_user
      end
    end

    module InstanceMethods
      def real_user
        @real_user ||= User.find_by(id: User.active.find(session[:real_user_id]))
      end
    end
  end
end
