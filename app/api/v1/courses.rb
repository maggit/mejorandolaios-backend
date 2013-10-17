module MejorandolaAPI
  class Courses < Grape::API
    format :json
    resources :courses do
      before do 
        #dosomething
      end

      get :all do
        @courses = Course.all(:order => "id desc")
        @response.notice("Success.", @courses.as_json(:except => [:created_at, :updated_at]))
      end

    end
  end
end