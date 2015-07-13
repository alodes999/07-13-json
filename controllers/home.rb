get "/home" do
  erb :"home/home"
end

get "/assignment" do
  erb :"home/assignment"
end

get "/classmate" do
  erb :"home/classmate"
end

get "/resource" do
  erb :"home/resource"
end

get "/contribution" do
  erb :"home/contribution"
end