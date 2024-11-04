/* 
  This file will hold your final view, which combines the data from the models you've
  built with the data from model fitting. Your view should return at least two colunns,
  url and the estimated_price.

  I'm putting in an example for you of a very simple model as a view.  This view calculates 
  an estimated price for each car listing based on the average price
  of similar listings with the same make, model, and year. It filters the data to include
  only listings with reasonable mileages (between 10,000 and 500,000 miles) and excludes
  entries with missing year or price information. The estimated price serves as a simple
  baseline model that can be used to identify potential deals by comparing individual
  prices to the average price for similar cars. Your regression model should beat this one!
*/ 

CREATE OR REPLACE VIEW `umt-msba.carbitrage.vw_estimated_average_price` AS
SELECT
    url,
    location,
    make,
    model,
    year,
    odometer,
    price,
    AVG(price) OVER (PARTITION BY make, model, year) AS estimated_price
FROM
    `umt-msba.carbitrage.processed_listing_pages`
WHERE
    odometer BETWEEN 10000 AND 500000
    AND year IS NOT NULL
    AND price IS NOT NULL;
