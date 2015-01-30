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

default['chruby']['rubies'] = { '2.1.4' => true, '1.9.3-p392' => false }
