module RedminePretend
  def self.setup
    ApplicationController.send(:include, RedminePretend::ApplicationControllerPatch)
    require_dependency 'redmine_pretend/hooks'
  end
end
