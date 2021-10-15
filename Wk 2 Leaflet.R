library(leaflet)

md_chicago <- data.frame(
  popup = c("Chicago: 2,710,000", "Irving Park: 53,665", "Lakeview: 100,547", "Englewood 23,792", "Downtown 22,790"),
  pop = c(2710000, 53665, 100547, 23792, 22790),
  lat = c(41.8781, 41.9538, 41.9398, 41.7753, 41.8757),
  lng = c(-87.6298, -87.7193, -87.6589, -87.6416, -87.6243)  
)

md_chicago %>%
  leaflet() %>%
  addTiles() %>%
  #addCircles(weight=1, radius=sqrt(md_chicago$pop) * 30)
  addMarkers(clusterOptions = markerClusterOptions(), popup = md_chicago$popup)