class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :index
      t.string :edit

      t.timestamps null: false
    end
  end
end
