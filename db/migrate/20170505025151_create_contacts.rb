class CreateContacts < ActiveRecord::Migration[5.0]
<<<<<<< HEAD
  def change
    create_table :contacts do |t|
      t.string   :name
      t.string   :email
      t.text     :comments
      t.timestamps
    end
  end
end
=======
    def change
    create_table :contacts do |t|
     t.string  :name
     t.string  :email
     t.text    :comments
      t.timestamps
    end
    end
end
>>>>>>> 531ec77ee58a81470d75239d19179df5ac43f7aa
