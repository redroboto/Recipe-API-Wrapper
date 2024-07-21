module MealDb 
  class Request
    BASE_URL = "www.themealdb.com/api/json/v1/1"

    def self.call(http_method, endpoint, params = {} , payload = nil)

      headers = {'Content-Type' => 'application/json', 'Accept' => 'application/json'}.merge(params)

      # set payload to empty array if nil to avoid passing nil in the request which may return an error
      payload ||= {}

      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        payload: payload,
        headers: headers
      )
      { code: result.code, status: 'Success', data: JSON.parse(result.body)}
    rescue RestClient::ExceptionWithResponse => error 
      { code: error.http_code, status: error.message, data: Errors.map(error.http_code)}
    end
  end
end