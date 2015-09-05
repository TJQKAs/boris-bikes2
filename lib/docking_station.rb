class DockingStation
  DEFAULT_CAPACITY = 20 # we set meaning of var which will be everywhere in our program 
  attr_accessor :capacity # access capacity for other parts of program 
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity # initialize our var 
    @bikes = [] # get array where we store our bikes
  end
    def release_bike  # our method which 
   # Bike.new        # which release bikes
      fail 'No bikes available' if empty?# if no bikes - fail statement, met empty verifies 
      @bikes.pop                          # release bikes
  end
  
  def dock(bike) # our method dock 
    fail 'Docking station full' if full?  #  if our station full - fail statement, met verifies if a store full
    @bikes << bike                        #  receive bikes 
  end
  
  private
  attr_reader :bikes # it allow us to show bikes to every part of our program
  
  def full?             #our hidden methods
    bikes.count >= DEFAULT_CAPACITY # it's equal to meaning which we've set
  end
  def empty?
    bikes.empty?
  end
end
