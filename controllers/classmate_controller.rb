get "/classmate/view" do
  @classmate = Classmate.all
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

get "/classmate_change_in_database" do
  cm_to_change = Classmate.find(params["classmate"]["change_id"])
  cm_to_change.name = params["classmate"]["name"]
  
  cm_to_change.save
  erb :"success/success"
end

get "/classmate/delete" do
  @classmates = Classmate.all
  erb :"classmate/delete"
end

get "/classmate_delete_from_database" do
  Classmate.delete(params["classmate"]["delete_id"])
  erb :"success/success"
end