module ViewData
  module Commands
    module Controls
      module Create
        def self.example(name: nil, identifier: nil, data: nil)
          name ||= Name.example
          identifier ||= Identifier.example
          data ||= Data.example

          create = ViewData::Commands::Create.new
          create.name = name
          create.identifier = identifier
          create.data = data
          create
        end
      end
    end
  end
end
