set :application, "skneuilly"
set :repository, "git://github.com/ellydrinh/ShorinjiKempoClubNeuilly.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
require 'bundler/capistrano'
require 'capistrano/ext/multistage'
require 'bundler/setup'
require 'production_chain/capistrano'

set :stages, %w(production)
set :scm, "git"
set :repository_cache, "git_cache"
set :copy_exclude, [".DS_Store", ".git", "tmp/import"]
ssh_options[:forward_agent] = true

set :default_environment, {
  'PATH' => "/home/royallys/.rvm/gems/ruby-1.9.3-p448@skneuilly/bin:/home/royallys/.rvm/gems/ruby-1.9.3-p448@global/bin:/home/royallys/.rvm/rubies/ruby-1.9.3-p448/bin:/home/royallys/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games",
  'RUBY_VERSION' => '1.9.3p448',
  'GEM_HOME' => '/home/royallys/.rvm/gems/ruby-1.9.3-p448@skneuilly',
  'GEM_PATH' => '/home/royallys/.rvm/gems/ruby-1.9.3-p448@skneuilly:/home/royallys/.rvm/gems/ruby-1.9.3-p448@global'
}

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
  desc "Restart Passenger app"
  task :restart do
    run "#{ try_sudo } touch #{ File.join(current_path, 'tmp', 'restart.txt') }"
  end
end
# end