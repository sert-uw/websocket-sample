class SocketsController < WebsocketRails::BaseController
  def message_recieve
    WebsocketRails[:channel1].trigger :message, message
  end
end
