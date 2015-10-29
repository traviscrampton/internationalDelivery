class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
         has_attached_file :coverphoto, :styles => { :coversize => "1170x1000>"}, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :coverphoto, :content_type => /\Aimage\/.*\Z/
has_many :requests
has_many :answers

def fullname
  return self.firstname + " " + self.lastname
end
end
