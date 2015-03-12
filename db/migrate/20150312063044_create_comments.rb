class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name_avtora
      t.string :text_comment

      t.timestamps null: false
    end
  end
end
