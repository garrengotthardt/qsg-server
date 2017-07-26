module Api
  module V1
    class AdsController < ApplicationController

      def index
        render json: Ad.all
      end

      def show
        render json: Ad.find(params[:id])
      end

      def update
        @ad =  Ad.find(ad_params[:id])
        @ad.save
        render json: {message: "Updated Ad!", status: 201}
      end


      def create
        @ad = Ad.new()
        @ad.title = ad_params[:title]
        @ad.description = ad_params[:description]
        @ad.price = ad_params[:price]
        @ad.location = ad_params[:location]
        @ad.image_url = ad_params[:image_url]
        @ad.creator_id = ad_params[:creator_id]
        @ad.save
        render json: {message: "Created Ad!", status: 201}
      end

      private

      def ad_params
        params.require(:ad).permit(:title, :description, :location, :price, :image_url, :creator_id, :id)
      end

    end
  end
end
