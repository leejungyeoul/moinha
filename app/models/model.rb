class Model < ActiveRecord::Base
    has_many :postsport7s
    has_many :postgame7s
    has_many :postcircle7s
    has_many :posttheater7s
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
