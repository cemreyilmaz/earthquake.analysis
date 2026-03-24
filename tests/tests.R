library(earthquake.analysis)
library(testthat)

# Test verisini yükle
data("earthquakes")

test_that("eq_clean_data processes dates and coordinates correctly", {
  clean_data <- eq_clean_data(earthquakes)

  # Temel kontroller
  expect_s3_class(clean_data, "data.frame")

  # Kritik sütun kontrolleri
  expect_true("Date" %in% names(clean_data))
  expect_type(clean_data$Latitude, "double") # numeric mi?
  expect_type(clean_data$Longitude, "double")
})

test_that("eq_location_clean formats location names properly", {
  # Önce temizle sonra lokasyon temizliği yap
  proc_data <- eq_location_clean(eq_clean_data(earthquakes))

  expect_s3_class(proc_data, "data.frame")

  # Location.Name içinde artık ":" olmadığını kontrol et (sub fonksiyonun çalışıyor mu?)
  # stringr::str_to_title çalıştı mı? (Örn: "TURKEY" -> "Turkey")
  expect_false(grepl(":", proc_data$Location.Name[1]))
})

test_that("Visualizations return ggplot objects", {
  proc_data <- earthquakes %>% eq_clean_data() %>% eq_location_clean()

  p1 <- geom_timeline(proc_data)
  p2 <- geom_timeline_label(proc_data, n_max = 7)

  expect_s3_class(p1, "ggplot")
  expect_s3_class(p2, "ggplot")
})
