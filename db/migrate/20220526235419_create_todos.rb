class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task
      t.integer :category_id
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
