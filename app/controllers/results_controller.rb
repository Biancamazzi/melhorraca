class ResultsController < ApplicationController

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
    params.require(:result).permit(:quiz_id, :info_id)
  end
end
