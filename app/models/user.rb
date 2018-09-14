class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :purchases
  has_many :clips, dependent: :destroy #この行を追記することで関連付くイベントが削除されるとclipも削除されます。
  has_many :events, through: :clips
end
