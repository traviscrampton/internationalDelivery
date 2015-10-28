class Request < ActiveRecord::Base
  validates :day, :presence => true
  validates :month, :presence => true
  validates :year, :presence => true
  validates :country, :presence => true
  validates :airport, :presence => true
  validates :itemname, :presence => true
  validates :itemdescription, :presence => true
  has_attached_file :itemphoto, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :itemphoto, content_type: /\Aimage\/.*\Z/
  belongs_to :user
  has_many :answers, through: :connections
  has_many :connections
end
