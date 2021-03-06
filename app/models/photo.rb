class Photo < ActiveRecord::Base
  validates :owner, :presence => true
  validates :caption, :presence => true

  mount_uploader :photo_file, PhotoFileUploader

  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"
  has_many :comments, :dependent => :destroy
  has_many :favoritings
  has_many :fans, :through => :favoritings, :source => :user
end











