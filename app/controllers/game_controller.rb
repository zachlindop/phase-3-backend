class GameController < ApplicationController

        get '/games' do
            Game.all.to_json
            #{we_in: "game"}.to_json
        end
        
        get "/games/:id" do
            puts"In: get'/games/id'"

                g = Game.find(params[:id])

                game_for_front_end = u.to_json

                game_for_front_end
        end

        post '/games' do
            Game.create.to_json
        end

        delete '/games/:id' do
            game = Game.find(params[:id])
            game.destroy_all
            #game.to_json
        end

        private

            def game_params
                allowed_params=%w(game_name game_description game_image)
                params.select{|k,v| allowed_params.include?(k)}
            end

end