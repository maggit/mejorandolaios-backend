require 'v1/status'
require 'v1/courses'
module MejorandolaAPI
    class V1 < Grape::API
      format :json
      version [ 'v1' ], using: :param, parameter: "v", cascade: true
      before do
        @response ||= ResponseHelper::Flash.new({:version => "v1"})
        @logger ||= API.logger
      end
      get :version do
        @response.notice("v1")
      end
      mount MejorandolaAPI::Status
      mount MejorandolaAPI::Courses
    end

end