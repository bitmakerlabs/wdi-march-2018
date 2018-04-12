class RidesController < ApplicationController

  def index
    @rides = { lorem: lorem_ride, bacon: bacon_ride, got: game_of_thrones_ride }
  end

  def show
    @ride_name = params[:id]
    @description = case @ride_name
                    when 'lorem'
                      lorem_ride
                    when 'bacon'
                      bacon_ride
                    when 'got'
                      game_of_thrones_ride
                    else
                      'This ride is coming soon!'
                    end
  end

  def search
    render plain: params[:term]
  end

  def about
    # render plain: "Welcome to Ipsum's Fair!  Come for our rides, stay for our cotton candy."
    render :about
  end

  def lorem_ride
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end

  def bacon_ride
    'Bacon ipsum dolor amet pastrami alcatra kevin ribeye turkey, spare ribs shank jerky.'
  end

  def game_of_thrones_ride
    'Hodor, hodor; hodor HODOR hodor, hodor hodor? Hodor hodor - hodor...'
  end

end
