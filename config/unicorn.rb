worker_processes 3
timeout 30
preload_app true
pid '/var/www/refinery/tmp/pids/unicorn.pid'
listen "/var/www/refinery/tmp/sockets/unicorn.sock", :backlog => 512
stderr_path "/var/www/refinery/log/unicorn.stderr.log"
stdout_path "/var/www/refinery/log/unicorn.stdout.log"
user 'user'

before_fork do |server, worker|
  # Replace with MongoDB or whatever
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
    Rails.logger.info('Disconnected from ActiveRecord')
  end
end

after_fork do |server, worker|
  # Replace with MongoDB or whatever
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
    Rails.logger.info('Connected to ActiveRecord')
  end
end
