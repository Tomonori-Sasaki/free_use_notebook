class Material < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 20 }

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Material.where(['name LIKE ?', "%#{search}%"])
    else
      Material.all #全て表示。
    end
  end
end
