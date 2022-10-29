class CreateFrontends < ActiveRecord::Migration[7.0]
  def change
    create_table :frontends do |t|

      t.timestamps
    end
  end
end
