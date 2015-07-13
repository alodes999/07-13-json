get "/resource/view" do
  @resource = Resource.all
  erb :"resource/view"
end

get "/resource/add" do
  @assignment_list = Assignment.all
  erb :"resource/add"
end

get "/resource_add_to_database" do
  add_hash = {"link" => params["resource"]["link"], "assignments_id" => params["resource"]["assignments_id"]}
  
  Resource.add(add_hash)
  erb :"success/success"  
end

get "/resource/edit" do
  @resource = Resource.all
  @assignments = Assignment.all
  erb :"resource/edit"
end

get "/resource_change_in_database" do
  resource_to_change = Resource.find(params["resource"]["change_id"])
  resource_to_change.link = params["resource"]["link"]
  resource_to_change.assignments_id = params["resource"]["assignments_id"]
  
  resource_to_change.save
  erb :"success/success"
end

get "/resource/delete" do
  @resource = Resource.all
  erb :"resource/delete"
end

get "/resource_delete_from_database" do
  Resource.delete(params["resource"]["delete_id"])
  erb :"success/success"
end
  