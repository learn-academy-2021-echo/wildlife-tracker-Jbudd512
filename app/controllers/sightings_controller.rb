class SightingsController < ApplicationController
    def new
      end

    def create
        sighting = Sighting.create(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
      end

    def edit
        sighting = Sighting.find(params[:id])
      end

    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
      end

    def destroy
        sighting = Sighting.find(params[:id])
        if sighting.destroy
          render json: sighting
        else
          render json: sighting.errors
        end
      end

    def show
        sighting = Sighting.find([params[:id]])
        render json: sighting
      end

    def index
        sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: sightings
      end

    private
        def sighting_params
        params.require(:sighting).permit(:date, :lattitude, :longitude :start_date :end_date)
    end
end
