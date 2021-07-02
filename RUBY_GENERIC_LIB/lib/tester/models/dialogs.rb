# tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Tester
  # Dialogs Model.
  class Dialogs < BaseModel
    # TODO: Write general description for this method
    # @return [Before]
    attr_accessor :before

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['before'] = 'before'
      @_hash
    end

    def initialize(before = nil,
                   additional_properties = {})
      @before = before

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      before = Before.from_hash(hash['before']) if hash['before']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Dialogs.new(before,
                  hash)
    end
  end
end