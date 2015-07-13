get "resource/view" do
  erb :"resource/view"
end

get "resource/add" do
  @assignment_list = Assignment.all
  erb :"resource/add"
end

get "resource/edit" do
  erb :"resource/edit"
end

get "resource/delete" do
  erb :"resource/delete"
end
  