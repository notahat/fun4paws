require 'deprec'
  
set :application, "ls"
set :domain, "ls.goodfordogs.org"
set :repository,  "git://github.com/notahat/fun4paws.git"
set :branch, "master"
set :scm, :git

set :gateway, 'x1.failmode.com'
   
set :ruby_vm_type,      :ree
set :web_server_type,   :apache
set :app_server_type,   :passenger
set :db_server_type,    :mysql

set :database_yml_in_scm, false
set :shared_dirs, 'system'

# set :packages_for_project, %w(libmagick9-dev imagemagick libfreeimage3) # list of packages to be installed
set :gems_for_project, %w(fastercsv will_paginate) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, 'ls.failmode.com'
role :web, 'ls.failmode.com'
role :db,  'db.failmode.com', :primary => true

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    top.deprec.app.restart
  end
end
