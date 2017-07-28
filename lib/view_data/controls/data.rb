module ViewData
  module Controls
    module Data
      def self.example
        {
          :some_attribute => 'some-value',
          :other_attribute => 'other-value',
          :outer_attribute => {
            :inner_attribute => 'inner-value'
          }
        }
      end
    end
  end
end
