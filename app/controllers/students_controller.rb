class StudentsController < ApplicationController
    def index
        @student = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(params.require(:student).permit(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
    end

    def update
    end

    private

    def post_params(*args)
        params.require(:student).permit(*args)
    end

end