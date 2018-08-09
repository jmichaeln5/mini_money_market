class CreateLenders < ActiveRecord::Migration[5.1]
  def change
    create_table :lenders do |t|
      # t.string :first_name
      # t.string :last_name
      # t.string :email
      t.bigint :phone
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      # t.integer :notable_id
      # t.string  :notable_type

      t.timestamps
    end
  end
end
