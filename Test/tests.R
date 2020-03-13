


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
# make sure that area value must be posotive

test_that("land_area_greater_0",{
  expect_true(soil_erosion(area > 0))
})










