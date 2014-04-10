class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email, :username
  has_and_belongs_to_many :projects


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
