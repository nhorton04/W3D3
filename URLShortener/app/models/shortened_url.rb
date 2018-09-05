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

  def self.short_url_creator(user_id , the_long_url)
    self.create!(
      user_id:  user_id ,
      :long_url => the_long_url,
      :short_url => ShortenedUrl.random_code
    )
  end
end
