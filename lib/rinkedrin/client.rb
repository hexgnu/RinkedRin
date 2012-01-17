module RinkedRin
  class Client
    include Api::QueryMethods
    
    
    attr_reader :token, :token_secret, :consumer_key, :consumer_secret,
    def initialize(token, secret, ckey, csecret)
      @token = token
      @token_secret = secret
      @consumer_key = ckey
      @consumer_secret = csecret
      @connection = Faraday.new(:url => 'http://api.linkedin.com/v1') do |builder|
        builder.use Faraday::Response::ParseJson
        builder.adapter Faraday.default_adapter
        builder.user Faraday::Request::OAuth, authentication
      end
    end
    
    protected
    def authentication_headers
      @auth_headers ||= {
        :token => self.token,
        :token_secret => self.token_secret,
        :consumer_key => self.consumer_key,
        :consumer_secret => self.consumer_secret
      }
    end
  end
end