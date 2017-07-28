module ViewData
  module Controls
    module Messages
      module Update
        def self.example(name: nil, identifier: nil, data: nil)
          name ||= Name.example
          identifier ||= Identifier.example
          data ||= Data.example

          update = ViewData::Messages::Update.new
          update.name = name
          update.identifier = identifier
          update.data = data
          update
        end
      end
    end
  end
end
