class AddUserToVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :user_id, :integer
  end
end
