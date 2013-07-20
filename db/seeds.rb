# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Piece.delete_all
line_count = 0
# CSV.foreach("seedplay.txt", headers: true) do |row|
File.open("seedplay.txt")each_line do |line|
	begin
		line_count += 1
		# Piece.create! row.to_hash
		title, composer, album, genre = line.chomp.split(",")
		Piece.create!(title: title, composer: composer, album: album, genre: genre)
	rescue => e
		puts "Failed on line #{line_count}: #{e}"
	end
end
