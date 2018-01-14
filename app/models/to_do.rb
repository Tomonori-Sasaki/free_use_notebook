class ToDo < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 20 }

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      ToDo.where(['name LIKE ?', "%#{search}%"]).or(ToDo.where(['deadline LIKE ?', "%#{search}%"]))
    else
      ToDo.all #全て表示。
    end
  end
end
