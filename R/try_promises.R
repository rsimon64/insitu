library(future)
plan(multiprocess)

library(promises)
library(magrittr)

do_calc <- function() {
  Sys.sleep(3)
  "Ready"
}

future(do_calc()) %...>%
  print()


print("2 + 2")
