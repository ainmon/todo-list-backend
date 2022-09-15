class Todo < ActiveRecord::Base

    belongs_to :category


    def category
        Category.find(self.category_id)
    end
    
    


end