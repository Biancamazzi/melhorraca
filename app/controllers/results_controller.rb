class ResultsController < ApplicationController

  def create
    @result = Result.new(result_params)
    @result.save
    redirect_to result_path(@result)
    filter
  end

  def show
    @result = Result.find(params[:id])
  end

  private
  def result_params
    params.require(:result).permit(:quiz_id, :info_id, :user_id)
  end


  def filter
    case Answer
    when question1 = Answer.where(user_id:current_user.id).where(question_id:1)
      if question1.first.answer == true
      result = Info.select{|i| i['grooming_frequency_value'] >= 0.5}
      else
      result = Info.select{|i| i['grooming_frequency_value'] < 0.5}
      end
    when question2 = Answer.where(user_id:current_user.id).where(question_id:2)
      if question2.first.answer == true
      result = Info.select{|i| i['shedding_value'] <= 0.4}
      else
      result = Info.select{|i| i['shedding_value'] > 0.4}
      end
    when question3 = Answer.where(user_id:current_user.id).where(question_id:3)
      if question3.first.answer == true
      result = Info.select{|i| i['energy_level_value'] >= 0.5}
      else
      result = Info.select{|i| i['energy_level_value'] < 0.5}
      end
    when question4 = Answer.where(user_id:current_user.id).where(question_id:4)
      if question4.first.answer == true
      result = Info.select{|i| i['trainability_value'] >= 0.5}
      else
      result = Info.select{|i| i['trainability_value'] < 0.5}
      end
    when question5 = Answer.where(user_id:current_user.id).where(question_id:5)
      if question5.first.answer == true
      result = Info.select{|i| i['demeanor_value'] >= 0.5}
      else
      result = Info.select{|i| i['demeanor_value'] < 0.5}
      end
    else
    end

      # question 6
      # if question id == 6 || 7 || 8 true
      # result = Info.select{|i| i['size'] == 'pequeno' || i['size'] == 'grande' || i['size'] == 'medio'}
      # else
  end


end
