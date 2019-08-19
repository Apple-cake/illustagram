class AddUserIdToIllustrations < ActiveRecord::Migration[5.2]
  def change
    add_column :illustrations, :user_id, :integer
  end
end
