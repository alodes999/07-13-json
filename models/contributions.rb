require_relative "database_class_methods"
require_relative "database_instance_methods"

class Contribution
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :classmates_id, :assignments_id
  
  def initialize (args)
    @classmates_id = args[classmates_id]
    @assignments_id = args[assignments_id]
  end
  
  
  
end