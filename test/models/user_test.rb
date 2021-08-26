require "test_helper"

class UserTest < ActiveSupport::TestCase
    test "create" do
        user = User.new(
            name: "ANita",
            email: "anita@cl.cl",
            password_digest: "98h2hf892h3f23",
            organization: organizations(:two)
        )
        assert user.save
    end
end
