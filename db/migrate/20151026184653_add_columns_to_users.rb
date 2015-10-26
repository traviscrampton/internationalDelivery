class AddColumnsToUsers < ActiveRecord::Migration
    def self.up
      change_table :users do |t|
        t.string :firstname
        t.string :lastname
        t.string :phonenumber
        t.string :streetaddress
        t.string :country
        t.string :territory
        t.string :zipcode
      end
  end
end
