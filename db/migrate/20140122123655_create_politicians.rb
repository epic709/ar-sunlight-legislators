require_relative '../config'

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |x|
      x.string :type
      x.string :title
      x.string :firstname
      x.string :lastname
      x.string :gender
      x.date   :birthdate
      x.string :phone
      x.string :fax
      x.string :website
      x.string :webform
      x.string :party
      x.string :state
      x.string :district
      x.integer :in_office
      x.string :twitter_id
      x.timestamps null: false
    end
  end
end



