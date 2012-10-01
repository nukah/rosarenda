worker_processes 8
timeout 30
preload_app true
pid '/home/rosarenda/tmp/pids/unicorn.pid'
listen "/home/rosarenda/tmp/sockets/unicorn.sock", :backlog => 512
stderr_path "/home/rosarenda/log/unicorn.stderr.log"
stdout_path "/home/rosarenda/log/unicorn.stdout.log"
user 'rosarenda'

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
