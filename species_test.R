library(tidyverse)
library(rgbif)

rgbif::enumeration()

test <-
  rgbif::occ_search(
    scientificName = "Cyanistes caeruleus",
    geometry = "POLYGON((10.5 63, 10.5 63.5, 10 63.5, 10 63, 10.5 63))"
  )

observations <-
  test$data |>
  dplyr::select(
    key,
    scientificName,
    taxonKey,
    species,
    iucnRedListCategory,
    individualCount,
    stateProvince,
    year,
    month,
    day,
    eventDate,
    recordedBy,
    county,
    municipality
  )
