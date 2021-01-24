require 'strava/api/v3/common'

module Strava::Api::V3
  module Stream
    include Common

    # Fetch information about a stream for a specific activity
    #
    # See {https://strava.github.io/api/v3/streams/#activity} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of unordered stream objects
    def retrieve_activity_streams(id, types, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}/streams/#{types}", args, 'get', options, &block)
    end

    # Fetch information about a subset of the activity streams that correspond to that effort
    #
    # See {https://strava.github.io/api/v3/streams/#effort} for full details
    #
    # @param id effort id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of unordered stream objects
    def retrieve_effort_streams(id, types, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("segment_efforts/#{id}/streams/#{types}", args, 'get', options, &block)
    end

    # Fetch information about a stream for a specific route
    #
    # See {https://strava.github.io/api/v3/streams/#routes} for full details
    #
    # @param id route id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of unordered stream objects
    def retrieve_route_streams(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("routes/#{id}/streams/", args, 'get', options, &block)
    end

    # Fetch information about a stream for a specific segment
    #
    # See {https://strava.github.io/api/v3/streams/#segment} for full details
    #
    # @param id segment id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of unordered stream objects
    def retrieve_segment_streams(id, types, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("segments/#{id}/streams/#{types}", args, 'get', options, &block)
    end

  end
end
