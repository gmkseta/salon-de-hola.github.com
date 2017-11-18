class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :host
      t.string :guest

      t.timestamps null: false
    end
  end
end
