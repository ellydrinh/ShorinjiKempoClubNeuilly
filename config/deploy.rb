set :application, "skneuilly"
set :repository, "git@github.com:ellydrinh/ShorinjiKempoClubNeuilly.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "royallys"
set :runner, "royallys"
set :use_sudo, false
set :rails_env, "production"
set :branch, "production"
set :deploy_to, "/home/royallys/www/skneuilly_production"

role :web, "62.210.239.193"                          # Your HTTP server, Apache/etc
role :app, "62.210.239.193"                          # This may be the same as your `Web` server
role :db,  "62.210.239.193", :primary => true # This is where Rails migrations will run
role :db,  "62.210.239.193"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end