class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/todos" do
    todos = Todo.all.order(:created_at)
    todos.to_json
  end

  get  "/categories" do
    categories = Category.all.order(:created_at)
    categories.to_json
  end
  
  post "/categories" do
    category = Category.create(params)
    category.to_json
  end

  post "/todos" do
    #todo = Todo.create(params)
    #create(params)

    #throws a weird error but does not create task twice as current does

    todo = Todo.create(params)
    todo.to_json
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(params)
    todo.to_json
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
  end

end
