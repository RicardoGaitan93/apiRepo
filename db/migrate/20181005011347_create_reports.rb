class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :Reportcode
      t.integer :sequence

      t.timestamps
    end
  end
end