# frozen_string_literal: true

# autogenerated by Deimos, do not modify
module Deimos
  # :nodoc:
  class ARecord < SchemaRecord
    ### Attribute Readers ###
    # @return [String]
    attr_reader :a_record_field

    # @return [Object] An optional payload key
    attr_accessor :payload_key

    ### Attribute Setters ###
    # @param value [String]
    def a_record_field=(value)
      @a_record_field = value
    end

    # @override
    def initialize(a_record_field:, payload_key: nil)
      super()
      self.a_record_field = a_record_field
      self.payload_key = payload_key
    end

    # @override
    def schema
      'ARecord'
    end

    # @override
    def namespace
      'com.my-namespace'
    end

    # @override
    def to_h
      payload = {
        'a_record_field' => @a_record_field
      }
      @payload_key.present? ? payload.merge('payload_key' => @payload_key) : payload
    end
  end
end
