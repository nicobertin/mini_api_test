class ApplicationController < ActionController::API
    def hello
        render json:{
            success: true,
            message: "Mini API REST is running."
        }, status: 200
    end
end
