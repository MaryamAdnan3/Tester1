# tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Tester
  # Mineral Model.
  class Mineral < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :strength

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :dose

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :route

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sig

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :pill_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :refills

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['strength'] = 'strength'
      @_hash['dose'] = 'dose'
      @_hash['route'] = 'route'
      @_hash['sig'] = 'sig'
      @_hash['pill_count'] = 'pillCount'
      @_hash['refills'] = 'refills'
      @_hash
    end

    def initialize(dose = nil,
                   name = nil,
                   pill_count = nil,
                   refills = nil,
                   route = nil,
                   sig = nil,
                   strength = nil,
                   additional_properties = {})
      @name = name
      @strength = strength
      @dose = dose
      @route = route
      @sig = sig
      @pill_count = pill_count
      @refills = refills

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dose = hash['dose']
      name = hash['name']
      pill_count = hash['pillCount']
      refills = hash['refills']
      route = hash['route']
      sig = hash['sig']
      strength = hash['strength']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Mineral.new(dose,
                  name,
                  pill_count,
                  refills,
                  route,
                  sig,
                  strength,
                  hash)
    end
  end
end