module ViewData
  module Messages
    class Delete
      include Messaging::Message

      attribute :name, String
      attribute :identifier
    end
  end
end
