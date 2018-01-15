class JobHunting < ApplicationRecord
  validates :rank, presence: true
  validates :type, presence: true
  validates :name, presence: true
  validates :name, length: { maximum: 20 }

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      JobHunting.where(['name LIKE ?', "%#{search}%"]).or(ToDo.where(['type LIKE ?', "%#{search}%"])).or(ToDo.where(['rank LIKE ?', "%#{search}%"]))
    else
      JobHunting.all #全て表示。
    end
  end
end
