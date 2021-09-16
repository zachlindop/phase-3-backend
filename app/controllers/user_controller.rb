class UserController < ApplicationController

    get "/users" do
        User.all.to_json
        #{ we_in: "user"}.to_json
    end

    get "/users/:id" do
        #{ we_in: "user"}.to_json
        puts"In: get'/users/id'"

            u = User.find(params[:id])

            user_for_front_end = u.to_json

            user_for_front_end
    end

    delete "/users/:id" do
        user_to_delete = User.find(params[:id])
        user_to_delete.destroy
    end



end