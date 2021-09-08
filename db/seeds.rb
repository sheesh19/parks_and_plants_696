puts "Clearing db"

City.destroy_all

puts "Creating cities"

city = City.create!(name: "Istanbul", banner_url: "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80")

puts "Created #{City.count} city/ies"