class VotesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @vote = Vote.new
    @vote.answer = Answer.find(params[:answer_id])
    @vote.user = current_user
    if @vote.save
      if @vote.answer.poll.project_id.nil?
        redirect_to polls_path
      else
        redirect_to project_path(@vote.answer.poll.project_id)
      end
    else
      redirect_to root_path
    end
  end
end
