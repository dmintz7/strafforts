require 'strava/api/v3/common'

module Strava::Api::V3
  module Activity
    include Common

    # Create a manually entered activity
    #
    # See {https://strava.github.io/api/v3/activities/#create} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a 201 status code along with a detailed representation of the created activity
    def create_an_activity(args = {}, options = {}, &block)
      api_call('activities', args, 'post', options, &block)
    end

    # Fetch information about a specific activity
    #
    # See {https://strava.github.io/api/v3/activities/#get-details} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activity json (see http://strava.github.io/api/v3/activities/)
    def retrieve_an_activity(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}", args, 'get', options, &block)
    end

    # Fetch information about the current athlete's activities
    #
    # See {https://strava.github.io/api/v3/activities/#get-activities} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of activity summary representations sorted newest first by default
    def list_athlete_activities(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('athlete/activities', args, 'get', options, &block)
    end

    # Fetch information about the current athlete's friends' activities
    #
    # See {https://strava.github.io/api/v3/activities/#get-feed} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of activity summary representations
    def list_friends_activities(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('activities/following', args, 'get', options, &block)
    end

    # Fetch information about the activities that were matched as "with this group"
    # The number equals activity.athlete_count-1
    #
    # See {https://strava.github.io/api/v3/activities/#get-related} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of activity summary representations
    def list_related_activities(id, args = {}, options = {}, &block)
      api_call("activities/#{id}/related", args, 'get', options, &block)
    end

    # Fetch information about the activity's zones
    #
    # See {https://strava.github.io/api/v3/activities/#zones} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activity zones json (see https://strava.github.io/api/v3/activities/#zones)
    def list_activity_zones(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}/zones", args, 'get', options, &block)
    end

    # Fetch information about the activity's laps
    #
    # See {https://strava.github.io/api/v3/activities/#laps} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of lap effort summaries
    def list_activity_laps(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("activities/#{id}/laps", args, 'get', options, &block)
    end

    # Update a specific activity
    #
    # See {https://strava.github.io/api/v3/activities/#put-updates} for full details
    #
    # @param id activity id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a detailed representation of the updated activity
    def update_an_activity(id, args = {}, options = {}, &block)
      api_call("activities/#{id}", args, 'put', options, &block)
    end
  end
end
