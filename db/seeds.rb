# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Piece.delete_all
line_count = 0
CSV.foreach("seedplay.txt", headers: true) do |row|
	begin
		line_count += 1
		Piece.create! row.to_hash
	rescue => e
		puts "Failed on line #{line_count}: #{e}"
	end
<<<<<<< HEAD
end
=======
end
>>>>>>> b44661a0a8707ff7cce32ec6cf945326e127b069
