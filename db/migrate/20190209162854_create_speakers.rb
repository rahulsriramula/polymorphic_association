class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :place
      t.string :blog

      t.timestamps
    end
  end
end
