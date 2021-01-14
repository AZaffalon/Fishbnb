# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Reseting DB..."
FishType.destroy_all

puts "Creating new FishType..."

Comète = FishType.create!(common_name: "Comète", scientific_name: "Carassius auratus", origin: "États-Unis")
Commun = FishType.create!(common_name: "Poisson rouge commun", scientific_name: "Carassius auratus", origin: "Chine")
Shonai = FishType.create!(common_name: "Shonai", scientific_name: "Carassius auratus", origin: "Japon")
Wakin = FishType.create!(common_name: "Wakin", scientific_name: "Carassius auratus", origin: "Chine")
Shubunkin_a = FishType.create!(common_name: "Shubunkin américain", scientific_name: "Carassius auratus", origin: "États-Unis")
Shubunkin_l = FishType.create!(common_name: "Shubunkin de Londres", scientific_name: "Carassius auratus", origin: "Royaume-Unis")
Azumanishiki = FishType.create!(common_name: "Azumanishiki", scientific_name: "Carassius auratus", origin: "Japon")
Chakin = FishType.create!(common_name: "Chakin", scientific_name: "Carassius auratus", origin: "Japon")
Oranda = FishType.create!(common_name: "Oranda", scientific_name: "Carassius auratus", origin: "Japon")
Seibun = FishType.create!(common_name: "Blue cap oranda (Seibun)", scientific_name: "Carassius auratus", origin: "Japon")
Ryukin = FishType.create!(common_name: "Ryukin", scientific_name: "Carassius auratus", origin: "Chine")
Tosakin = FishType.create!(common_name: "Tosakin", scientific_name: "Carassius auratus", origin: "Japon")


[Comète, Commun, Shonai, Wakin, Shubunkin_a, Shubunkin_l, Azumanishiki, Chakin, Oranda, Seibun, Ryukin, Tosakin].each do |type|
  puts "#{type.common_name} created!"
end

puts "All FishType created!"
