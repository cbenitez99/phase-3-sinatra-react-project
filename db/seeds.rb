puts "🌱 Seeding spices..."
Review.destroy_all
Game.destroy_all

game1 = Game.create(title: "FIFA 2021", price: 59)
game2 = Game.create(title: "Call of Duty: Thor's Wrath", price: 39)
game3 = Game.create(title: "The Legend of Zelda: Breath of The Wild", price: 49)

review1 = Review.create(user_name: "Cristian", content: "Awesome game!", game_id: game1.id)
review2 = Review.create(user_name: "Alex", content: "Loved the campaign", game_id: game2.id)
review3 = Review.create(user_name: "Alicia", content: "The graphics were so good!", game_id: game3.id)

puts "✅ Done seeding!"
