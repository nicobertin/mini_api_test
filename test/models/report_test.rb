require "test_helper"

class ReportTest < ActiveSupport::TestCase
    test "create" do
        report = Report.new(
            title: "paypal",
            description: "Descripcion de que hicimos con las lucas",
            quantity: 1000,
            cause: causes(:two)
        )
        assert report.save
    end
end
