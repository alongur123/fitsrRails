class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    update_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email      

      t.timestamps
    end
  end
end
