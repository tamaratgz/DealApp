class VotesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @vote = Vote.new
    @vote.answer = Answer.find(params[:answer_id])
    @vote.user = current_user

    flash[:alert] = @vote.errors.full_messages.join(", ") unless @vote.save
    if @vote.answer.poll.project_id.nil?
      redirect_to polls_path
    else
      redirect_to project_path(@vote.answer.poll.project_id)
    end
  end
end
