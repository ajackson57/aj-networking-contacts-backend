class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :contact_id

  def date
    object.created_at.strftime('%Y-%m-%d %X')
  end
end
