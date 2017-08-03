module ViewData
  module Commands
    module Controls
      module Delete
        def self.example(name: nil, identifier: nil)
          name ||= Name.example
          identifier ||= Identifier.example

          delete = ViewData::Commands::Delete.new
          delete.name = name
          delete.identifier = identifier
          delete
        end
      end
    end
  end
end
