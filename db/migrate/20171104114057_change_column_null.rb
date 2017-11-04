class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
   change_column_null :contacts, :first_name, false
   change_column_null :contacts, :last_name, false
   change_column_null :contacts, :email, false
  end
end
