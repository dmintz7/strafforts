require 'strava/api/v3/common'

module Strava::Api::V3
  module AthleteExtras
    include Common

    # List athlete friends of the current authenticated user
    #
    # Friends are users the current athlete is following.
    # The activities owned by these users will appear in the current athlete’s activity feed.
    #
    # See {https://strava.github.io/api/v3/follow/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_athlete_friends(args = {}, options = {}, &block)
      api_call('athlete/friends', args, 'get', options, &block)
    end

    # List athlete friends of any athlete specified by an ID
    #
    # Friends are users the current athlete is following.
    # The activities owned by these users will appear in the current athlete’s activity feed.
    #
    # See {https://strava.github.io/api/v3/follow/} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_specific_athlete_friends(id, args = {}, options = {}, &block)
      api_call("athletes/#{id}/friends", args, 'get', options, &block)
    end

    # List athlete followers of the current authenticated user
    #
    # See {https://strava.github.io/api/v3/follow/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_athlete_followers(args = {}, options = {}, &block)
      api_call('athlete/followers', args, 'get', options, &block)
    end

    # List athlete followers of any athlete specified by an ID
    # If the indicated athlete has blocked the authenticated athlete, the result will be an empty array.
    #
    # See {https://strava.github.io/api/v3/follow/} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_specific_athlete_followers(id, args = {}, options = {}, &block)
      api_call("athletes/#{id}/followers", args, 'get', options, &block)
    end

    # List the athletes who both the authenticated user and the indicated athlete are following
    #
    # See {https://strava.github.io/api/v3/follow/} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return an array of athlete summary representations
    def list_both_following_athletes(id, args = {}, options = {}, &block)
      api_call("athletes/#{id}/both-following", args, 'get', options, &block)
    end
  end
end
