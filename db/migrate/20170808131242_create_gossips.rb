class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.string :content
      t.belongs_to :corsaire, index:true 

      t.timestamps
    end
  end
end
