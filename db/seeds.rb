puts "🌱 Seeding spices..."

# Seed your database here
Todo.create(task: "Workout!", completed: false, task_id: 1)
Todo.create(task: "Finish Flatiron", completed: false, task_id: 2)
Todo.create(task: "Make dinner", completed: false, task_id: 1)


Todo.create(task: "Run a 5 minute mile", completed: false)

Category.create(category_name: "Fitness")
Category.create(category_name: "Education")
Category.create(category_name: "Business")

puts "✅ Done seeding!"
