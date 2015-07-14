get "/api/assignments" do
  assign_list = Assignment.all
  
  @assign_array = []
  
  assign_list.each do |assign|
    @assign_array << assign.make_hash
  end
  
  json @assign_array
end

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


get "/api/resources" do
  resource_list = Resource.all
  
  @resource_array = []
  
  resource_list.each do |rec|
    @resource_array << rec.make_hash
  end
  
  json @resource_array
end
    # "/api/assignments/add/RPSv1?github=github.com/alodes999/06-05-rps"
get "/api/assignments/add/:new" do
  add_hash = {"description" => params["new"], "github" => params["github"]}
  
  new_assign = Assignment.add(add_hash)
  
  @assign_as_hash = new_assign.make_hash
  
  json @assign_as_hash
end

get "/api/resources/add/:new" do
  add_hash = {"assignments_id" => params["new"], "link" => params["link"]}
  
  new_resource = Resource.add(add_hash)
  
  @rec_as_hash = new_resource.make_hash
  
  json @rec_as_hash
end

get "/api/contributions/add/:assign_id/:classmate_id" do
  add_hash = {"assignments_id" => params["assign_id"], "classmates_id" => params["classmate_id"]}
  
  new_contrib = Contribution.add(add_hash)
  
  @contrib_as_hash = new_contrib.make_hash
  
  json @contrib_as_hash
end

get "/api/assignments/delete/:id" do
  @del_assign = Assignment.find(params["id"])
  
  Assignment.delete(params["id"])
  
  @del_assign = @del_assign.make_hash
  
  json @del_assign
end

get "/api/resources/delete/:id" do
  @del_resource = Resource.find(params["id"])
  
  Resource.delete(params["id"])
  
  @del_resource = @del_resource.make_hash
  
  json @del_resource
end

get "/api/contributions/delete/:id" do
  @del_contrib = Contribution.find(params["id"])
  
  Contribution.delete(params["id"])
  
  @del_contrib = @del_contrib.make_hash
  
  json @del_contrib
end