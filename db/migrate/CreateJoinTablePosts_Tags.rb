class CreateJoinTablePosts_Tags < ActiveRecord::Migration[6.0]
  def change
    create_join_table :posts, :tags do |t|
      t.references :post, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end