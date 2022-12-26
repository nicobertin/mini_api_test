class DonationsController < ApplicationController

    def index
        ## TODO: Return a list of donations filtering by cause
        donations = Donation.all.where(cause_id: params[:cause_id])
        render json: donations, status: 200
    end

    def create
        # TODO: Create a donation
        donation = Donation.new(donation_params)
        donation.save
        render json: donation, status: 201
    end

    def destroy
        # TODO: Remove a donation from database
        donation = Donation.find(params[:id])
        donation.destroy
        render json: {}, status: 201
    end

    private
    # Only allow a list of trusted parameters through.
    def donation_params
        params.fetch(:donation, {}).permit(:media, :quantity, :cause_id)
    end
end
