class Youtube < ApplicationRecord
  validates :rank, presence: true
  validates :name, presence: true
  validates :name, length: { maximum: 20 }

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Youtube.where(['name LIKE ?', "%#{search}%"]).or(Youtube.where(['rank LIKE ?', "%#{search}%"]))
    else
      Youtube.all #全て表示。
    end
  end
end
