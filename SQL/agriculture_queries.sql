-- ============================================================
-- Smart Agriculture Analysis
-- Dataset: Smart_Farming_Crop_Yield_2024.csv
-- Table: Smart_Farming_Crop_Yield_2024
-- ============================================================

-- 1. View all records
SELECT *
FROM Smart_Farming_Crop_Yield_2024

-- 2. Total number of farms
SELECT COUNT(DISTINCT farm_id) AS total_farms
FROM Smart_Farming_Crop_Yield_2024

-- 3. Crop-wise farm count
SELECT
crop_type,
COUNT(DISTINCT farm_id) AS total_farms
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY total_farms DESC;

-- 4. Average yield by crop
SELECT
crop_type,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_yield DESC;

-- 5. Highest yielding crop
SELECT
crop_type,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_yield DESC
LIMIT 1;

-- 6. Lowest yielding crop
SELECT
crop_type,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_yield ASC
LIMIT 1;

-- 7. Region-wise average yield
SELECT
region,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY region
ORDER BY average_yield DESC;

-- 8. Highest performing region
SELECT
region,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY region
ORDER BY average_yield DESC
LIMIT 1;

-- 9. Lowest performing region
SELECT
region,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY region
ORDER BY average_yield ASC
LIMIT 1;

-- 10. Average soil pH by crop
SELECT
crop_type,
ROUND(AVG(soil_pH), 2) AS average_soil_pH
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_soil_pH DESC;

-- 11. Average rainfall and yield by crop
SELECT
crop_type,
ROUND(AVG(rainfall_mm), 2) AS average_rainfall,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_yield DESC;

-- 12. Average temperature and yield by crop
SELECT
crop_type,
ROUND(AVG(temperature_C), 2) AS average_temperature,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_yield DESC;

-- 13. Yield by irrigation type
SELECT
irrigation_type,
COUNT(*) AS total_records,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY irrigation_type
ORDER BY average_yield DESC;

-- 14. Yield by fertilizer type
SELECT
fertilizer_type,
COUNT(*) AS total_records,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY fertilizer_type
ORDER BY average_yield DESC;

-- 15. Disease status analysis
SELECT
crop_disease_status,
COUNT(*) AS total_records,
ROUND(AVG(yield_kg_per_hectare), 2) AS average_yield
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_disease_status
ORDER BY average_yield DESC;

-- 16. Average NDVI by crop
SELECT
crop_type,
ROUND(AVG(NDVI_index), 3) AS average_NDVI
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_NDVI DESC;

-- 17. Average water-related and environmental conditions
SELECT
crop_type,
ROUND(AVG(soil_moisture_%), 2) AS average_soil_moisture,
ROUND(AVG(humidity_%), 2) AS average_humidity,
ROUND(AVG(rainfall_mm), 2) AS average_rainfall
FROM Smart_Farming_Crop_Yield_2024
GROUP BY crop_type
ORDER BY average_soil_moisture DESC;

-- 18. Top 10 farms by yield
SELECT
farm_id,
region,
crop_type,
yield_kg_per_hectare
FROM Smart_Farming_Crop_Yield_2024
ORDER BY yield_kg_per_hectare DESC
LIMIT 10;

-- 19. Bottom 10 farms by yield
SELECT
farm_id,
region,
crop_type,
yield_kg_per_hectare
FROM Smart_Farming_Crop_Yield_2024
ORDER BY yield_kg_per_hectare ASC
LIMIT 10;

-- 20. Overall agricultural performance
SELECT
COUNT(*) AS total_records,
COUNT(DISTINCT farm_id) AS total_farms,
COUNT(DISTINCT crop_type) AS total_crop_types,
ROUND(AVG(yield_kg_per_hectare), 2) AS overall_average_yield,
ROUND(AVG(soil_pH), 2) AS overall_average_soil_pH,
ROUND(AVG(rainfall_mm), 2) AS overall_average_rainfall,
ROUND(AVG(temperature_C), 2) AS overall_average_temperature
FROM Smart_Farming_Crop_Yield_2024;
