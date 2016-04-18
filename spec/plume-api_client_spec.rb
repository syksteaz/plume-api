require 'plume-api'


plume = PlumeApi::Client.new('HERE_INSERT_ACCESS_TOKEN')

plume.get_pollution_recent('PARIS', 'day')
puts plume.pollution_recent


plume.get_pollution_forecast('48.8534100', '2.3488000')
puts plume.pollution_forecast

plume.get_uv_forecast('48.8534100', '2.3488000')
puts plume.uv_forecast
