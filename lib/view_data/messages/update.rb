module ViewData
  module Messages
    class Update
      include Messaging::Message

      attribute :name, String
      attribute :identifier
      attribute :data
    end
  end
end
