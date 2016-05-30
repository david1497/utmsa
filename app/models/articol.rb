class Articol < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
