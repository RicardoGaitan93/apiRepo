class CreateStatusTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :status_types do |t|
      t.string :StatusTypecode
      t.string :description
      t.boolean :ispending

      t.timestamps
    end
  end
end
