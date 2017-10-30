class CreateSocialLinksSocialModules < ActiveRecord::Migration
  def change
    create_table :social_links_social_modules do |t|

      t.timestamps null: false
    end
  end
end
