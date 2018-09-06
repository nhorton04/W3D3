class Visit < ApplicationRecord



  def self.record_visit!(user, shortened_url)
    self.create!(
      user_id: user_id ,
      shortened_url: shortened_url
    )
  end
end
