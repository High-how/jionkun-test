# frozen_string_literal: true

class DeviseCreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      ## Database authenticatable
      t.string :name, null: false
      t.string :tel, :limit => 13, null: false
      t.date :birthday, null: false
      t.string :postcode, :limit => 8, null: false
      t.string :city, null: false
      t.string :block, null: false
      t.string :building, null: false
      t.string :secularname
      t.text :dharmaname
      t.date :deceased
      t.boolean :spring
      t.boolean :summer
      t.boolean :autumn
      t.boolean :winter

      ## Recoverable

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :members, :name,                 unique: true
    # add_index :members, :confirmation_token,   unique: true
    # add_index :members, :unlock_token,         unique: true
  end
end
