class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy #данная запись означает, что экземпляр сущности Cart может быть связан с несколькими экземплярами сущности LineItem
  #dependent: :destroy означает, что если мы удалим экземпляр сущности Cart, то так же будут удалены все связанные с ним экземпляры сущности LineItem
end
