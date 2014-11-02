class PlayersController < ApplicationController
	def new
                @player = Player.new
        end

        def create
                @player = Player.new(player_params)
                if @player.save
                        flash[:notice] = "You have successfully registered!"
                        flash[:color] = "valid"
                else
                        flash[:notice] = "Form is invalid"
                        flash[:color] = "invalid"
                end
                render "new"
        end

        def player_params
                params.require(:player).permit(:username, :password, :password_confirmation)
        end

end
