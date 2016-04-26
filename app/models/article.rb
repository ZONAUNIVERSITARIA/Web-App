class Article < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :cover, styles: {thumb: "400x300", medium: "800x600" }
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  	validates :title, presence: true, uniqueness: true, length: {maximum: 50}
  	validates :body, presence: true, length: {minimum: 100}

end
