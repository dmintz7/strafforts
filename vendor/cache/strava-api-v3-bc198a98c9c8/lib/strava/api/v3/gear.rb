require 'strava/api/v3/common'

module Strava::Api::V3
  module Gear
    include Common

    # Fetch information about a specific item of gear
    #
    # See {https://strava.github.io/api/v3/gear/#show} for full details
    #
    # @param id gear id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a detailed gear representation
    def retrieve_gear(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("gear/#{id}", args, 'get', options, &block)
    end
  end
end
