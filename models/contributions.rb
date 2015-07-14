require_relative "database_class_methods"
require_relative "database_instance_methods"

class Contribution
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :classmates_id, :assignments_id
  
  def initialize (args)
    @classmates_id = args["classmates_id"]
    @assignments_id = args["assignments_id"]
  end  
  # Deletes a row from the table.  Can be called on the class itself, and deletes a row from the
  # Class table that called it
  # 
  # Accepts 1 argument, the id number of the row to delete in the table that called the method
  # 
  # Returns [], and deletes the row from the table
  def classmate_delete(id_to_delete)
    CONNECTION.execute("DELETE FROM #{get_table_name} WHERE classmates_id = #{id_to_delete};")
  end
  
  # Deletes a row from the table.  Can be called on the class itself, and deletes a row from the
  # Class table that called it
  # 
  # Accepts 1 argument, the id number of the row to delete in the table that called the method
  # 
  # Returns [], and deletes the row from the table
  def assignment_delete(id_to_delete)
    CONNECTION.execute("DELETE FROM #{get_table_name} WHERE assignment_id = #{id_to_delete};")
  end
end