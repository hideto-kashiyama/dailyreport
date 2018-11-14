module HomeHelper
    require 'net/http'
    require 'uri'
    require 'json'
    
def translate 
    
    url = URI.parse('https://www.googleapis.com/language/translate/v2')
      
      params = {
         
        q: @transval,
        target: "en",
        source: "ja",
        key: "AIzaSyBt9WU7gsxgB5uF8hJaIbWbKGOEWBX_0qo"
      }
      url.query = URI.encode_www_form(params)
      res = Net::HTTP.get_response(url)
      JSON.parse(res.body)["data"]["translations"].first["translatedText"]
     
end


def translatej 
    
    url = URI.parse('https://www.googleapis.com/language/translate/v2')
      
      params = {
         
        q: @transval,
        target: "ja",
        source: "en",
        key: "AIzaSyBt9WU7gsxgB5uF8hJaIbWbKGOEWBX_0qo"
      }
      url.query = URI.encode_www_form(params)
      res = Net::HTTP.get_response(url)
      JSON.parse(res.body)["data"]["translations"].first["translatedText"]
     
end


end