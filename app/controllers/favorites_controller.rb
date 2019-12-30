class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.create(favorite_params)
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        render json: { status: 'SUCCESS', message: 'deleted the post', data: @favorite }
    end

    private 

    def favorite_params
        params.permit(:user_id, :podcast_id)
    end

end
