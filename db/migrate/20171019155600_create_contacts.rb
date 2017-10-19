class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :company
      t.text :position

      t.timestamps
    end
  end
end
