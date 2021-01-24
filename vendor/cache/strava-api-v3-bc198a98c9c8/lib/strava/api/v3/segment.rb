require 'strava/api/v3/common'

module Strava::Api::V3
  module Segment
    include Common

    # Fetch information about a specific segment
    #
    # See {https://strava.github.io/api/v3/segments/#retrieve} for full details
    #
    # @param id segment id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a detailed representation of the segment
    def retrieve_a_segment(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("segments/#{id}", args, 'get', options, &block)
    end

    # Fetch information about segments starred by the authenticated user
    #
    # See {https://strava.github.io/api/v3/segments/#starred} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a summary representation of the segments starred by the authenticated user
    def list_starred_segment(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('segments/starred', args, 'get', options, &block)
    end

    # Star a segment on behalf of the current authenticated user
    #
    # See {https://strava.github.io/api/v3/segments/#star} for full details
    #
    # @param id segment id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a detailed representation of the segment
    def star_a_segment(id, args = {}, options = {}, &block)
      api_call("segments/#{id}/starred", args, 'put', options, &block)
    end

    # Fetch information about ranking of athletes on specific segments
    #
    # See {https://strava.github.io/api/v3/segments/#leaderboard} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of leaderboard entry objects
    def segment_leaderboards(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("segments/#{id}/leaderboard", args, 'get', options, &block)
    end

    # Fetch information about segments that match the provided criteria
    #
    # See {https://strava.github.io/api/v3/segments/#explore} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of up to 10 segment objects
    def segment_explorer(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('segments/explore', args, 'get', options, &block)
    end

    # Retrieve an array of segment efforts, for a given segment, filtered by athlete and/or a date range
    #
    # See {https://strava.github.io/api/v3/segments/#efforts} for full details
    #
    # @param id segment id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of segment effort summary representations
    def segment_list_efforts(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("segments/#{id}/all_efforts", args, 'get', options, &block)
    end

  end
end
