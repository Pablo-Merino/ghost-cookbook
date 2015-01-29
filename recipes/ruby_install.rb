execute 'install-chruby' do
  command 'cd /usr/src && '\
          "git clone #{node['ruby']['ruby_build_mirror']} && "\
          'cd ruby-build && ./install.sh && cd - && '\
          "wget -O chruby-0.3.8.tar.gz #{node['ruby']['chruby_mirror']} && "\
          'tar -xzvf chruby-0.3.8.tar.gz && cd chruby-0.3.8 && make install'
end

directory node['ruby']['rubies_path']

node['ruby']['rubies'].each do |ruby|
  execute "install ruby #{ruby}" do
    command "ruby-build #{ruby} #{node['ruby']['rubies_path']}/#{ruby} && "\
            "#{node['ruby']['rubies_path']}/#{ruby}/bin/gem install bundler"
  end

  magic_shell_environment 'PATH' do
    value "#{ENV['PATH']}:#{node['ruby']['rubies_path']}/#{ruby}/bin"
  end
end
