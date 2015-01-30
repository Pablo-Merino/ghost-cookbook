user node['ghost']['user'] do
  home node['ghost']['home']
  shell '/bin/bash'
end

group node['ghost']['group'] do
  members node['ghost']['user']
end

directory node['ghost']['home'] do
  owner node['ghost']['user']
  group node['ghost']['group']
  mode '0755'
  recursive true
end

execute 'chown-ghost-userdir' do
  command "chown -R #{node['ghost']['user']}:#{node['ghost']['group']} "\
          "#{node['ghost']['home']}"
  user 'root'
  action :run
end

node.default['nodejs']['version'] = '0.10.26'

%w( apt
    git
    zip
    build-essential::default
    chruby::system
    nodejs::nodejs_from_binary
    nodejs::npm
    nginx
    ghost-pablo::structure
    ghost-pablo::configuration
    ghost-pablo::nginx_config
    ghost-pablo::database
    ghost-pablo::install ).each do |recipe|
  include_recipe recipe
end
