WebsocketRails.setup do |config|
  config.standalone = true
  config.synchronize = false
  config.standalone_port = 3001

  config.redis_options = { host: 'localhost', port: '6379' }
end
