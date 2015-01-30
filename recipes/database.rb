mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password node['ghost']['mysql_password']
  action [:create, :start]
end

mysql_database 'ghost_production' do
  connection(
    host: '127.0.0.1',
    username: 'root',
    password: node['ghost']['mysql_password']
  )
  action :create
end
