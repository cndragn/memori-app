class CardService
  def self.api(original)
    key = '55359353dedf4958bf05995dff13eb9d'

    host = 'https://api.microsofttranslator.com'
    path = '/V2/Http.svc/Translate'

    target = 'es'
    text = original

    params = '?to=' + target + '&text=' + CGI.escape(text)
    uri = URI (host + path + params)

    request = Net::HTTP::Get.new(uri)
    request['Ocp-Apim-Subscription-Key'] = key

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request (request)
    end

    doc = Nokogiri::XML(response.body)

    return doc.text
  end
end
