require "test_helper"

class CauseTest < ActiveSupport::TestCase
    test "create" do
        cause = Cause.new(
            title: "ALgo",
            description: "Prueba de cause",
            expected_amount: 1900000,
            organization: organizations(:one)
        )
        assert cause.save
    end
end
