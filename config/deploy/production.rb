

role :app, "ks392825.kimsufi.com", :primary => true
role :web, "ks392825.kimsufi.com"
role :db,  "ks392825.kimsufi.com", :primary => true

set :deploy_to, "/home/royallys/www/skneuilly_production"

set :user, "royallys"
set :runner, "royallys"
set :use_sudo, false
set :rails_env, "production"
set :scm, "git"
set :branch, "production"
set :repository_cache, "git_cache"
set :copy_exclude, [".DS_Store", ".git", "tmp/import"]
ssh_options[:forward_agent] = true

set :deploy_to, "/home/royallys/www/skneuilly_production"

role :web, "62.210.239.193"                          # Your HTTP server, Apache/etc
role :app, "62.210.239.193", :primary => true        # This may be the same as your `Web` server
role :db,  "62.210.239.193", :primary => true # This is where Rails migrations will run
