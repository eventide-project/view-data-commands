module ViewData
  module Commands
    class Delete
      include Messaging::Message

      attribute :name, String
      attribute :identifier
    end
  end
end
