# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Task.create(name: "Task 1", status: "new")
Task.create(name: "Task 2", status: "new")
Task.create(name: "Task 3", status: "new")

Task.create(name: "Task 4", status: "in_progress")
Task.create(name: "Task 5", status: "in_progress")
Task.create(name: "Task 6", status: "in_progress")

Task.create(name: "Task 7", status: "complete", completed_at: "2021-05-19 07:14:45")
Task.create(name: "Task 8", status: "complete", completed_at: "2021-05-19 06:11:44")
Task.create(name: "Task 9", status: "complete", completed_at: "2021-05-19 05:22:55")

Task.create(name: "Task 10", status: "canceled", canceled_at: "2021-05-11 07:07:07")
Task.create(name: "Task 11", status: "canceled", canceled_at: "2021-05-12 08:08:08")
Task.create(name: "Task 12", status: "canceled", canceled_at: "2021-05-13 09:09:09")
