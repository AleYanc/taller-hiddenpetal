class CreateClases < ActiveRecord::Migration[6.1]
  def change
    create_table :clases do |t|
      t.string :title
      t.string :video_link
      t.string :text_transcription

      t.timestamps
    end
  end
end
