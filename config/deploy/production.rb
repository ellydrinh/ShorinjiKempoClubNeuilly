set :deploy_to, "/home/royallys/www/skneuilly_production"

set :rvm_ruby_string, 'ree'
require "rvm/capistrano"

set :user, "royallys"
set :runner, "royallys"
set :use_sudo, false
set :rails_env, "production"

set :branch, "production"

role :app, "62.210.239.193", :primary => true
role :web, "62.210.239.193"
