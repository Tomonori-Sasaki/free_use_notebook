class Programming < ApplicationRecord
  validates :rank, presence: true
  validates :name, presence: true
  validates :name, length: { maximum: 20 }

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Programming.where(['name LIKE ?', "%#{search}%"]).or(Programming.where(['rank LIKE ?', "%#{search}%"]))
    else
      Programming.all #全て表示。
    end
  end
end
