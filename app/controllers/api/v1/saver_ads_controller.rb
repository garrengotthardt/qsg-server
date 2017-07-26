module Api
  module V1

    class SaverAdsController < ApplicationController

      def index
        render json: SaverAd.all
      end

    end

  end
end
