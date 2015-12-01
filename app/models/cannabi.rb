class Cannabi < ActiveRecord::Base
  belongs_to :usuario
  validates :sativa, presence:true
  validates :indica, presence: true
  validates :interior, presence:true
  validates :exterior, presence:true
  scope :recientes, -> {order("created_at desc")} 
end
