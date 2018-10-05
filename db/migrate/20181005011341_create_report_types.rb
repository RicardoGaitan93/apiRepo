class CreateReportTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :report_types do |t|
      t.string :ReportTypecode
      t.string :description
      t.boolean :isusernecessary

      t.timestamps
    end
  end
end
