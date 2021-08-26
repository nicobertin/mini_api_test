require "test_helper"

class DonationTest < ActiveSupport::TestCase
    test "create" do
        donation = Donation.new(
            media: "paypal",
            quantity: 1000,
            cause: causes(:two)
        )
        assert donation.save
    end
end
