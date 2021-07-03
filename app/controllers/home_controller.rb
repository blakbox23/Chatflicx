class HomeController < ApplicationController
  
  before_action :authenticate_user!
  def index

    @opinions = current_user.opinions.order_by_most_recent
    @count = @opinions.count
  end
end
