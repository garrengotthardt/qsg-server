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
        ad = Ad.create(ad_params)
        AdCategory.create(ad_id: ad.id, category_id: Category.find_by(name: params[:category]).id)
        render json: {message: "Created Ad!", ad: ad, status: 201}
      end

      private

      def ad_params
        params.require(:ad).permit(:title, :description, :location, :price, :image_url, :category, :creator_id, :id)
      end

    end
  end
end
