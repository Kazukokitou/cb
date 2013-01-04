module HomesHelper
  def display?(datestr)
    Date.today <= Date.parse(datestr)
  end
end
