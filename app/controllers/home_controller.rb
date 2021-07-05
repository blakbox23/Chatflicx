class HomeController < ApplicationController
  
  before_action :authenticate_user!
  def index
    @opinion = Opinion.new
    @opinions = current_user.timeline_opinions
    @count = @opinions.count
    
  end


  def create
    @opinion = current_user.opinions.build(opinions_params)

    if @opinion.save
      flash[:notice] = 'Post created'
    else
      flash[:alert] = 'Opinion not successfully posted'
    end
    redirect_to root_path
  end

  private
  
  def opinions_params
    params.require(:opinion).permit(:text)
  end
end
