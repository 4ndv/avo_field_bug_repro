class Avo::Resources::Bug < Avo::BaseResource
  # self.icon = "tabler/outline/users"
  # self.avatar = {
  #   source: :avatar
  # }
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }
  self.model_class = NestedIntoModule::Bug

  def fields
    field :id, as: :id
    # field :avatar, as: :avatar
    field :title, as: :text
    field :parent, as: :belongs_to, class_name: "Bug"
    field :description, as: :textarea
    field :priority, as: :select, options: NestedIntoModule::Bug.priorities
    field :deadline, as: :date_time, react_on: :priority, disabled: -> { !resource.record.severe_priority?  }
  end
end
