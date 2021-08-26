require "test_helper"

class DonationsControllerTest < ActionDispatch::IntegrationTest

    test "index" do
        get "/donations?cause=" + causes(:six).id.to_s
        assert_response :success
        assert_equal "application/json", @response.media_type
    end

    test "create" do
        assert_difference("Donation.count") do
            post "/donations", params:{
                "donation":{
                    "media": "webpay",
                    "quantity": 1000,
                    "cause_id": causes(:one).id.to_s
                }
            }, as: :json
        end
        assert_response :success
        assert_equal "application/json", @response.media_type
    end

    test "destroy" do
        assert_difference("Donation.count", -1) do
            delete "/donations/" + donations(:cause_six_one).id.to_s
        end
        assert_response :success
    end
end
