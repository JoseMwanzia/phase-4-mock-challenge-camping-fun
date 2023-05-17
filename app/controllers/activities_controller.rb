class ActivitiesController < ApplicationController

    # GET /activities
    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    # DELETE /activities/:id
    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    end


end
