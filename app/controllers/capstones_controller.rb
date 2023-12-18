class CapstonesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  
  def index
    @capstones = Capstone.all
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def create
    @capstone = Capstone.new(
      capstone_name: params["capstone_name"],
      description: params["description"],
      url: params["url"],
      screenshot: params["screenshot"],
      student_id: current_user.id,
    )
    @capstone.save
    if @capstone.valid?
      render :show
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @capstone = Capstone.find_by(id: params["id"])
    @capstone.update(
      capstone_name: params["capstone_name"] || @capstone.capstone_name,
      description: params["description"] || @capstone.description,
      url: params["url"] || @capstone.url,
      screenshot: params["screenshot"] || @capstone.screenshot,
    )
    if @capstone.valid?
      render :show
    else
      render json: { errors: @capstone.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    capstone = Capstone.find_by(id: params["id"])
    capstone.delete
    render json: { message: "Capstone successfully deleted" }
  end
end
