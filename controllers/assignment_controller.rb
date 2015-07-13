get "/assignment/view" do
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
  erb :"assignment/edit"
end

get "/assignment/delete" do
  erb :"assignment/delete"
end