class PollsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def index
    # only the ones without project
    @polls = Poll.where(project_id: nil)
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    @poll.user = current_user
    if @poll.save
      if @poll.project_id.nil?
        redirect_to polls_path
      else
        redirect_to project_path(@poll.project_id)
      end
    else
      render :new
    end
  end

  def edit
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.update(poll_params)
    if @poll.project_id.nil?
      redirect_to polls_path
    else
      redirect_to project_path(@poll.project_id)
    end
  end

  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy
    if @poll.project_id.nil?
      redirect_to polls_path
    else
      redirect_to project_path(@poll.project_id)
    end
  end

  def update_answer
    if poll.update_answer(poll_params_answer)
      redirect_to polls_path
    else
      render :edit
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:title, :description, :deadline, :project_id, answers_attributes: [:id, :title, :poll, :_destroy])
  end
end
