library(visNetwork)
library(dplyr)

myNetwork = visNetwork(nodes, edges, width = 500,main = "Global genetic code network",height = 500) %>% 
  visOptions(selectedBy = "group",highlightNearest = list(enabled = T, degree = 1, hover = T,hideColor='rgba(200,200,200,0.1)')) %>% 
  visEdges(width = 2,shadow = FALSE,color = list(color = "black", highlight = "red")) %>%
  visLayout(randomSeed = 123) %>% visInteraction(dragNodes = TRUE, dragView = TRUE, zoomView = TRUE) %>% 
  visPhysics(timestep = 0.1)