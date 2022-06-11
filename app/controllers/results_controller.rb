class ResultsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @result = Result.new(result_params)
    @result.save
    redirect_to result_path(@result)

  end

  def show
    @result = Result.find(params[:id])
  end

  private
  def result_params
    params.require(:result).permit(:quiz_id, :info_id, :user_id)
  end

  def filter
    question1 = Answer.where(user_id: current_user.id).where(question_id: 1).last.answer
    question2 = Answer.where(user_id: current_user.id).where(question_id: 2).last.answer
    question3 = Answer.where(user_id: current_user.id).where(question_id: 3).last.answer
    question4 = Answer.where(user_id: current_user.id).where(question_id: 4).last.answer
    question5 = Answer.where(user_id: current_user.id).where(question_id: 5).last.answer
    question6 = Answer.where(user_id: current_user.id).where(question_id: 6).last.answer
    question7 = Answer.where(user_id: current_user.id).where(question_id: 7).last.answer
    question8 = Answer.where(user_id: current_user.id).where(question_id: 8).last.answer
    if question1 == true
      result = Info.select {|i| i['grooming_frequency_value'] >= 0.5}
    else
      result = Info.select {|i| i['grooming_frequency_value'] < 0.5}
    end
    if question2 == true
      result = result.select {|i| i['shedding_value'] <= 0.4}
    else
      result = result.select {|i| i['shedding_value'] > 0.4}
    end
    if question3 == true
      result = result.select {|i| i['energy_level_value'] >= 0.5}
    else
      result = result.select {|i| i['energy_level_value'] < 0.5}
    end
    if question4 == true
      result = result.select {|i| i['trainability_value'] >= 0.5}
    else
      result = result.select {|i| i['trainability_value'] < 0.5}
    end
    if question5 == true
      result = result.select {|i| i['demeanor_value'] >= 0.5}
    else
      result = result.select {|i| i['demeanor_value'] < 0.5}
    end
    if question6 && question7 && question8 == true
      result = result.select {|i| i['size'] == 'pequeno' && i['size'] == 'medio' && i['size'] == 'grande'}
    elsif question6 && question7 == true && question8 == false
      result = result.select {|i| i['size'] == 'pequeno' && i['size'] == 'medio'}
    elsif question6 == false && question7 && question8 == true
      result = result.select {|i| i['size'] == 'medio' && i['size'] == 'grande'}
    elsif question6 == false && question7 == false && question8 == true
      result = result.select {|i| i['size'] == 'grande'}
    elsif question6 == false && question7 == true && question8 == false
      result = result.select {|i| i['size'] == 'medio'}
    elsif question6 == true && question7 == false && question8 == false
      result = result.select {|i| i['size'] == 'pequeno'}
    end
    @result = result
  end


end
