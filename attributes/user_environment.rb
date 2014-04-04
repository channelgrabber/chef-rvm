default['rvm']['user_env']['paths'] = {
  "/var/www/.rvm/gems/#{node['rvm']['user_default_ruby']}/bin",
  "/var/www/.rvm/gems/#{node['rvm']['user_default_ruby']}@global/bin",
  "/var/www/.rvm/rubies/#{node['rvm']['user_default_ruby']}/bin"
}

default['rvm']['user_env']['profile_filename'] = ".profile"
