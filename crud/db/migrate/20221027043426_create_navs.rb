class CreateNavs < ActiveRecord::Migration[7.0]
  def change
    create_table :navs do |t|
      t.string :title

      t.timestamps
    end
  end
end
