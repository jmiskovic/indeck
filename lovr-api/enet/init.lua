return {
  tag = 'libraries',
  summary = 'UDP networking library.',
  description = [[
    ENet is a UDP networking plugin bundled with LÖVR that can be used for networking and
    multiplayer experiences.  ENet allows messages to be marked for reliable and in-order delivery,
    allowing the speed of UDP to be used without sacrificing reliability.

    The full documentation and examples can be found on the [lua-enet](http://leafo.net/lua-enet/)
    page.  LÖVE also has lua-enet documentation [here](https://love2d.org/wiki/lua-enet).
  ]],
  external = true,
  example = {
    description = [[
      Here's a simple echo server example. The client sends a message to the server and waits for a
      response. The server waits for a message and sends it back to the client.
    ]],
    code = [[
      -- client/main.lua
      local enet = require 'enet'

      function lovr.load()
        local host = enet.host_create()
        local server = host:connect('localhost:6789')

        local done = false
        while not done do
          local event = host:service(100)
          if event then
            if event.type == 'connect' then
              print('Connected to', event.peer)
              event.peer:send('hello world')
            elseif event.type == 'receive' then
              print('Got message: ', event.data, event.peer)
              done = true
            end
          end
        end

        server:disconnect()
        host:flush()
      end

      -- server/main.lua
      local enet = require 'enet'

      function lovr.load()
        local host = enet.host_create('localhost:6789')
        while true do
          local event = host:service(100)
          if event and event.type == 'receive' then
            print('Got message: ', event.data, event.peer)
            event.peer:send(event.data)
          end
        end
      end
    ]]
  }
}
