class SchoolClassesController < ApplicationController
    def index
        @classes = SchoolClass.all
    end

    def new
        @class = SchoolClass.new
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def create
        @class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
        @class.save
        redirect_to school_classes_path(@class)
    end
    
    def update
        @class = SchoolClass.find(params[:id])
        @class.update(params.require(:school_class).permit(:title))
        redirect_to school_classes_path(@class)
    end

    private
    
    def post_params(*args)
        params.require(:school_class).permit(*args)
    end
end