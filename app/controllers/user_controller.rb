class UserController < ApplicationController

    get "/users" do
        User.all.to_json
        #{ we_in: "user"}.to_json
    end
end