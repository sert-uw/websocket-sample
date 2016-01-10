class @ChatClass

  constructor: () ->
    @dispatcher = new WebSocketRails('localhost/websocket', true)
    @channel = @dispatcher.subscribe('channel1')
    @events()

  events: () =>
    $('#send').on 'click', @sendMessage
    @dispatcher.bind 'message', @receiveMessage
    @channel.bind 'message', @receiveMessage

  sendMessage: (event) =>
    name = $('#name').val()
    comment = $('#comment').val()
    @dispatcher.trigger 'websocket', { name: name, comment: comment }
    $('#comment').val('')

  receiveMessage: (message) =>
    name = document.createElement('td')
    name.innerHTML = message.name

    comment = document.createElement('td')
    comment.innerHTML = message.comment

    row = document.createElement('tr')
    row.appendChild name
    row.appendChild comment

    $('#chat_body').prepend row

$ ->
  window.chatClass = new ChatClass()
