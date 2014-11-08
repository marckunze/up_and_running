Class ApplicationController < Sinatra::Base
 helpers ApplicationHelper

 #set folder for templates to ../views, but absolute
 set :views, File.expand_path('../../views', __FILE__)

#don't enable logging when running tests
configure :production, :development do
 enable :logging
end

#will be used for 404s
not_found do
 title 'Not Found!'
  erb :not_found
 end
end
