default['rvm']['user_env']['paths'] = [
  ".rvm/gems/#{node['rvm']['user_default_ruby']}/bin",
  ".rvm/gems/#{node['rvm']['user_default_ruby']}@global/bin",
  ".rvm/rubies/#{node['rvm']['user_default_ruby']}/bin"
]

default['rvm']['user_env']['profile_filename'] = ".profile"
