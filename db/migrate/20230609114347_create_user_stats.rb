class CreateUserStats < ActiveRecord::Migration[7.0]
  def change
    create_table :user_stats do |t|
      t.integer :userId
      t.boolean :voteStatus
      t.integer :lastVote
    end
  end
end
