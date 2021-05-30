class PagesController < ApplicationController
  def top
  end

  def mypage
    @user = User.find(current_user.id)
  end

  def membershipfee
  end
end
