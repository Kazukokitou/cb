module PagesHelper
  def display?(datestr)
    Date.today <= Date.parse(datestr)
  end
end
