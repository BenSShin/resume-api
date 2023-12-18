class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render :index
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end

  def create
    start_date = Date.parse(params[:start_date], "%Y/%m/%d")
    end_date = Date.parse(params[:end_date], "%Y/%m/%d")
    total_days = (end_date - start_date).to_i

    @experience = Experience.new({
      start_date: start_date,
      end_date: end_date,
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: student_id[:student_id],
    })
    if @experience.valid?
      @experience.save
      render :show
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    if params[:start_date]
      start = Date.parse(params[:start_date], "%Y/%m/%d")
    end
    if params[:end_date]
      end_date = Date.parse(params[:end_date], "%Y/%m/%d")
    end

    @experience.update(
      start_date: start || @experience.start_date,
      end_date: end_date || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company_name: params[:company_name] || @experience.company_name,
      details: params[:details] || @experience.details,
      student_id: params[:student_id] || @experience.student_id,
    )
    if @reservation.valid?
      render :show
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
    render json: { message: "Experience was removed." }
  end
end
