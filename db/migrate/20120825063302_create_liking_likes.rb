class CreateLikingLikes < ActiveRecord::Migration
  def change
    create_table :liking_likes do |t|
      t.references :user
      t.references :resource, :polymorphic => true
      t.timestamps
    end
  end
end
