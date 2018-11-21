class ApplicationController < ActionController::API

    def try_get_user
        @authorization_header = request.headers["Authorization"]
        payload = nil

        if @authorization_header
          payload = @authorization_header.split(' ')[1]
        end

        if @authorization_header && JWT.decode(payload, ENV['JWT_SECRET'], true, {algorithm: 'HS256'})[0]["user_id"]
          return User.find(JWT.decode(payload, ENV['JWT_SECRET'], true, {algorithm: 'HS256'})[0]["user_id"])
        else
          return nil
        end
    end
    
end
