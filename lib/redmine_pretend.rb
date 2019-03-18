module RedminePretend
  def self.setup
    ApplicationController.send :include, RedminePretend::ApplicationControllerPatch
    require_dependency 'redmine_pretend/hooks'

    UsersController.send :helper, PretendHelper
  end
end
