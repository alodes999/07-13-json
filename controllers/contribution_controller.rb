get "/contribution/view" do
  @contrib = Contribution.all  
  @assignment_list = Assignment.all
  @classmate_list = Classmate.all
  erb :"contribution/view"
end

get "/contribution/add" do
  @assignment_list = Assignment.all
  @classmate_list = Classmate.all
  erb :"contribution/add"
end

get "/contribution_add_to_database" do
  add_hash = {"assignments_id" => params["contribution"]["assignments_id"], "classmates_id" => params["contribution"]["classmates_id"]}
  
  Contribution.add(add_hash)
  erb :"success/success"  
end

get "/contribution/edit" do
  erb :"contribution/edit"
end

get "/contribution/delete" do
  @contribution = Contribution.all
  erb :"contribution/delete"
end

# get "" do
#
# end