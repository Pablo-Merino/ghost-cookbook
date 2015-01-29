apt_package 'mysql-server' do
  action :install
end

execute 'change-mysql-root-password' do
  command "mysqladmin -u root -p'' password #{node['ghost']['mysql_password']}"
  returns [0, 1]
end

execute 'create-mysql-database' do
  command "mysql -uroot -p'#{node['ghost']['mysql_password']}' -e "\
          "\"create database #{node['ghost']['mysql_db']}\""
  returns [0, 1]
end
