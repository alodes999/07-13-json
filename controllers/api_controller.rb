# Returns an Array of Hashes of all Assignment rows in the database.
# Gets an Array of Objects from SQL, and then runs each Object through the each loop and
# plugs the resulting hash into an array
get "/api/assignments" do
  assign_list = Assignment.all
  
  @assign_array = []
  
  assign_list.each do |assign|
    @assign_array << assign.make_hash
  end
  
  json @assign_array
end
# Returns an Array of Hashes corresponding to any table information referenced with the 
# Assignment ID passed into the route.
get "/api/assignments/:id" do
  resource = Resource.all_from_assignment(params["id"])
  contrib = Assignment.all_from_contributions(params["id"])
  assign_data = Assignment.find(params["id"])
  resource_data = []
  contrib_data = []
  
  resource.each do |r|
    object = Resource.new(r)
    resource_data << object
  end
  
  contrib.each do |c|
    object = Contribution.new(c)
    contrib_data << object
  end
  
  @data_array = [] 
  @data_array << assign_data.make_hash
  
  resource_data.each do |data|
    @data_array << data.make_hash
  end

  contrib_data.each do |data|
    @data_array << data.make_hash
  end
    
  json @data_array
end
# Returns an Array of Hashes of all Resources rows in the database.
# Gets an Array of Objects from SQL, and then runs each Object through the each loop and
# plugs the resulting hash into an array
get "/api/resources" do
  resource_list = Resource.all
  
  @resource_array = []
  
  resource_list.each do |rec|
    @resource_array << rec.make_hash
  end
  
  json @resource_array
end
# Adds a new Assignment row to our assignments table in our database
# Returns an Object, that we turn back into a Hash to pass to json.

# An example of the address to use this api:
# "/api/assignments/add/RPSv1?github=github.com/alodes999/06-05-rps"
get "/api/assignments/add/:new" do
  add_hash = {"description" => params["new"], "github" => params["github"]}
  
  new_assign = Assignment.add(add_hash)
  
  @assign_as_hash = new_assign.make_hash
  
  json @assign_as_hash
end
# Adds a new Resource row to our resources table in our database
# Returns an Object, that we turn back into a Hash to pass to json.
# Follows the same type of entry as the Assignments add above.
get "/api/resources/add/:new" do
  add_hash = {"assignments_id" => params["new"], "link" => params["link"]}
  
  new_resource = Resource.add(add_hash)
  
  @rec_as_hash = new_resource.make_hash
  
  json @rec_as_hash
end
# Adds a new Contribution row to our contributions table in our database
# Returns an Object, that we turn back into a Hash to pass to json.
get "/api/contributions/add/:assign_id/:classmate_id" do
  add_hash = {"assignments_id" => params["assign_id"], "classmates_id" => params["classmate_id"]}
  
  new_contrib = Contribution.add(add_hash)
  
  @contrib_as_hash = new_contrib.make_hash
  
  json @contrib_as_hash
end
# Deletes a row from the Assignment table.
# First brings an Object back of the row we find in the database, then
# deletes the row from the table corresponding to that id.  Sends the hash of the deleted
# row back through json
get "/api/assignments/delete/:id" do
  @del_assign = Assignment.find(params["id"])
  
  Assignment.delete(params["id"])
  
  @del_assign = @del_assign.make_hash
  
  json @del_assign
end
# Deletes a row from the Resources table.
# First brings an Object back of the row we find in the database, then
# deletes the row from the table corresponding to that id.  Sends the hash of the deleted
# row back through json
get "/api/resources/delete/:id" do
  @del_resource = Resource.find(params["id"])
  
  Resource.delete(params["id"])
  
  @del_resource = @del_resource.make_hash
  
  json @del_resource
end
# Deletes a row from the Contributions table.
# First brings an Object back of the row we find in the database, then
# deletes the row from the table corresponding to that id.  Sends the hash of the deleted
# row back through json
get "/api/contributions/delete/:id" do
  @del_contrib = Contribution.find(params["id"])
  
  Contribution.delete(params["id"])
  
  @del_contrib = @del_contrib.make_hash
  
  json @del_contrib
end