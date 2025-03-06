# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times do
  movie = Movie.new(
    title: Faker::Kpop.boy_bands,
    overview: Faker::Movies::Hobbit.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.within(range: 0..10)
  )
  movie.save
end
