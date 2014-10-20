*** HOME VALUATION ****
  /lib/rubillow/home_valuation.rb

Rubillow::HomeValuation
  .search_results
    --  retrieve prop by address.
    --  requires
          :address (string)
          :citystatezip (string - city+state AND/OR zip)

  .zestimate
    --  retrieve zestimate for specified prop.
    --  requires
          :zpid (integer)

  .chart
    --  retrieve chart for specified prop.
    --  requires
          :zpid (integer)
          :unit_type (string - 'percent' or 'dollar')

  .comps
    --  retrieve list of comps for specified prop.
    --  requires
          :zpid
          :count (integer - no. of comps to return, b/t 1..25 inclusive)

*** NEIGHBORHOOD / DEMOS ***
  /lib/rubillow/neighborhood.rb

Rubillow::Neighborhood
  .demographics
    --  retrieve demo data for given region
    --  requires, at least regionid, OR state+city, OR city+neighborhood, OR zip
          :regionid (string)
          :state (string)
          :city (string)
          :neighborhood (string)
          :zip (string)

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
