# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Review.destroy_all
Destination.destroy_all

40.times do
  destination = Destination.create!(
    :name => Faker::Address.unique.city
  )

  (1 + rand(12)).times do
    review = destination.reviews.new(
      :title => Faker::Hipster.sentence,
      :body => Faker::Hipster.paragraph,
      :url => nil
    )

    review.save
    review.url = "localhost:3000/destinations/#{destination.id}/reviews/#{review.id}"
    review.save
  end

end
