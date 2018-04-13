class CarsController < ApplicationController

  def index
    @cars = Car.all
    render :index
  end

  def new
    # provides a form for a car
    @car = Car.new
  end

  def create
    # actually creates the car using info from user
    car = Car.new

    car.make = params[:car][:make]
    car.model = params[:car][:model]
    car.wheels = params[:car][:wheels]

    car.save
  end

  def edit
    # shows a form to edit a car
    @car = Car.find(params[:id])
  end

  def update
    # actually update a car with info from user
  end

end
