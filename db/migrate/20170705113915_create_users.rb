class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, index: :unique
      t.string :email, index: :unique
      t.text :auth_meta_data
      t.timestamps
    end
  end
end
