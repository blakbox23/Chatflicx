class HomeController < ApplicationController
  
  before_action :authenticate_user!
  def index

    @opinions = current_user.timeline_opinions
    @count = @opinions.count
  end
end
