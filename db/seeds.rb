puts "🌱 Seeding spices..."

# Seed your database here
Todo.create(task: "Workout!", completed: false, task_id: 1)
Todo.create(task: "Finish Flatiron", completed: false, task_id: 2)
Todo.create(task: "Make dinner", completed: false, task_id: 1)


Todo.create(task: "Run a 5 minute mile", completed: false)

puts "✅ Done seeding!"
