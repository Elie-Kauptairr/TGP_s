def show
  @city = City.find(params[:id])
  @gossips = @city.gossips
end
