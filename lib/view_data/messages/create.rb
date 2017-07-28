module ViewData
  module Messages
    class Create
      include Messaging::Message

      attribute :name, String
      attribute :identifier
      attribute :data
    end
  end
end
