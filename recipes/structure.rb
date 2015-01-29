directory node['ghost']['apps_dir'] do
  owner node['ghost']['user']
  group node['ghost']['group']
  mode '0755'
  recursive true
end

execute 'clone-stable-ghost' do
  command "cd #{node['ghost']['apps_dir']} && git clone "\
          'https://github.com/TryGhost/Ghost.git -b stable ghost'
  user 'root'
end

execute 'chown-ghost-files' do
  command "chown -R #{node['ghost']['user']}:#{node['ghost']['group']} "\
          "#{node['ghost']['apps_dir']}/ghost"
  user 'root'
  action :run
end
