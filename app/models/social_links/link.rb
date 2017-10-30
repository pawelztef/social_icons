module SocialLinks
  class Link < ActiveRecord::Base
    belongs_to :social_module
  end
end
