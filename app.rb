require "sinatra"
require "active_record"
require "sinatra/json"
require "./config/db"

set :show_exceptions, :after_handler

Dir['./app/helpers/**/*.rb'].each { |file| require file }
Dir['./app/models/**/*.rb'].each { |file| require file }
Dir['./app/controllers/**/*.rb'].each { |file| require file }

