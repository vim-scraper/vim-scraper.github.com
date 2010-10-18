# In theory, you should be able to run this like so:
#      shotgun ./config.ru -p 4000
# and there's no need to restart the server anymore.
# In practice, it appears to be corrupting binary files.
# Use 'jekyll --server' for now and restart every time you make a change.

require 'rack/jekyll'    # rack-jekyll gem
require 'yaml'

run Rack::Jekyll.new
