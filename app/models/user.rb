class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :grupe
  has_many :comments
  mount_uploader :avatar, AvatarUploader
  def owner_of?(post)
  	(self.id == post.user_id ) ? true : false 
  end
         
end
