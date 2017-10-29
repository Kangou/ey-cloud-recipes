#
# Cookbook Name:: sidekiq
# Attrbutes:: default
#

default[:sidekiq] = {
  # Sidekiq will be installed on to application/solo instances,
  # unless a utility name is set, in which case, Sidekiq will
  # only be installed on to a utility instance that matches
  # the name
  #:utility_name => 'sidekiq',
  
  # Number of workers (not threads)
  :workers => 3,
  
  # Concurrency
  :concurrency => 5,
  
  # Queues
  :queues => {
    # :queue_name => priority
    :default => 1,
	:import_export => 2,
	:mailers => 2,
	:json => 1,
  },

  # Memory limit
  :worker_memory => 1024, # MB
  
  # Verbose
  :verbose => false,

  # Timeout (in seconds) to use when terminating a bloated process
  # this is passed as a parameter to sidekiqctl, invoked inside /engineyard/bin/sidekiq
  :timeout => 115
}
