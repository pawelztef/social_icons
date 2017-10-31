module SocialLinks
  class Link < ActiveRecord::Base
    belongs_to :social_module
    mount_uploader :icon, IconUploader
  end
end
