class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.attachment :image
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
