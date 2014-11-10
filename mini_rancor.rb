require 'sinatra' #for actual serving and other

#This is a test application for proof of concept on a group project

#this is the default index/home page
#if sinatra receives a route(address) matching
# it returns the result. Careful of first close matching

get '/index' do
  erb :index
end

#Organizer poll creation page
get '/poll' do
  content_type :txt
  "Would you like to create a poll today?"
end

#Organizer poll creation success page
get '/poll/success' do
 content_type :txt
 "Wow you made a poll, what do you want a cookie?"
end

#Voter invite landing
# will likely need unique poll id and other params
get '/vote/' do
 content_type :txt
  "Hi 'user', you've been invited by 'Organizer' to participate in 'poll_name'\n
  See your choices below"
end

#Voter

# Results stats page
get '/results' do
 content_type :txt
 "Survey says winner is 'top' based on 'voting method' with 'x' votes successfully counted'"
end

get '/' do
  content_type :txt
  "hello world!"
end

#Needs a 404 route
