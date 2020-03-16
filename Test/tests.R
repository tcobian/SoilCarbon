


### Tests for the ghg function
# want to make sure that negative input values will give negative output values, also test one other input for N2O
test_that("ghg_negative_value",{
  expect_equal(ghg("CH4", -10), -373.33)
}
)

test_that("ghg_posotive_value",{
  expect_equal(ghg("C", 10), 30.77)
})

test_that("ghg_N2O",{
  expect_equal(ghg("N2O", 20), 8328.58)
})


### Tests for the soil_erosion function
# make sure that area and time value must be posotive

test_that("soil_erosion_1",{
  expect_true(soil_erosion(area = 10, time = 5), 95)
})


test_that("soil_erosion_2",{
  expect_true(soil_erosion(area = 20, time = 2), 76)
})


# Run some data through the function and make sure that the mean value for erosion with the given data is correct

erosion_data = data.frame(land = 10, time = 1:10)
erosion_data$erosion<- soil_erosion(area = erosion_data$land, time = erosion_data$time)

test_that("soil_erosion_works",
          {expect_equal(mean(erosion_data$erosion), 104.5)
                        })


test_file("Test/tests.R")





