class Contribution
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :classmate_id, :assignment_id
  
  def initialize (args)
    @classmate_id = args[classmate_id]
    @assignment_id = args[assignment_id]
  end
  
end