require 'helpers/api_helpers'
require 'v1/v1'
module MejorandolaAPI
  class API < Grape::API
    before do
        header['Access-Control-Allow-Origin'] = '*'
        header['Access-Control-Request-Method'] = '*'
        @response ||= ResponseHelper::Flash.new({:version => "v1"})
        @logger ||= API.logger
    end
    mount MejorandolaAPI::V1
    route :any, '*path' do
      error!({ "error" => "unexpected error", "detail" => "No route matches your request" }, 404)
    end
  end
end
