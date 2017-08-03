module ViewData
  module Commands
    class Create
      include Messaging::Message

      attribute :name, String
      attribute :identifier
      attribute :data
    end
  end
end
