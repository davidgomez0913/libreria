class MasColsUssers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name_person, :string
    add_column :users, :age, :integer
  end
end
