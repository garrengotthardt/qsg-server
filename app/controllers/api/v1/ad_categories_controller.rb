module Api
  module V1

    class AdCategoriesController < ApplicationController

      def index
        render json: AdCategory.all
      end

    end

  end
end
