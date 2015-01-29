execute 'npm-install-deps' do
  command "su #{node['ghost']['user']} -l -c '"\
          "cd #{node['ghost']['apps_dir']}/ghost && npm install\'"
end

execute 'install-and-compile-grunt' do
  command "npm install grunt-cli -g && su #{node['ghost']['user']} -l -c '"\
          "cd #{node['ghost']['apps_dir']}/ghost && grunt init "\
          '&& grunt prod\''
end

template 'ghost-init' do
  path '/etc/init.d/ghost-init'
  source 'ghost-init.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

service 'ghost-init' do
  supports restart: true, start: true, stop: true, reload: true
  action [:enable, :start]
  subscribes :start, 'template[nginx]', :immediately
end
