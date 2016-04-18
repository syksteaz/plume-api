require 'net/http'

module PlumeApi
  class Client

    attr_accessor :token, :pollution_recent, :pollution_forecast, :uv_forecast

    DOMAIN = "https://api.plume.io/1.0"

    def initialize(options)
      missing = [:token] - opts.keys
      if missing.size > 0
        raise PlumeApi::InvalidArgumentError, "Missing required options: #{missing.join(',')}"
      end
      @token = options[:token]
    end

    # https://api.plume.io/1.0/pollution/recent?token=xxx&zone=PARIS&period=day
    #
    # token[String], zone[String], period[String]: day,month,year
    #
    def get_pollution_recent(zone, period)
      uri = URI(DOMAIN + "/pollution/recent?" + "token=" + @token + "&zone=" + zone + "&period=" + period)
      @pollution_recent = Net::HTTP.get(uri)
    end

    # https://api.plume.io/1.0/pollution/forecast?token=xxx&lat=48.85&lon2.294
    #
    # token[String], lat[Float], lon[Float]
    #
    def get_pollution_forecast(lat, lon)
      uri = URI(DOMAIN + "/pollution/forecast?" + "token=" + @token + "&lat=" + lat.to_s + "&lon=" + lon.to_s)
      @pollution_forecast = Net::HTTP.get(uri)
    end

    # https://api.plume.io/1.0/uv/forecast?token=xxx&lat=48.85&lon2.294
    #
    # token[String], lat[Float], lon[Float]
    #
    def get_uv_forecast(lat, lon)
      uri = URI(DOMAIN + "/uv/forecast?" + "token=" + @token + "&lat=" + lat.to_s + "&lon=" + lon.to_s)
      @uv_forecast = Net::HTTP.get(uri)
    end
  end
end
