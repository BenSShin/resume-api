class CapstonesController < ApplicationController
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
      name: params["name"],
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
      name: params["name"] || @capstone.name,
      description: params["description"] || @capstone.description,
      url: params["url"] || @capstone.url,
      screenshot: params["screenshot"] || @capstone.screenshot,
      student_id: params["student_id"] || @capstone.student_id,
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
