class VotesController < ApplicationController
  def create
    opinion = Opinion.find(params[:op_id])
    vote = opinion.votes.build(user_id: current_user.id)

    if vote.save
      flash[:notice] = 'Your vote has been casted'
    else
      flash[:alert] = 'Vote unsuccessful'
    end
    redirect_to home_index_path
  end

  def destroy
    opinion = Opinion.find(params[:id])
    vote = opinion.votes.where(user_id: current_user.id)

    if vote[0].destroy
      flash[:notice] = 'Your vote has been undone'
    else
      flash[:alert] = 'Your vote has not been undone'
    end
    redirect_to home_index_path
  end
end
