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
    (0..8).each do |c|
        Cause.create(
            title: Faker::Lorem.sentence,
            description: Faker::Lorem.paragraphs,
            expected_amount: rand(10000000),
            organization: org
        )
    end
end
causes_count = Cause.all.count
(0..100).each do |r|
    Report.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraphs,
        quantity: rand(1000000),
        cause_id: rand(causes_count)
    )
end

(0..100).each do |r|
    Donation.create(
        media: "webpay",
        quantity: rand(1000000),
        cause_id: rand(causes_count)
    )
end

cf = Cause.first
Donation.create(
    media: "transfer",
    quantity: cf.expected_amount + 1,
    cause: cf
)

cl = Cause.last
Donation.create(
    media: "transfer",
    quantity: cl.expected_amount + 1,
    cause: cl
)
