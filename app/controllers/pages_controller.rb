class PagesController < ApplicationController
  def index
      #Total causes
      total_causes = Cause.count

      #Total successfull causes
      causes = Cause.joins(:donations).group(:cause_id).sum(:quantity)
      successfull_causes = 0
      causes.each do |cause_id, total_donations|
          cause = Cause.find(cause_id)
          if total_donations > cause.expected_amount
              successfull_causes += 1
          end
      end

      #Total collected
      total_collected = Donation.sum(:quantity)

      #Highlight causes
      highlight_causes = Cause.where(highlight: true)

      render json:{
          total_causes: total_causes,
          successfull_causes: successfull_causes,
          total_collected: total_collected,
          highlight_causes: highlight_causes
      }, status: 200

  end
end
