class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def create
    @skill = Skill.new(
      skill_name: params["skill_name"],
      student_id: current_user.id,
    )
    @skill.save
    if @skill.valid?
      render :show
    else
      render json: { errors: @skill.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @skill = Skill.find_by(id: params["id"])
    @skill.update(
      skill_name: params["skill_name"] || @skill.skill_name,
      student_id: @skill.student_id,
    )
    if @skill.valid?
      render :show
    else
      render json: { errors: @skill.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    skill = Skill.find_by(id: params["id"])
    skill.delete
    render json: { message: "Skill successfully deleted" }
  end
end
