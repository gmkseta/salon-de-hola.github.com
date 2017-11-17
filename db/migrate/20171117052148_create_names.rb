class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :host
      t.string :guest

      t.timestamps null: false
    end
  end
end
