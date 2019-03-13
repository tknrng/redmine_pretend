require 'redmine_pretend'

Redmine::Plugin.register :redmine_pretend do
  name 'Redmine Pretend plugin'
  description 'Plugin to pretend selected user'
  version '2.0.2'
  url 'https://github.com/AlphaNodes/redmine_pretend'
  requires_redmine version_or_higher: '3.4.0'
end
