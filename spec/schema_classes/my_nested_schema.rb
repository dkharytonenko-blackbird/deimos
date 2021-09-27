# frozen_string_literal: true

# autogenerated by Deimos, do not modify
module Deimos
  # :nodoc:
  class MyNestedSchema < SchemaRecord
    ### Attribute Readers ###
    # @return [String]
    attr_reader :test_id
    # @return [Float]
    attr_reader :test_float
    # @return [Array<String>]
    attr_reader :test_array
    # @return [Deimos::MyNestedRecord]
    attr_reader :some_nested_record
    # @return [nil, Deimos::MyNestedRecord]
    attr_reader :some_optional_record

    # @return [Object] An optional payload key
    attr_accessor :payload_key

    ### Attribute Setters ###
    # @param value [String]
    def test_id=(value)
      @test_id = value
    end

    # @param value [Float]
    def test_float=(value)
      @test_float = value
    end

    # @param values [Array<String>]
    def test_array=(values)
      @test_array = values.map do |value|
        value
      end
    end

    # @param value [Deimos::MyNestedRecord]
    def some_nested_record=(value)
      @some_nested_record = value.present? && !value.is_a?(Deimos::MyNestedRecord) ? Deimos::MyNestedRecord.new(**value) : value
    end

    # @param value [nil, Deimos::MyNestedRecord]
    def some_optional_record=(value)
      @some_optional_record = value.present? && !value.is_a?(Deimos::MyNestedRecord) ? Deimos::MyNestedRecord.new(**value) : value
    end

    # @override
    def initialize(test_id:, test_float:, test_array:, some_nested_record:, some_optional_record:,
                   payload_key: nil)
      super()
      self.test_id = test_id
      self.test_float = test_float
      self.test_array = test_array
      self.some_nested_record = some_nested_record
      self.some_optional_record = some_optional_record
      self.payload_key = payload_key
    end

    # @override
    def schema
      'MyNestedSchema'
    end

    # @override
    def namespace
      'com.my-namespace'
    end

    # @override
    def to_h
      payload = {
        'test_id' => @test_id,
        'test_float' => @test_float,
        'test_array' => @test_array,
        'some_nested_record' => @some_nested_record&.to_h,
        'some_optional_record' => @some_optional_record&.to_h
      }
      @payload_key.present? ? payload.merge('payload_key' => @payload_key) : payload
    end
  end
end
