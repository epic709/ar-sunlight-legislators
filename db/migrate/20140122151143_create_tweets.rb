require_relative '../config'

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |x|
      x.integer :politician_id
      x.string :text
      x.datetime :tweet_datetime
      x.timestamps null: false
    end
  end
end