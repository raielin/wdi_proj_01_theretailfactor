*** NEIGHBORHOOD / DEMOS ***
  /lib/rubillow/neighborhood.rb

Rubillow::Neighborhood
  .demographics
    --  retrieve demo data for given region
    --  requires, at least regionid, OR state+city, city+neighborhood, OR zip
          :regionid (string)
          :state (string)
          :city (string)
          :neighborhood (string)
          :zip (string)
    -- returns
          :region
              /id
              /state
              /city
              /neighborhood
              /latitude
              /longitude
          :links
              /main (link to region page)
              /affordability
              /homesandrealestate
              /people
              /forSale
              /forSaleByOwner
              /foreclosures
              /recentlySold
          :charts
              /chart (:name :url)
                  Median Condo Value
                  Median Home Value
                  Dollars Per Square Feet
                  Home Value Index Distribution
                  Home Type
                  Owners vs. Renters
                  Home Size in Square Feet
                  Year Built
          :local market data
          :affordability info
          :homes and RE data (attributes of homes in city or neighborhood)
          :people data (census attributes)
          :who lives here (primary groups of pple in this neighborhood)
          :what's unique about the people (population characteristics)


  .region_children
    --  retrieve sub-regions for a region
    --  requires, at least regionid OR state
          :regionid (string)
          :state (string)
    --  options
          :county (string)
          :city (string)
          :childtype (string - types of regions to retrieve, i.e. 'state', 'county', 'city', 'zipcode', and 'neighborhood')

  .region_chart
    --  retrieve chart for specified region
    --  requires
          :unit_type (string - 'percent' or 'dollar')

*** HOME VALUATION ****
  /lib/rubillow/home_valuation.rb

Rubillow::HomeValuation
  .search_results
    --  retrieve prop by address.
    --  requires
          :address (string, URL encoded)
          :citystatezip (string - city+state AND/OR zip)
    --  returns
          :zpid
          :links
              /homedetails
              /graphsanddata
              /mapthishome
              /comparables
          :address
              /street
              /zipcode
              /city
              /state
              /latitude
              /longitude
          :zestimate
              /amount (dollars)
              /last-updated
          :localRealEstate (for neighborhood, city, and state)
              /region (:id :type :name)
                  .zindexValue (Home Value Index)
                  .zindexOneYearChange
                  .links
                    overview
                    forSaleByOwner
                    forSale


  .zestimate
    --  retrieve zestimate for specified prop.
    --  requires
          :zpid (integer)
    --  returns
          :zpid
          :links
              /homedetails
              /graphsanddata
              /mapthishome
              /comparables
          :address
              /street
              /zipcode
              /city
              /state
              /latitude
              /longitude
          :zestimate
              /amount (dollars)
              /last-updated
          :localRealEstate (for neighborhood, city, and state)
              /region (:id :type :name)
                  .zindexValue (Home Value Index)
                  .zindexOneYearChange
                  .links
                    overview
                    forSaleByOwner
                    forSale

  .chart
    --  retrieve chart for specified prop.
    --  requires
          :zpid (integer)
          :unit_type (string - 'percent' or 'dollar')
    --  returns
          :url (link to chart)

  .comps
    --  retrieve list of comps for specified prop.
    --  requires
          :zpid
          :count (integer - no. of comps to return, b/t 1..25 inclusive)
    --  returns (for target property: :principal and comp   results: :comparables)
          :comp (:score) (for comparables only - indicates how close the comp is to the target prop. can sort by relevance with 0 being most relevant.)
          :zpid
          :links
              /homedetails
              /graphsanddata
              /mapthishome
              /comparables
          :address
              /street
              /zipcode
              /city
              /state
              /latitude
              /longitude
          :zestimate
              /amount (dollars)
              /last-updated
          :localRealEstate (for neighborhood, city, and state)
              /region (:id :type :name)
                  .zindexValue (Home Value Index)
                  .zindexOneYearChange
                  .links
                    overview
                    forSaleByOwner
                    forSale

*** POSTINGS ***
  /lib/rubillow/postings.rb

Rubillow::Postings
  .region_postings
    --  retrieve postings for a given region
    --  requires, at least zipcode OR citystatezip
          :zipcode (string)
          :citystatezip (string - city+state AND/OR zip)
    --  options
          :rental (boolean - set equal to true to return rental properties, defaults to false)
          :postingType (string - type of for-sale listings, default is 'all')
              * For Sale by Owner Only = 'fsbo'
              * For Sale by Agent Only = 'fsba'
              * Make Me Move = 'mmm'
              * None = 'none' (combine with :rental => true to return only rentals)

*** PROPERTY DETAILS ***
  /lib/rubillow/property_details.rb

Rubillow::PropertyDetails
  .deep_search_results
    -- retrieve extended details for a prop
    -- requires
        :address (string)
        :citystatezip (string - city+state AND/OR zip)

  .deep_comps
    --  retrieve extended details for a prop and its comps
    --  requires
          :zpid (integer)
          :count (integer - no. of comps to return b/t 1..25 inclusive)

  .updated_property_details
    --  retrieve updated property facts for a given prop
    --  requires
          :zpid (integer)
