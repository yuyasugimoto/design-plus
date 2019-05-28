class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :request_user
      t.string :request_type
      t.string :request_team
      t.string :project_name
      t.string :product_name
      t.text :request_detail
      t.datetime :desired_date
      t.string :person_charge
      t.string :request_flg
      t.integer :progress
      t.timestamps
    end
  end
end
