class AddPostsRefToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :over_posts, foreign_key: {to_table: sub_posts}
    end
  end
