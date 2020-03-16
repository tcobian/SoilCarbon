


### Tests for the ghg function
# want to make sure that negative input values will give negative output values
test_that("ghg_negative_value",{
  expect_equal(ghg("CH4", -10), -373.33)
}
)

test_that("ghg_posotive_value",{
  expect_equal(ghg("C", 10), 30.77)
})


### Tests for the soil_erosion function
# make sure that area and time value must be posotive

test_that("land_area_greater_0",{
  expect_true(soil_erosion(area > 0))
})


test_that("time_posotive", {
  expect_true(soil_erosion(time > 0))
})


erosion_data = data.frame(land = 10, time = 1:10)
erosion_data$erosion<- soil_erosion(area = erosion_data$land, time = erosion_data$time)

test_that("soil_erosion_works",
          {expect_equal(mean(erosion_data$erosion), 104.5)
                        })


test_file()





