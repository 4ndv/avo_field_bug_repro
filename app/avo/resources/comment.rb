class Avo::Resources::Comment < Avo::BaseResource
  self.icon = "tabler/outline/message"
  # self.avatar = {
  #   source: :avatar
  # }
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    # field :avatar, as: :avatar
    field :bug, as: :belongs_to
    field :text, as: :textarea
  end
end
