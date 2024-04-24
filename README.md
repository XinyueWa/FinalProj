## FinalProj description
IEOR4501 course at Columbia University
This README accompanies a collection of SQL queries designed for analyzing various aspects of New York City's urban landscape, including calmness based on 311 complaints, greenery based on tree counts, rent affordability, and potential correlations between these factors.

# the group number:
group 2

# the UNIs: 
yl5583,xw2925

# GitHub username: 
Yanni2001,XinyueWa

# setup
Database Connection: Before running the scripts, make sure to configure the database connection parameters within each function to match your PostgreSQL setup.

# Data Sources:
The analysis is conducted on three primary datasets obtained from a PostgreSQL database:
nyc_zillow: Contains data on rental prices in different ZIP codes.
nyc_tree: Includes records of tree counts and species within the city.
nyc_311: Consists of public complaints logged by the 311 service.

## Queries:
The project crafts SQL queries to explore the datasets and gain a preliminary understanding of the data.
Query 1: Calmness by Zip Code (complaints_per_zip.sql)
This query calculates the number of 311 complaints per zip code between March 1st, 2023, and February 29th, 2024. It outputs a list of zip codes along with the corresponding number of complaints, sorted in descending order.

Query 2: Greenery by Zip Code (top10_zips_greenary.sql)
Identifies the top 10 zip codes with the most trees using the nyc_tree table, sorted by the total number of trees in descending order.

Query 3: Affordability in Green Areas (ave_rent_in_most_greenary.sql)
Determines the average rent in January 2024 for the zip codes identified in Query 2 as having the most trees. The results are sorted by the total number of trees in descending order, and the rent numbers are humanized for readability.

Query 4: Rent, Trees, and Complaints Correlation (ave_rent_tree_complaints_corr.sql)
Explores potential correlations between rent, trees, and complaints by returning 5 zip codes with the highest average rent and 5 with the lowest for January 2024, including the tree count and complaint count for each zip code.

Query 5: Greenery with Boundaries (greenary_boundary.sql)
Rewrites Query 2 to include spatial joins between the nyc_tree table and the nyczipcodes table, considering the polygon boundaries of the zip codes.

Query 6: Campus Greenery (campus_greenary_range.sql)
Finds trees within a ½ mile radius of a given point on campus, detailing the ID, species, health, status, and coordinate location of each tree.

## Visualizations:
This document outlines the visualization functions and the corresponding visualizations created for an analysis of New York City's urban landscape using Python, Pandas, Geopandas, Matplotlib, and data retrieved from a PostgreSQL database.

# Visualization1
Visualization 1: Daily Complaints Trends
Function: generate_plot(daily_complaints_df)
Retrieves the top 3 complaint types from March 1st, 2023 to February 29th, 2024.
Plots a time series of the daily count of complaints per type.
Highlights trends and spikes in daily complaints.

Visualization 2: Common Complaints in Zip Code 10027
Function: plot_complaints(data)
Identifies and displays the top 10 complaints in zip code 10027 from March 1st, 2022 to February 29th, 2024.
Uses a horizontal bar chart to represent the frequency of each complaint type.

Visualization 3: Rent, Trees, and Complaints Correlation
Function: generate_plots(df)
Shows the relationship between average rent and the number of trees, and between rent and the number of complaints.
Uses scatter plots with two subplots sharing the x-axis for comparison.

Visualization 4: Rent vs. Complaints Distribution
Function: create_rent_complaints_boxplot(data)
Creates a boxplot to examine the distribution of 311 complaints relative to average rent in January 2024.
Rent is categorized into $1000 bins on the x-axis, with the count of complaints on the y-axis.

Visualization 5: Geospatial Incident Reports
Function: plot_geospatial_data(df)
Maps the coordinates of reported 311 incidents between March 1st, 2023, and February 29th, 2024, within a 1 km radius of a specified point.
Geospatial points are overlaid on a basemap to show their distribution.

Visualization 6: Greenery Requests and Tree Data
Function: plot_geospatial_data(trees_df, complaints_df)
Displays a map with the locations of trees and "New Tree Request" complaints made from March 1st, 2023 to February 29th, 2024.
Differentiates between existing trees and requested trees with distinct colors on the map.

# Technologies Used:
SQL: For querying the database.
Python: As the main programming language for data manipulation and visualization.
Pandas/Geopandas: For dataframe manipulation and geospatial data handling.
Matplotlib/Contextily: For creating static, interactive, and geospatial visualizations.
Psycopg2: As the PostgreSQL adapter for database connectivity.

# Contributions:
Contributors are encouraged to fork the repository, make enhancements, and submit pull requests. This collaborative approach aims to refine the analysis and expand the project's scope.

# Support:
For any questions or issues, please open an issue on the project's GitHub repository.

# License:
The codebase is released under a suitable open-source license, promoting free use, modification, and distribution.
