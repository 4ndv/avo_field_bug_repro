class Avo::Actions::Test < Avo::BaseAction
  self.name = "Test"
  self.visible = -> do
    true
  end
  self.standalone = false

  # def fields
  #   # Add Action fields here
  # end

  def handle(query:, fields:, current_user:, resource:, **args)
    query.each do |record|
      # Do something with your records.
    end
  end
end
