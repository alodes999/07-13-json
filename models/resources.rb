class Resource
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id, 
  attr_accessor :link, :assignments_id
  
  def initialize (args)
    @id = args[id]
    @link = args[link]
    @assignments_id = args[assignments_id]
  end
  
end