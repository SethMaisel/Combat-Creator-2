class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.string :line

      t.timestamps
    end
  end
end
