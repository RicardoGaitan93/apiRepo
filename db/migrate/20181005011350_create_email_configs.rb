class CreateEmailConfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :email_configs do |t|
      t.string :EmailConfigcode
      t.string :server
      t.string :port
      t.string :useremail
      t.string :passwordemail

      t.timestamps
    end
  end
end
