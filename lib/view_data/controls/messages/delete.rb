module ViewData
  module Controls
    module Messages
      module Delete
        def self.example(name: nil, identifier: nil)
          name ||= Name.example
          identifier ||= Identifier.example

          delete = ViewData::Messages::Delete.new
          delete.name = name
          delete.identifier = Identifier.example
          delete
        end
      end
    end
  end
end
