# frozen_string_literal: true

module Scoruby
  class Features
    attr_reader :formatted

    def initialize(features)
      @formatted = format_booleans(features)
    end

    def format_booleans(features)
      features.map do |k, v|
        features[k] = 'f' if v == false
        features[k] = 't' if v == true
      end
      features
    end
  end
end
