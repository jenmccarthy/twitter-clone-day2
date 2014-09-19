class RelationshipsController < ApplicationController

  def index
    @relationships = Relationship.all
  end

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.create(relationship_params)
    if @relationship.valid?
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js
      end
    end
  end

  private
  def relationship_params
    params.require(:relationship).permit(:followed_id).merge(:follower_id => current_user.id)
  end
end
