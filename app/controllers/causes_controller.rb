class CausesController < ApplicationController

    before_action :set_cause, only: %i[show update]

    def index
        causes = Cause.all
        render json: causes.to_json(include: [:organization]), status: 200
    end

    def show
        ## TODO: Return a complete cause including organization, reports and donations
        render json: @cause.to_json(include: [:organization, :reports, :donations]), status: 200
    end

    def update
        ## TODO: Update a cause attributes
        if @cause.update(cause_params)
            render json: @cause, status: :ok
        else
            render json: @cause.errors, status: :unprocessable_entity
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cause
        @cause = Cause.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cause_params
        params.fetch(:cause, {}).permit(:title, :description, :expected_amount )
    end
end