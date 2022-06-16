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
      UserMailer.with(result: @result).infos.deliver_now

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
    if question6 == false && question7 == false && question8 == false
      return @filtrado = nil
    end

     if question6 == true && question7 == true && question8 == true
      result = Info.where(size:'pequeno').or(Info.where(size:'medio').or(Info.where(size:'grande')))

     end

    if question6 && question7 == true && question8 == false
      result = Info.where(size:'pequeno').or(Info.where(size:'medio'))

    end

    if question6 == false && question7 && question8 == true
      result = Info.where(size:'medio').or(Info.where(size:'grande'))

    end

    if question6 == false && question7 == false && question8 == true
      result = Info.where(size:'grande')

    end

      if question6 == true && question7 == false && question8 == true
      result = Info.where(size:'grande').or(Info.where(size:'grande'))

    end

    if question6 == false && question7 == true && question8 == false
      result = Info.where(size:'medio')

    end

    if question6 == true && question7 == false && question8 == false
       result = Info.where(size:'pequeno')

    end

    if question1 == true
      result1 = result.select {|i| i['grooming_frequency_value'] > 0.4}
    else
      result1 = result.select {|i| i['grooming_frequency_value'] < 0.5}
    end

     puts result1.count


    if question2 == true
      result2 = result1.select {|i| i['shedding_value'] > 0.5}
    else
      result2 = result1.select {|i| i['shedding_value'] > 0}
    end

      puts result2.count



    if question3 == true
      result3 = result2.select {|i| i['energy_level_value'] > 0}
    else
      result3 = result2.select {|i| i['energy_level_value'] < 0.5}
    end

      puts result3.count


    if question4 == true
      result4 = result3.select {|i| i['trainability_value'] > 0.4}
    else
      result4 = result3.select {|i| i['trainability_value'] < 0.5}
    end

      puts result4.count




    if question5 == true
      result5 = result4.select {|i| i['demeanor_value'] > 0.4}
    else
      result5 = result4.select {|i| i['demeanor_value'] < 0.5}
    end

       puts result5.count




    if result1.count == 0 || result1.count == nil
            return @filtrado = result.sample
        elsif result2.count == 0 || result2.count == nil
            return @filtrado = result1.sample
       elsif result3.count == 0 || result3.count == nil
           return @filtrado = result2.sample
         elsif result4.count == 0 || result4.count == nil
           return @filtrado = result3.sample
         elsif result5.count == 0 || result5.count == nil
           return @filtrado = result4.sample
    end

    @filtrado = result5.sample

    end


  end
