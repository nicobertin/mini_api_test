require "test_helper"

class OrganizationTest < ActiveSupport::TestCase
    test "create" do
        organization = Organization.new(
            name: "Organization new"
        )
        assert organization.save
        organization.user = users(:one)
        assert_equal users(:one), organization.user
    end
end
