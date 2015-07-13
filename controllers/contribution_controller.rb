get "contribution/view" do
  erb :"contribution/view"
end

get "contribution/add" do
  @assignment_list = Assignment.all
  @classmate_list = Classmate.all
  erb :"contribution/add"
end

get "contribution/edit" do
  erb :"contribution/edit"
end

get "contribution/delete" do
  erb :"contribution/delete"
end