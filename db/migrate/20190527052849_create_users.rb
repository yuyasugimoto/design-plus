class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :uid, primary_key=true, auto_increment = true
      t.string :uname
      t.string :password
      t.integer :active_flg
      t.integer :permission
      t.timestamps
    end
  end
end
