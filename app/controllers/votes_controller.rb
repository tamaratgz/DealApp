class VotesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @vote = Vote.new
    @vote.answer = Answer.find(params[:answer_id])
    if user_signed_in?
      @vote.user = current_user
    else
      @vote.name = session[:name]
    end
    flash[:alert] = @vote.errors.full_messages.join(", ") unless @vote.save
    if user_signed_in?
      if @vote.answer.poll.project_id.nil?
        redirect_to polls_path
      else
        redirect_to project_path(@vote.answer.poll.project_id)
      end
    else
      redirect_to poll_path(@vote.answer.poll)
    end
  end
end
