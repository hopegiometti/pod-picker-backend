class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :website
      t.string :language
      t.string :thumbnail
      t.string :description
      t.boolean :explicit_content
      t.string :genre

      t.timestamps
    end
  end
end
