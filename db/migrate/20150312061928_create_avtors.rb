class CreateAvtors < ActiveRecord::Migration
  def change
    create_table :avtors do |t|
      t.string, :name
      t.string, :email
      t.string, :siti
      t.string, :adrress
      t.date :born

      t.timestamps null: false
    end
  end
end
