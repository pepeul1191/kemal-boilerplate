require "kemal"
require "./routes/hello"

get "/" do
  "URL Vacía"
end

Kemal.run