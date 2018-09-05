require 'securerandom'

class ShortenedUrl < ApplicationRecord
  
  def self.random_code
    url = "nick.com/="
    potential = ""
    loop do 
      long_portion = SecureRandom.base64
      potential = url + long_portion
      
      break unless self.exists?(:short_url => potential)
    end
    potential
  end
end
