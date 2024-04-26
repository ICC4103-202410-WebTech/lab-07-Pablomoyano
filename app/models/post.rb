class Post < ApplicationRecord
  belongs_to :user
  has_many :tags
  belongs_to :over_posts, class_name: "Posts"
  has_many :sub_posts, class_name: "Posts", foreign_key: "post_id"
  validates :title,presence:true
  validates :content, presence:true
  validates :user_id, presence:true
  validates :answers_count,  numericality: { greater_than_or_equal_to: 0 }
  validates :likes_count,  numericality: { greater_than_or_equal_to: 0 }
  before_save :set_time_now_publish_date

  after_save :log_published_date
  def set_time_now_publish_date
    self.publish_date = Time.zone.now
  end
end