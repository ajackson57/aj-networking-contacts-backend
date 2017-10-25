class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.timestamp :date
      t.text :description

      t.timestamps
    end
  end
end
