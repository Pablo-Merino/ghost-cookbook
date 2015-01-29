default['ghost']['name'] = 'ghost'
default['ghost']['user'] = 'ghost'
default['ghost']['group'] = 'ghost'
default['ghost']['home'] = '/opt/ghost'
default['ghost']['apps_dir'] = '/www/apps'
default['ghost']['tmp_file'] = '/tmp/ghost_master.zip'
default['ghost']['mirror'] =
  'https://github.com/TryGhost/Ghost/archive/master.zip'
default['ghost']['port'] = 2368
default['ghost']['env'] = 'production'
default['ghost']['local_domain'] = 'ghost-pablo.local'

default['ghost']['mysql_password'] = 'change-me-lol'
default['ghost']['mysql_db'] = 'ghost_production'

default['ruby']['rubies'] = ['2.1.4']
default['ruby']['ruby_build_mirror'] =
  'https://github.com/sstephenson/ruby-build.git'
default['ruby']['chruby_mirror'] =
  'https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz'
default['ruby']['rubies_path'] = '/opt/rubies'
