class LikesController < ApplicationController
    before_action :find_likelable
    before_action :authenticate_user!
    respond_to :js

    def create
        @likeable.liked_by current_user
    end
    
    def destroy
        @likeable.disliked_by current_user
    end
    
    private
    def find_likable
        @likeable_type = params[:likeable_type].classify
        @likeable = @likeable_type.constantize.find(params[:likeable_id]) 
    end
    
end
