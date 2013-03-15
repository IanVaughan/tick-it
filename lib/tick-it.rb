$LOAD_PATH << 'lib'

require 'tick-it/cli/main'
# require 'tick-it/api/api'

module TickIt
  VERSION = "0.0.1"

  class << self
    # attr_accessor :log

    def api
      # @api ||= API::Api.new
      @api ||= Api.new
    end
  end

  CLI::Main.start # MyCLI.start(ARGV)
end
