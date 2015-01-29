template "#{node.nginx.dir}/sites-available/ghost.conf" do
  source 'nginx-ghost.conf.erb'
  mode '0644'
end

nginx_site 'ghost.conf'

nginx_site 'default' do
  enable false
end
