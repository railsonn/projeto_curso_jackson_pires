class AddFieldsToFather < ActiveRecord::Migration[8.0]
  def change
    add_column :fathers, :cpf, :string
    add_column :fathers, :email, :string
    add_reference :fathers, :occupation, null: false, foreign_key: true, default: 1
  end
end
