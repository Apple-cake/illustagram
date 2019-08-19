class RemoveNameFromIllustrations < ActiveRecord::Migration[5.2]
  def change
    remove_column :illustrations, :name, :string
  end
end
