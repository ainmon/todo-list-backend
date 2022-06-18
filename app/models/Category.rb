
class Category < ActiveRecord::Base

    has_many :todos

    def todo
        #self is the instance of category
        #Category.first.todo will find first todo
        Todo.find(self.task_id)

    end

end