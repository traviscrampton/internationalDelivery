class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_attached_file :avatar, :styles => { :medium => "300x200>", :thumb => "100x100#", :pic => "50x50#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
         has_attached_file :coverphoto, :styles => { :coversize => "1170x1000>"}, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :coverphoto, :content_type => /\Aimage\/.*\Z/

validates :firstname, :presence => true
validates :lastname, :presence => true
validates :phonenumber, :presence => true
validates :streetaddress, :presence => true
validates :country, :presence => true
validates :territory, :presence => true
validates :zipcode, :presence => true


has_many :requests
has_many :flights

def fullname
  return self.firstname + " " + self.lastname
end
end
