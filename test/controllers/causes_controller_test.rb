require "test_helper"

class CausesControllerTest < ActionDispatch::IntegrationTest

    test "index" do
        get "/causes"
        assert_response :success
        assert_equal "application/json", @response.media_type
    end

    test "show" do
        get "/causes/" + causes(:one).id.to_s
        assert_response :success
        assert_equal "application/json", @response.media_type
        assert_match "donations", @response.body
        assert_match "reports", @response.body
        assert_match "organization", @response.body
    end

    test "update" do
        @cause = causes(:two)
        get "/causes/" + @cause.id.to_s, params:{
            cause:{
                title: "Updated",
                description: "Description Updated",
                expected_amount: 100000
            }
        }
        assert_response :success
        assert_equal "application/json", @response.media_type
        @cause.reload
        assert_equal "Updated", @cause.title
        assert_equal "Description Updated", @cause.description
        assert_equal 100000, @cause.expected_amount
    end

end
