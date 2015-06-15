class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null: false, limit:200
      t.integer :finished_flg, null: false, limit:1, default: 0

      t.timestamps
    end
  end
end
