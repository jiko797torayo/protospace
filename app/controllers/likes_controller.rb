class LikesController < ApplicationController
  before_action :set_prototype, only:[:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    like.destroy
  end

  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end
