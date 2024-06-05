# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :application, 'app'
set :repo_url, 'git@github.com:arooj-fatima-brainx/capistrano_training.git'

# Deploy to the user's home directory
set :deploy_to, "/home/ubuntu/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'node_modules'

append :linked_files, 'config/database.yml'

set :keep_releases, 5
set :rvm_type, :user
set :rvm_custom_path, '/usr/share/rvm'
set :rvm_ruby_version, "3.0.3"


set :deploy_via, :remote_cache
set :puma_systemctl_user, :user
set :puma_restart_command, 'bundle exec --keep-file-descriptors puma'

set :init_system, :systemd

set :bundle_flags, '--deployment'
set :bundle_env_variables, { 'BUNDLER_VERSION' => '2.4.1' }

# set :yarn_target_path, -> { release_path } # default not set
# set :yarn_flags, '--production --silent --no-progress'    # default
# set :yarn_roles, :all                                     # default
# set :yarn_env_variables, {}                               # default

# SSHKit.config.command_map[:sidekiq] = 'bundle exec sidekiq'
# SSHKit.config.command_map[:sidekiqctl] = 'bundle exec sidekiqctl'

# set :puma_rackup, -> { File.join(current_path, 'config.ru') }
# set :puma_state, "#{shared_path}/tmp/pids/puma.state"
# set :puma_pid, "#{shared_path}/tmp/pids/server.pid"
# set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock" #accept array for multi-bind
# set :puma_conf, "#{shared_path}/puma.rb"
# set :puma_access_log, "#{shared_path}/log/puma_error.log"
# set :puma_error_log, "#{shared_path}/log/puma_access.log"
# set :puma_role, :app
# set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 8]
set :puma_workers, 2
# set :puma_worker_timeout, nil
set :puma_phased_restart, true
set :puma_enable_socket_service, true
set :puma_init_active_record, true
# set :puma_preload_app, true

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure