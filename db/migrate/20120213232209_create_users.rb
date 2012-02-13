class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_number
      t.string :email
      t.string :phone_home
      t.string :phone_mobile
      t.string :gender
      t.string :address
      t.string :password
      t.string :role

      t.timestamps
    end
  end
end
