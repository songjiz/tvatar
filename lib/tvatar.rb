# frozen_string_literal: true

require_relative "tvatar/version"
require_relative "tvatar/configuration"
require_relative "tvatar/avatar"

module Tvatar  
  class << self
    def new(**kargs)
      Avatar.new **kargs
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
