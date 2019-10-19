# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nick_name, null: false
      t.integer :registration_style_id, foreign_key: true, null: false
      t.string :family_name, null: false
      t.string :last_name, null: false
      t.string :family_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :birthday , null: false
      t.bigint :phone_number, null: false
      t.string :iine
      t.string :mer_point
      t.string :icon_image
      t.text :profiile_comments
      t.integer :number_of_exhibits
      t.integer :number_of_evaluations
      t.string :excerent
      t.string :good
      t.string :bad
      t.string :excerent
      t.string :postal_code
      t.string :prefectures
      t.string :city
      t.string :address
      t.string :building_name
      t.integer :phone_number2
      t.timestamps
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

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

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
