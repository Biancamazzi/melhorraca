class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]

  def home
  end

  def create_quiz
    Quiz.create(user_id: current_user.id, description: "Quiz")
    redirect_to "/questions"
  end
end
