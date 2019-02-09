class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.references :commentable, polymorphic: true

      t.timestamps
    end
    add_index :comments, :name
  end
end
