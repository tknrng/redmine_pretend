module RedminePretend
  if Rails.version < '5.2'
    ActionDispatch::Callbacks.to_prepare do
      require_dependency 'redmine_pretend/hooks'
      require_dependency 'redmine_pretend/users_controller_patch'
    end
  else
    ActiveSupport::Reloader.to_prepare do
      require_dependency 'redmine_pretend/hooks'
      require_dependency 'redmine_pretend/users_controller_patch'
    end
  end
end
