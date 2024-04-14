class CreateMatrices < ActiveRecord::Migration[7.0]
  def change
    create_table :matrices do |t|
      t.integer :data, array: true, null: false
      t.timestamps
    end
  end
end
