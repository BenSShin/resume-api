class StudentsController < ApplicationController
    def index
      @students = Student.all 
      render :index
    end
    def show
      @student = Student.find_by(id: params[:id]) 
      render :show
    end

    def create
      @student = Student.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone_number: params[:phone_number],
        short_bio: params[:short_bio],
        linkedin_url: params[:linkedin_url],
        twitter_handle: params[:twitter_handle],
        personal_url: params[:personal_url],
        resume_url: params[:resume_url],
        github_url: params[:github_url],
        photo: params[:photo],
      )
      render :show
    end

    def update
      @student = Student.find_by(id: params[:id]) 
      @student.update(
        first_name: params[:first_name] || @student.first_name,
        last_name: params[:last_name] || @student.last_name,
        email: params[:email] || @student.email,
        phone_number: params[:phone_number] || @student.phone_number,
        short_bio: params[:short_bio] || @student.short_bio,
        linkedin_url: params[:linkedin_url] || @student.linkedin_url,
        twitter_handle: params[:twitter_handle] || @student.twitter_handle,
        personal_url: params[:personal_url] || @student.personal_url,
        resume_url: params[:resume_url] || @student.resume_url,
        github_url: params[:github_url] || @student.github_url,
        photo: params[:photo] || @student.photo,
      )
      render :show
    end

    def destroy
      @student = Student.find_by(id: params[:id]) 
      @student.destroy
      render :json { message: "The student has been defeated. Congratulations!"}
    end

end
