module ViewData
  module Controls
    module Identifier
      def self.example
        UUID.example
      end

      UUID = Messaging::Controls::ID

      module Composite
        def self.example
          [UUID.example(1), UUID.example(2)]
        end
      end
    end
  end
end
