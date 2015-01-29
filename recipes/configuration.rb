template 'ghost-config-js' do
  path "#{node['ghost']['apps_dir']}/ghost/config.js"
  source 'config.js.erb'
  owner node['ghost']['user']
  group node['ghost']['group']
  mode '0755'
end
