class LessonsController < ApplicationController

    def new
        @lesson = Lesson.new
    end

    def show
        @lessons = Lesson.where(user_id: current_user.id)
    end

    def create
        @lesson = Lesson.new
        @lesson.user_id = params[:lesson][:user_id]
        @lesson.subject = params[:lesson][:subject]
        @lesson.plan = params[:lesson][:plan]
        if @lesson.save
            redirect_to action: :payment
        else
            render :subject_choise
        end
    end

    def payment
    end

    def add_lesson
    end

    def change_payment_status
    end
    
    def destroy
    end
end
