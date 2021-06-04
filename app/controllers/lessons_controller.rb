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
            redirect_to lessons_payment_path(id: @lesson.id)
        else
            render :subject_choise
        end
    end

    def payment
    end

    def purchase
        @lesson = Lesson.find(params[:id])
    end

    def pay
        @lesson = Lesson.find(params[:id])
        if @lesson.plan == 10
            amount = 28000
        else
            amount = 15000
        end
        Payjp.api_key = ENV['PAYJP_ACCESS_KEY']
        charge = Payjp::Charge.create(
        amount: amount,
        card: params['payjp-token'],
        currency: 'jpy'
        )
        @lesson.update(payment: true)
        redirect_to lessons_done_path(id: params[:id],amount: amount)
        flash[:success] = 'お支払いが完了しました'
    end

    def done
        @lesson = Lesson.find(params[:id])
    end

    def add_lesson
    end

    def change_payment_status
    end
    
    def destroy
    end
end
