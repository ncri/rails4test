class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.string :note
    	t.boolean :archived

      t.timestamps
    end
  end
end
