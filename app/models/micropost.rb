class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true,
    length: {maximum: Settings.micropost_content_max_length}
  validate :picture_size

  mount_uploader :picture, PictureUploader

  scope :by_follow, ->(following_ids, id){where("user_id IN (#{following_ids}) OR user_id = #{id}")}

  private

  def picture_size
    return unless picture.size > Settings.micropost_picture_size.megabytes
    errors.add(:picture, t("picture_size_too_large"))
  end
end
