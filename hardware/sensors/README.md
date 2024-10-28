# Sensor Selection for Atmospheric and Space Weather Research Project

To achieve comprehensive atmospheric and space weather data collection, we have selected a range of sensors that will capture essential environmental variables. This document outlines each required sensor, alternative options, and the type of data they collect, along with possible applications of this data in our research.

## 1. **Temperature, Humidity, and Pressure Sensor**

   **Primary Sensor**: **BME280**  
   **Alternative**: **DHT22 (only temp/humidity)**

   - **Data Collected**: 
     - **Temperature** (°C)
     - **Humidity** (%)
     - **Atmospheric Pressure** (hPa)
   - **Applications**:
     - Monitoring and analyzing changes in temperature and humidity at different altitudes.
     - Assessing atmospheric pressure for meteorological insights and altitude calculations.

## 2. **UV Radiation Sensor**

   **Primary Sensor**: **VEML6075**  
   **Alternative**: **Si1145**

   - **Data Collected**: 
     - **UVA and UVB Radiation Levels**
     - **UV Index**
   - **Applications**:
     - Measuring UV intensity for studies on solar radiation and its effects on atmospheric layers.
     - Tracking UV variations with altitude, which can help analyze ozone layer density and solar exposure.

## 3. **Magnetometer**

   **Primary Sensor**: **HMC5883L**  
   **Alternative**: **QMC5883**

   - **Data Collected**: 
     - **Magnetic Field Strength** (X, Y, Z axes)
   - **Applications**:
     - Analyzing geomagnetic activity and variations, particularly useful for space weather studies.
     - Helps identify magnetic disturbances, which can indicate solar storms or other cosmic activities impacting Earth’s magnetic field.

## 4. **Radiation Sensor**

   **Primary Sensor**: **Geiger Counter (e.g., GMC-320)**  
   **Alternative**: **RadSens or DIY Geiger-Müller tube**

   - **Data Collected**: 
     - **Ionizing Radiation Levels** (counts per minute or µSv/h)
   - **Applications**:
     - Monitoring radiation levels to study cosmic radiation exposure at higher altitudes.
     - Useful in understanding radiation variation patterns due to solar activity or altitude changes, relevant for aerospace and high-altitude research.

## 5. **CO₂ and Air Quality Sensor**

   **Primary Sensor**: **CCS811**  
   **Alternative**: **MH-Z19 (CO₂ only)**

   - **Data Collected**: 
     - **CO₂ Levels** (ppm)
     - **Volatile Organic Compounds (VOC) Concentration**
   - **Applications**:
     - Tracking air quality and CO₂ concentration, valuable for studying atmospheric composition.
     - Data can be used in environmental studies to monitor pollution levels at various altitudes.

## 6. **GPS Module**

   **Primary Sensor**: **NEO-6M**  
   **Alternative**: **UBlox M8N**

   - **Data Collected**: 
     - **Latitude, Longitude, Altitude**
     - **Speed and Time**
   - **Applications**:
     - Provides precise positional data, essential for mapping data to specific altitudes and locations.
     - Important for tracking the balloon’s path and altitude changes in relation to atmospheric conditions.

## 7. **Gyroscope and Accelerometer**

   **Primary Sensor**: **MPU6050**  
   **Alternative**: **LSM9DS1 (includes magnetometer)**

   - **Data Collected**: 
     - **Orientation** (gyroscope data in X, Y, Z)
     - **Acceleration** (acceleration data in X, Y, Z)
   - **Applications**:
     - Measuring movement and orientation, crucial for understanding the impact of wind and other forces on the balloon.
     - Helps in analyzing stability and dynamics of the balloon at various altitudes.

## Summary of Sensor Applications

These sensors collectively enable a robust data set that can be used to:
- **Analyze atmospheric and environmental conditions** such as temperature, humidity, and UV radiation at different altitudes.
- **Study space weather impacts** by observing radiation, magnetic fields, and cosmic influences on Earth’s atmosphere.
- **Generate altitude-based environmental profiles**, helping in aerospace and meteorological research.
- **Create geographic mappings of atmospheric data**, linking specific environmental data points to real-world locations for deeper insights.

This selection provides a comprehensive foundation for understanding atmospheric conditions and space weather phenomena, while alternative sensors offer flexibility in case of availability or cost constraints.