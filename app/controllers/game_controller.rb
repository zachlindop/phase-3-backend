class GameController < ApplicationController

        get "/games" do
            Game.all.to_json
            #{we_in: "game"}.to_json
        end
    
end