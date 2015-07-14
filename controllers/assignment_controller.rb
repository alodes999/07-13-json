get "/assignment/view" do
  @assignment = Assignment.all
  erb :"assignment/view"
end

get "/assignment/add" do
  erb :"assignment/add"
end

get "/assignment_add_to_database" do
  add_hash = {"description" => params["assignment"]["description"], "github" => params["assignment"]["github"]}
  
  Assignment.add(add_hash)
  erb :"success/success"
end

get "/assignment/edit" do
  @assignment = Assignment.all
  erb :"assignment/edit"
end

get "/assignment_change_in_database" do
  ass_to_change = Assignment.find(params["assignment"]["change_id"])
  ass_to_change.description = params["assignment"]["description"]
  ass_to_change.github = params["assignment"]["github"]
  
  ass_to_change.save
  erb :"success/success"
end

get "/assignment/delete" do
  @assignment = Assignment.all
  erb :"assignment/delete"
end

get "/assignment_delete_from_database" do
  Assignment.delete(params["assignment"]["delete_id"])
  
  erb :"success/success"
end