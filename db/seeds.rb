# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(0..3).each do |n|
    org = Organization.create(
        name: Faker::Company.name
    )
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        organization: org
    )
    (0..3).each do |c|
        Cause.create(
            title: Faker::Lorem.sentence,
            description: Faker::Lorem.paragraphs,
            expected_amount: 1000000,
            organization: org
        )
    end
end
