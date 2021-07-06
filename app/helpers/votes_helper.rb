module VotesHelper
  def vote_btn(opinion)
    if opinion.voted?(current_user)
      # link_to 'Unvote', vote_path(id: opinion.id), method: :delete
      link_to "<i class='bi bi-star-fill'></i>".html_safe, vote_path(id: opinion.id), method: :delete  
    else
      link_to("<i class='bi bi-star'></i>".html_safe,{ controller: 'votes', action: 'create', op_id: opinion.id }, method: :post)

    end
  end
end
