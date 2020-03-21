require 'sinatra'
enable :sessions

get "/set" do
    session[:message] = params[:message]
    "session saved"
end 
  get "/get" do
    session[:message]
end

get '/' do
  "Hello, World!"
end

post "/submitted" do
    "<h1>Form Submitted</h1>"
  end
  
post "/logon" do
  if username == "bob" && password == "pass"
    "SUCCESS!"
  else
    "Failure"
  end
end

post '/hello' do
  sessions[:stored_name]= params[:name]
end

get '/message_value' do
  "Saved the name"
end

get '/greet' do
  "Hey there, #{params[:name]}!"
  
  
require 'sinatra'
require 'sinatra/reloader'

post '/candles' do
    @howmany = params[:howmany]
    erb :candles
end

end