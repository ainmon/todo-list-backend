class TodoController < ApplicationController


    # GET /todos

    def index
        @todos = Todo.all
        todos.to_json
    end

    # GET /todos/1

    def show 
        render json: @todo
    end
    
      #POST /todos

    def create
        @todo = Todo.new(todo_params)
    
        if @todo.save
          render json: @todo, status: :created, location: @todo
        else
          render json: @todo.errors, status: :unprocessable_entity
        end
    end

    # PATCH /todos/1

    def update
    
        if @todo.update(todo_params)
            render json: @todo
        else 
            render json: @todo.errors, status: :unprocessable_entity
        end
    end

    # DELETE

    def destroy 
        @todo.destroy
    end


end