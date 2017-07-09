class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]
  #omniauthable = intridea/omniauthをサポートします。TwitterやFacebookなどの認証を追加したい場合はこれを使用します。

   def self.from_omniauth(auth) #def self=クラス内を指す/クラスからomniouthを読んでくる？
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user| #usersの"provider","uid"から見つけてくる
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
      end
    else
      super
    end
  end
end


