class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :destroy, :edit, :update]

  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(5).order(params[:sort])
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to :root, notice: 'New prototype was successfully created'
    else
      redirect_to ({ action: new }), alert: 'YNew prototype was unsuccessfully created'
    end
  end

  def show
  end

  def destroy
    @prototype.destroy if @prototype.user_id == current_user.id
  end

  def edit
    @main_image = @prototype.captured_images.main.first
    @sub_images = @prototype.captured_images.sub
  end

  def update
    if @prototype.user_id == current_user.id
      @prototype.update(prototype_params)
      flash[:notice] = "更新しました"
      render :show
    else
      redirect_to :root
    end
  end

  def sort_likes
    
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:id,:content, :status]
    )
  end
end
