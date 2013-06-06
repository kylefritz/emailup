class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :body
      t.boolean :sent, null: false, default: false

      t.timestamps
    end
  end
end
