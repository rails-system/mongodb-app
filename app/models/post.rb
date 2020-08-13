class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  field :title, type: String
  field :body, type: String
  has_many :comments, dependent: :destroy
  has_mongoid_attached_file  :avatar, :styles => { :large => "380x380!" , :medium => "240x240", :small => "120x120!" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
