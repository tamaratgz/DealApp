class AnswersController < ApplicationController
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    poll = @answer.poll
    if poll.project_id.nil?
      redirect_to polls_path
    else
      redirect_to project_path(poll.project_id)
    end
  end
end
