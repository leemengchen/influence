class Instagram
  def self.basic_information(influencer)
    influencer = influencer
    access_token = influencer.access_token
    url = "https://api.instagram.com/v1/users/self/?access_token=#{access_token}"
    arguments = { headers: {'Content-Type' => 'application/json', 'Accept' => 'application/json'},
                basic_auth: { access_token: influencer.access_token }
                }
    HTTParty.get(url, arguments)
  end

  def self.recent_media(influencer)
    influencer = influencer
    access_token = influencer.access_token
    url = "https://api.instagram.com/v1/users/self/media/recent/?access_token=#{access_token}"
    arguments = { headers: {'Content-Type' => 'application/json', 'Accept' => 'application/json'},
                basic_auth: { access_token: influencer.access_token}
                }
    HTTParty.get(url, arguments)
  end           
end
