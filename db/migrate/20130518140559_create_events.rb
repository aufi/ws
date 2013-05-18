class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :action
      t.string :host
      t.string :user
      t.references :company

      t.timestamps
    end
    add_index :events, :company_id
  end
end
