return {
  tag = 'libraries',
  summary = 'HTTP(S) requests.',
  description = [[
    The [lovr-http](https://github.com/bjornbytes/lovr-http) plugin performs HTTP requests.

    First, `require` the plugin and save it into a variable: `local http = require 'http'`.

    The module has one function:

        status, data, headers = http.request(url, [options])

    This will perform an HTTP request and block until the request is complete.

    ### Arguments

    `url` is the URL to request.  If it doesn't have a protocol, then `http://` will be added.

    `options` is optional, and is used for advanced request settings.

    `options.method` is the HTTP method to use, also called the verb.  `GET` is used by default if
    there's no data in the request, otherwise it defauls to `POST`.  It will be converted to
    all-caps.

    `options.data` is the data to send to the server, also called the body.  It can be a few
    different types:

    - When `data` is nil, no request body will be sent (and `method` will default to `GET`).
    - When `data` is a string, the string will be used directly as the request body.
    - When `data` is a table, then pairs in the table will be URL encoded and concatenated together
      to form an `application/x-www-form-urlencoded` body.  For example, if data is
      `{ n = 10, k = 'v!' }`, then the request body will be something like `k=v%21&n=10`. Table
      pairs will only be used if the key is a string and the value is a string or number.
    - When `data` is a lightuserdata, the data pointed to by the lightuserdata will be used as the
      request body. Additionally, the `datasize` option should be an integer indicating how big the
      request body is, in bytes.

    When `options.data` is set, the `Content-Type` request header will default to
    `application/x-www-urlencoded` unless it's set to something else.

    `options.headers` is a table of request headers to send to the server.  Pairs in the table will
    only be used if the key is a string and the value is a string or number.

    ### Returns

    If an error occurs, the function returns `nil, errormessage`.

    Otherwise, 3 values are returned:

    - `status` is an integer with the HTTP status code (200 is OK, 404 is Not Found, etc.).
    - `data` is a string with the data sent by the server (HTML, JSON, binary, etc.).
    - `headers` is a table of response headers.
  ]],
  external = true,
  notes = [[
    On Linux, this module requires the `curl` library to be installed.  Example on Debian-based
    distributions:

        sudo apt install libcurl4
  ]],
  example = [[
    local http = require 'http'

    local status, data, headers = http.request('https://zombo.com')

    print('welcome')
    print(status)
    print(data)
    print('headers:')
    for k, v in pairs(headers) do
      print('\t' .. k, v)
    end
  ]]
}
