get "/resource/view" do
  erb :"resource/view"
end

get "/resource/add" do
  @assignment_list = Assignment.all
  binding.pry
  erb :"resource/add"
end

get "/resource_add_to_database" do
  add_hash = {"link" => params["resource"]["link"], "assignments_id" => params["resource"]["assignments_id"]}
  
  Resource.add(add_hash)
  erb :"success/success"  
end

get "/resource/edit" do
  erb :"resource/edit"
end

get "/resource/delete" do
  erb :"resource/delete"
end
  