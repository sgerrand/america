require 'active_support/all'
require "america/version"

module America
  class StateName
    STATES = {
      "alabama"        => "AL",
      "alaska"         => "AK",
      "arizona"        => "AZ",
      "arkansas"       => "AR",
      "california"     => "CA",
      "colorado"       => "CO",
      "connecticut"    => "CT",
      "delaware"       => "DE",
      "florida"        => "FL",
      "georgia"        => "GA",
      "hawaii"         => "HI",
      "idaho"          => "ID",
      "illinois"       => "IL",
      "indiana"        => "IN",
      "iowa"           => "IA",
      "kansas"         => "KS",
      "kentucky"       => "KY",
      "louisiana"      => "LA",
      "maine"          => "ME",
      "maryland"       => "MD",
      "massachusetts"  => "MA",
      "michigan"       => "MI",
      "minnesota"      => "MN",
      "mississippi"    => "MS",
      "missouri"       => "MO",
      "montana"        => "MT",
      "nebraska"       => "NE",
      "nevada"         => "NV",
      "new hampshire"  => "NH",
      "new jersey"     => "NJ",
      "new mexico"     => "NM",
      "new york"       => "NY",
      "north carolina" => "NC",
      "north dakota"   => "ND",
      "ohio"           => "OH",
      "oklahoma"       => "OK",
      "oregon"         => "OR",
      "pennsylvania"   => "PA",
      "rhode island"   => "RI",
      "south carolina" => "SC",
      "south dakota"   => "SD",
      "tennessee"      => "TN",
      "texas"          => "TX",
      "utah"           => "UT",
      "vermont"        => "VT",
      "virginia"       => "VA",
      "washington"     => "WA",
      "west virginia"  => "WV",
      "wisconsin"      => "WI",
      "wyoming"        => "WY"
    }

    attr_reader :state

    def initialize(state)
      @state = state.to_s.strip
    end

    def abbreviation
      if abbreviation? && STATES.has_value?(@state.upcase)
        @state.upcase
      else
        STATES[@state.downcase]
      end
    end

    def fullname
      STATES.key(abbreviation)
    end

    def known?
      abbreviation.present?
    end

    private

    def abbreviation?
      @state.size == 2
    end
  end
end
