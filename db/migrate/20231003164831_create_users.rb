class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_nm
      t.string :last_nm

      t.timestamps
    end
  end
end
