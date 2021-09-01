class DonationsController < ApplicationController

    def index
        ## TODO: Return a list of donations filtering by cause
        render json: {}, status: 200
    end

    def create
        # TODO: Create a donation
        render json: {}, status: 201
    end

    def destroy
        # TODO: Remove a donation from database
        render json: {}, status: 201
    end

    private
    # Only allow a list of trusted parameters through.
    def donation_params
        params.fetch(:donation, {}).permit(:media, :quantity)
    end
end
