class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :style

      t.timestamps
    end
  end
end
