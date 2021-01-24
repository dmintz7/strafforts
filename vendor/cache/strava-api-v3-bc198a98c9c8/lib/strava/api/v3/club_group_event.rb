require 'strava/api/v3/common'

module Strava::Api::V3
  module ClubGroupEvent
    include Common

    # Retrieve a group event
    #
    # See {https://strava.github.io/api/v3/club_group_events/#show} for full details
    #
    # @param id group event id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a single group event summary representation
    def retrieve_a_group_event(id, args = {}, options = {}, &block)
      api_call("group_events/#{id}", args, 'get', options, &block)
    end

    # List club group events
    #
    # See {https://strava.github.io/api/v3/club_group_events/#index} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of club group event summary representations ordered by occurrence time
    def list_club_group_events(id, args = {}, options = {}, &block)
      api_call("clubs/#{id}/group_events", args, 'get', options, &block)
    end

    # Join a group event on behalf of the authenticated athlete
    #
    # See {https://strava.github.io/api/v3/club_group_events/#join} for full details
    #
    # @param id group event id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return action result (see https://strava.github.io/api/v3/club_group_events/#join)
    def join_a_group_event(id, args = {}, options = {}, &block)
      api_call("group_events/#{id}/rsvps", args, 'post', options, &block)
    end

    # Leave a group event on behalf of the authenticated athlete
    # For recurring events, leave the upcoming occurrence.
    #
    # See {https://strava.github.io/api/v3/club_group_events/#leave} for full details
    #
    # @param id group event id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return action result (see https://strava.github.io/api/v3/club_group_events/#leave)
    def leave_a_group_event(id, args = {}, options = {}, &block)
      api_call("group_events/#{id}/rsvps", args, 'delete', options, &block)
    end

    # Delete (and cancel) an event, which must be editable by the authenticating user
    #
    # See {https://strava.github.io/api/v3/club_group_events/#delete} for full details
    #
    # @param id group event id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return action result (see https://strava.github.io/api/v3/club_group_events/#delete)
    def delete_a_group_event(id, args = {}, options = {}, &block)
      api_call("group_events/#{id}", args, 'delete', options, &block)
    end

    # Retrieve summary information about athletes joined a specific group event,
    # or the upcoming occurrence for recurring events
    #
    # See {https://strava.github.io/api/v3/club_group_events/#athletes} for full details
    #
    # @param id group event id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athletes summary representations with athletes followed by the authenticated athlete first
    def list_joined_athletes(id, args = {}, options = {}, &block)
      api_call("group_events/#{id}/athletes", args, 'get', options, &block)
    end
  end
end
