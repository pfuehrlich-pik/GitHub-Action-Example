if (!requireNamespace("digest", quietly = TRUE)) {
  install.packages("digest")
}

x <- data.frame(n = 1:26, l = letters, stringsAsFactors = TRUE)

checksum <- digest::digest(x)
message("checksum: ", checksum)

expected <- "4c7b13732480ae7154a8f724d99dd1e8"
message("expected: ", expected)

stopifnot(checksum == expected)
message("all tests passed!")
