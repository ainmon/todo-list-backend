class Todo < ActiveRecord::Base

    belongs_to :category


    def category
        Category.find(self.task_id)
    end
    
    


end