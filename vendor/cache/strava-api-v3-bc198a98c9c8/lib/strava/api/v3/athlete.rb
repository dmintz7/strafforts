require 'strava/api/v3/common'

module Strava::Api::V3
  module Athlete

    include Common

    # Retrieve information about the currently authenticated athlete.
    #
    # See {https://strava.github.io/api/v3/athlete/#get-details} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return athlete json (see https://strava.github.io/api/v3/athlete/#get-details)
    def retrieve_current_athlete(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("athlete", args, "get", options, &block)
    end

    # Retrieve information about any athlete on Strava.
    #
    # See {https://strava.github.io/api/v3/athlete/#get-another-details} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return athlete json (see https://strava.github.io/api/v3/athlete/#get-another-details)
    def retrieve_another_athlete(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("athletes/#{id}", args, "get", options, &block)
    end

    # Update information about the currently authenticated athlete.
    #
    # See {https://strava.github.io/api/v3/athlete/#update} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return athlete json (see https://strava.github.io/api/v3/athlete/#get-details)
    def update_current_athlete(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('athlete', args, 'put', options, &block)
    end

    # Returns an array of segment efforts representing KOMs/QOMs and course records held by the given athlete.
    # Results are sorted by date, newest first. Pagination is supported.
    #
    # See {https://strava.github.io/api/v3/athlete/#koms} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return segment effort json array (see https://strava.github.io/api/v3/athlete/#koms)
    def list_athlete_segment_efforts(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("athletes/#{id}/koms", args, 'get', options, &block)
    end

    # Returns an array of recent (last 4 weeks), year to date and all time stats for a given athlete.
    #
    # See {https://strava.github.io/api/v3/athlete/#stats} for full details
    #
    # @param id athlete id
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return segment effort json array (https://strava.github.io/api/v3/athlete/#stats)
    def totals_and_stats(id, args = {}, options = {}, &block)
      api_call("athletes/#{id}/stats", args, "get", options, &block)
    end

    # Retrieve zone information about the currently authenticated athlete.
    #
    # See {https://strava.github.io/api/v3/athlete/#zones} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return zone json (see https://strava.github.io/api/v3/athlete/#zones)
    def retrieve_current_athlete_zones(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("athlete/zones", args, "get", options, &block)
    end
  end
end
