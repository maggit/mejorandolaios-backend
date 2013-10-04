module MejorandolaAPI
  class Status < Grape::API
    format :json
    get :still_alive do
      @response.notice("ok")
    end
    get :status do
      @response.notice("alive")
    end
  end
end