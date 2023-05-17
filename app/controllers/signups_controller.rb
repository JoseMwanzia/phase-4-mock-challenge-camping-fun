class SignupsController < ApplicationController

    
    # POST /signups
    def create
        signup = Signup.create!(signup_params)
        render json: signup.activity, status: :created
    end

    # def index 
    #     signups = Signup.all
    #     render json: signups, status: :ok
    # end

    private 

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
