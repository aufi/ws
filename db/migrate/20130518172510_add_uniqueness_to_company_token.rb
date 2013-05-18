class AddUniquenessToCompanyToken < ActiveRecord::Migration
  def change
    add_index :companies, :token, unique: true
  end
end
