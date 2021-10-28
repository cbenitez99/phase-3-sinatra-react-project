require 'pry'
puts "🌱 Seeding spices..."
# binding.pry
Platform.destroy_all
Review.destroy_all
Game.destroy_all

plat1 = Platform.create(platform_type: "Xbox One")
plat2 = Platform.create(platform_type: "Play-Station 5")
plat3 = Platform.create(platform_type: "Nintendo Switch")

game1 = Game.create(title: "FIFA 2021", price: 59, platform_id: plat1.id)
game2 = Game.create(title: "Call of Duty: Thor's Wrath", price: 39, platform_id: plat2.id)
game3 = Game.create(title: "The Legend of Zelda: Breath of The Wild", price: 49, platform_id: plat3.id)

review1 = Review.create(user_name: "Cristian", content: "Awesome game!", game_id: game1.id)
review2 = Review.create(user_name: "Alex", content: "Loved the campaign", game_id: game2.id)
review3 = Review.create(user_name: "Alicia", content: "The graphics were so good!", game_id: game3.id)

puts "✅ Done seeding!"
