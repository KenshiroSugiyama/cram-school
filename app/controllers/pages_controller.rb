class PagesController < ApplicationController
  def top
  end

  def mypage
    @user = User.find(current_user.id)
    @current_lessons = Lesson.where(user_id: current_user.id).where(payment: true)
    @lessons = Lesson.where(user_id: current_user.id).where(payment: false)
  end

  def membershipfee
  end
end
