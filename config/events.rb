WebsocketRails::EventMap.describe do
  subscribe :websocket, to: SocketsController, with_method: :message_recieve
end
