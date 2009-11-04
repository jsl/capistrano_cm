= capistrano-cm

Lightweight extensions to Capistrano which help with updating the remote server to a particular state.

The methods defined in cm.rb will be made available in deployment tasks when the following is added to your recipe:

require 'capistrano/jsl/cm'