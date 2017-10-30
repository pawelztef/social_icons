class CreateSocialLinksLinks < ActiveRecord::Migration
  def change
    create_table :social_links_links do |t|
      t.string :icon
      t.string :url_link
      t.belongs_to :social_module, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
