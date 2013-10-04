class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :hashtag
      t.text :description
      t.text :image_url
      t.text :thumb_url
      t.date :start_at
      t.date :ends_at

      t.timestamps
    end
  end
end
