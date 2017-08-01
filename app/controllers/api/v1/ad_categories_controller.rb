module Api
  module V1

    class AdCategoriesController < ApplicationController

      def index
        render json: AdCategory.all
      end

      def show
        render json: AdCategory.find(params[:id])
      end

    end

  end
end
