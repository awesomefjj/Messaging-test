class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.string :uname
      t.string :phonenum
      t.text :content

      t.timestamps
    end
  end
end
