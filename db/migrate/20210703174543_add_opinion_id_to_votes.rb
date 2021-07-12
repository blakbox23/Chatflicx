class AddOpinionIdToVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :opinion_id, :integer
  end
end
