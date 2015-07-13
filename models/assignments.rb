require_relative "database_class_methods"
require_relative "database_instance_methods"

class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :description, :github
  
  def initialize (args)
    @id = args["id"]
    @description = args["description"]
    @github = args["github"]
  end
  
end