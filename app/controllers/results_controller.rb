class ResultsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def create
    filter
    @result = Result.new()
    @quiz = current_user.quiz
    @info = @filtrado
    @result.quiz = @quiz
    @result.info = @info
    @result.user = current_user

    if @result.save
      redirect_to result_path(@result)
    else
      redirect_to questions_path, danger: "Nenhum resultado encontrado. Tente novamente"
    end

  end

  def show
    @result = Result.find(params[:id])
  end

  private

  def filter
    question1 = Answer.where(user_id: current_user.id).where(question_id: 1).last.answer
    question2 = Answer.where(user_id: current_user.id).where(question_id: 2).last.answer
    question3 = Answer.where(user_id: current_user.id).where(question_id: 3).last.answer
    question4 = Answer.where(user_id: current_user.id).where(question_id: 4).last.answer
    question5 = Answer.where(user_id: current_user.id).where(question_id: 5).last.answer
    question6 = Answer.where(user_id: current_user.id).where(question_id: 6).last.answer
    question7 = Answer.where(user_id: current_user.id).where(question_id: 7).last.answer
    question8 = Answer.where(user_id: current_user.id).where(question_id: 8).last.answer
    # question1 = Answer.where(user_id: 2).where(question_id: 1).last.answer
    # question2 = Answer.where(user_id: 2).where(question_id: 2).last.answer
    # question3 = Answer.where(user_id: 2).where(question_id: 3).last.answer
    # question4 = Answer.where(user_id: 2).where(question_id: 4).last.answer
    # question5 = Answer.where(user_id: 2).where(question_id: 5).last.answer
    # question8 = Answer.where(user_id: 2).where(question_id: 8).last.answer
    # question6 = Answer.where(user_id: 2).where(question_id: 6).last.answer
    # question7 = Answer.where(user_id: 2).where(question_id: 7).last.answer
    if !question6 && !question7 && !question8
      return @filtrado = nil
    end
     a = []
     a << 'pequeno' if question6
     a << 'medio' if question7
     a << 'grande' if question8
     result = Info.where(size: a)

    if question1
      filtered = result.select {|i| i['grooming_frequency_value'] > 0.4}
    else
      filtered = result.select {|i| i['grooming_frequency_value'] < 0.5}
    end
    result = filtered if filtered.size > 0

    if question2
      filtered = result.select {|i| i['shedding_value'] > 0.5}
    else
      filtered = result.select {|i| i['shedding_value'] > 0}
    end
    result = filtered if filtered.size > 0

    if question3
      filtered = result.select {|i| i['energy_level_value'] > 0}
    else
      filtered = result.select {|i| i['energy_level_value'] < 0.5}
    end
    result = filtered if filtered.size > 0

    if question4
      filtered = result.select {|i| i['trainability_value'] > 0.4}
    else
      filtered = result.select {|i| i['trainability_value'] < 0.5}
    end
    result = filtered if filtered.size > 0

    if question5
      filtered = result.select {|i| i['demeanor_value'] > 0.4}
    else
      filtered = result.select {|i| i['demeanor_value'] < 0.5}
    end
    result = filtered if filtered.size > 0
    @filtrado = result.sample
  end

    end
