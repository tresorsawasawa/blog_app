class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: 'https://user-images.githubusercontent.com/83042742/130520357-0eba230c-5e09-4c75-a93c-59f663e94ea6.png'
      t.text :bio
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
