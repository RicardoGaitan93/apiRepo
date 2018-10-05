class CreateEmailReports < ActiveRecord::Migration[5.1]
  def change
    create_table :email_reports do |t|
      t.string :to
      t.string :cc
      t.string :title
      t.string :body
      t.string :type
      t.text :attachment

      t.timestamps
    end
  end
end
