class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :upload do |t|
      t.binary :file_data
    end
  end
end
