require 'strava/api/v3/common'

module Strava::Api::V3
  module ActivityExtras
    include Common

    # Fetch list of comments from a specific activity
    #
    # See {https://strava.github.io/api/v3/comments/} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of comment summary objects, oldest first
    def list_activity_comments(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}/comments", args, 'get', options, &block)
    end

    # Fetch list of kudos from a specific activity
    #
    # See {https://strava.github.io/api/v3/kudos/} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary objects
    def list_activity_kudos(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}/kudos", args, 'get', options, &block)
    end

    # Fetch list of photos from a specific activity, only if it is your activity
    #
    # See {https://strava.github.io/api/v3/activity_photos/} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of photo objects. Both Strava and Instagram photos will be returned
    def list_activity_photos(id, args = {}, options = {}, &block)
      args['photo_sources'] = 'true'
      # Fetches the connections for given object.
      api_call("activities/#{id}/photos", args, 'get', options, &block)
    end
  end
end
