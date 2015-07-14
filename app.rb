require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'

require 'sqlite3'
require_relative 'database_setup.rb'

require_relative 'models/assignments.rb'
require_relative 'models/contributions.rb'
require_relative 'models/resources.rb'
require_relative 'models/classmates.rb'

require_relative 'controllers/home.rb'
require_relative 'controllers/assignment_controller.rb'
require_relative 'controllers/contribution_controller.rb'
require_relative 'controllers/resource_controller.rb'
require_relative 'controllers/classmate_controller.rb'
require_relative 'controllers/api_controller.rb'
