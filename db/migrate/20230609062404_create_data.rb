class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :imgUrl
      t.integer :vote

      t.timestamps
    end
  end
end
