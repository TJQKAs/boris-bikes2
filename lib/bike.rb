class Bike
  def initialize 
    @working = true
    @broken = false
  end
  def working
    @working
  end
  def broken?
    if @working == true
      @broken = false
  end
  end
 
  def report_broken
    @working = false  # 
    @broking = true #
    return nil 
  end
  end
