class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @mtasklist = current_user.tasklists.build  # form_for 用
      @tasklists = current_user.tasklists.order('created_at DESC').page(params[:page])
    end
  end
end