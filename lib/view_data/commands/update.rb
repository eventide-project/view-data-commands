module ViewData
  module Commands
    class Update
      include Messaging::Message

      attribute :name, String
      attribute :identifier
      attribute :data
    end
  end
end
