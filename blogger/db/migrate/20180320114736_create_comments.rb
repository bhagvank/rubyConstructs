class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.date :date
      t.timestamp :time
      t.boolean :isAuthor
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
