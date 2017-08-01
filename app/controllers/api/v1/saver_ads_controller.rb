module Api
  module V1

    class SaverAdsController < ApplicationController

      def index
        render json: SaverAd.all
      end

      def create
        @saver_ad = SaverAd.new()
        @saver_ad.saved_ad_id = saver_ad_params[:saved_ad_id]
        @saver_ad.saver_id = saver_ad_params[:saver_id]
        @saver_ad.save
        render json: {message: "Saved ad!", status: 201}
      end


      def destroy
        @saver_ad = SaverAd.find(params[:id])
        @saver_ad.destroy
        render json: {message: "Unsaved ad!", status: 201}
      end

      private

      def saver_ad_params
        params.require(:saver_ad).permit(:saved_ad_id, :saver_id)
      end

    end
  end
end
