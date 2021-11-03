puts "🌱 Seeding data..."

Game.destroy_all
Review.destroy_all

game1 = Game.create(title: "Battlefeild V", price: "30", platform: "Xbox One")
game2 = Game.create(title: "Call of Duty: World at War", price: "60", platform: "PC")

review1 = Review.create(user_name: "Alex", content: "Awesome game to play with friends!", game_id: game1.id)
review2 = Review.create(user_name: "Cristian", content: "The game had some minor bugs and issues, but overall ran smoothly!", game_id: game2.id)

puts "✅ Done seeding!"
