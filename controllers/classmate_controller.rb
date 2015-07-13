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
  erb :"classmate/edit"
end

get "/classmate/delete" do
  erb :"classmate/delete"
end