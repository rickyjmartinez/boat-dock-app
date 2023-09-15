# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Boat.create(name:"jenny", size:"small", captain:"forrest gump") 
Boat.create(name:"santa maria", size:"medium", captain:"amy")
Boat.create(name:"mary lou", size:"large", captain:"bob")


Dock.create(unit:"A", cost:50, dock_size:"small", availability: false, boat_id:1)
Dock.create(unit:"B", cost:100, dock_size:"medium", availability: false, boat_id:2)
Dock.create(unit:"C", cost:150, dock_size:"large", availability: true, boat_id: nil)