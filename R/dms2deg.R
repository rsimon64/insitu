# https://stackoverflow.com/questions/14404596/converting-geo-coordinates-from-degree-to-decimal?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

# TODO handle degree symbol
# TODO handle NS, WE

convert<-function(x){
  z <- sapply((strsplit(x, "[°\\.]")), as.numeric)
  z[1, ] + z[2, ]/60 + z[3, ]/3600
}

