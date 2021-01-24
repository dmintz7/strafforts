require 'strava/api/v3/common'

module Strava::Api::V3
  module Club
    include Common

    # Fetch information about a specific item of club
    #
    # See {https://strava.github.io/api/v3/clubs/#get-details} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a detailed club representation
    def retrieve_a_club(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}", args, 'get', options, &block)
    end

    # Announcements are posts sent by Club Admins or Owners to the members of a club.
    # Only members of private clubs can access their announcements.
    # The objects are returned in summary representation.
    #
    # See {https://strava.github.io/api/v3/clubs/#get-announcements} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of club announcement summary representations.
    def list_club_announcements(id, args = {}, option = {}, &block)
      api_call("clubs/#{id}/announcements", args, 'get', option, &block)
    end

    # Fetch information about the clubs for the current user
    #
    # See {https://strava.github.io/api/v3/clubs/#get-athletes} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return a club summary representation
    def list_athlete_clubs(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('athlete/clubs', args, 'get', options, &block)
    end

    # Fetch information about the members of a specific club
    #
    # See {https://strava.github.io/api/v3/clubs/#get-members} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_club_members(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/members", args, 'get', options, &block)
    end

    # Fetch information about the admins of a specific club
    #
    # See {https://strava.github.io/api/v3/clubs/#get-admins} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_club_admins(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/admins", args, 'get', options, &block)
    end

    # Fetch information about the activities of a specific club
    #
    # See {https://strava.github.io/api/v3/clubs/#get-activities} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of activity summary representations
    def list_club_activities(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}/activities", args, 'get', options, &block)
    end

    # Join a club on behalf of the authenticated athlete.
    # If the club is private the join will need to be approved by a club admin
    # unless the authenticated athlete had previously been invited to the club.
    #
    # See {https://strava.github.io/api/v3/clubs/#join} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return action result (see https://strava.github.io/api/v3/clubs/#join)
    def join_a_club(id, args = {}, options = {}, &block)
      api_call("clubs/#{id}/join", args, 'post', options, &block)
    end

    # Leave a club on behalf of the authenticated user
    #
    # See {https://strava.github.io/api/v3/clubs/#leave} for full details
    #
    # @param id club id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return action result (see https://strava.github.io/api/v3/clubs/#leave)
    def leave_a_club(id, args = {}, options = {}, &block)
      api_call("clubs/#{id}/leave", args, 'post', options, &block)
    end
  end
end
