class RobotsGenerator
  # Use the config/robots.txt in production.
  # Disallow everything for all other environments.
  # http://avandamiri.com/2011/10/11/serving-different-robots-using-rack.html
  def self.call(env)
    body = if Rails.env.production?
      File.read Rails.root.join('config', 'robots.txt')
    else
      "User-agent: *\nDisallow: /"
    end

   
end