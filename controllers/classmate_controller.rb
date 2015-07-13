get "/classmate/view" do
  erb :"classmate/view"
end

get "/classmate/add" do
  erb :"classmate/add"
end

get "/classmate_add_to_database" do  
  Classmate.add("name" => params["classmate"]["name"])
  erb :"success/success"   
end

get "/classmate/edit" do
  @classmates = Classmate.all
  erb :"classmate/edit"
end

get "/classmate/delete" do
  @classmates = Classmate.all
  erb :"classmate/delete"
end

get "/classmate_delete_from_database" do
  Classmate.delete(params["classmate"]["delete_id"])
  erb :"success/success"
end