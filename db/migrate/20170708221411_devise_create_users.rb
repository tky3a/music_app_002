class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable(パスワード認証機能)
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable(パスワードリセット機能)
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable(ログイン情報の保持機能)
      t.datetime :remember_created_at

      ## Trackable(ログイン情報の登録 / 意味：追跡可能な〜)
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable(登録確認機能)
       t.string   :confirmation_token
       t.datetime :confirmed_at
       t.datetime :confirmation_sent_at
       t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable(アカウントロック機能 / 一定回数ログインに失敗した時に、アカウントをロックさせることができます / 一定時間経過するか、Eメールに記載されている解除URLからロックを解除することができます。)
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
