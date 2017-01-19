class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.text :body
      t.references :link, foreign_key: true

      t.timestamps
    end
  end
end
