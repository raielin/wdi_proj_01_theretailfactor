# the retail factor...
https://obscure-badlands-8598.herokuapp.com

_(a work in progress...)_


## the initial intended concept

### User Story

#### Exploring Site & Performing Searches

Jackie wants to look up houses for sale.  She loves Anthropologie.

Hmmm... Perhaps Jackie should search for houses that are closest to an Anthro location!

She comes to 'the anthro factor' site.

At first, she's just testing it out. No need to create an account. Just poking around.

The homepage is fun and girly, but still sophisticated. There's a cool background photo at the top of a fluid scrolling page.  The top image is overlain with just the name of the site and an option to sign in or sign up.

The next scroll reveals a brief explanation of the site and why it's worth trying. Some icons and short statements paint the picture and give a taste of the experience Jackie can look forward to.

The third scroll prompts Jackie to get started on her search. A self-explanatory form with just a brief heading provides Jackie with enough direction to enter the correct locational search parameters.
```
  Target Search Area Fields
      Address (requires: zipcode OR city+state) (require city or zipcode only - nice-to-have)
        Street
        City
        State
        Zipcode
        Nieghborhood (dropdown - nice-to-have)
```
She submits her parameters and a new page loads confirming the params she entered, along with a list of all the Anthro locations within a certain radius (nice-to-have: map of locations).

Additional directions on this page instruct her to select a single Anthro location, around which to center her property search.

Jackie selects her desired Anthro location and a new section of the page loads below which asks her for any basic property search parameters.
```
  Property Search Fields
    Distance from Anthro (default is 5 miles)
    Size Range
    Price Range
    No. of Bedrooms
    No. of Bathrooms
    Submit or Search All Properties (no parameters, but default distance)
```
Upon submitting her criteria or electing to submit no criteria, a new page loads with her search results.

It is a nicely displayed set of property listings.
```
  Search Results View
    15 properties per page (options for 25, 50 - nice-to-have)
    Columns:
      Property Photo
      Full Address
      Basic Property Info
        Total Sq. Ft.
        No. Bedrooms
        No. Bathrooms
        Sale Price
        Zestimate
      Closest Anthro Location (address)
      Distance from Closest Anthro Location (miles)
      Link to full Zillow listing (open in new tab)
      Heart icon - default is grey heart, click to colorize and save, click again to grey out and remove from saved properties. (heart icon is a nice-to-have, start with just regular links to save & remove)
```
Each listing includes a photo, the address, basic property info, a static map image of the property in relation to the Anthro location she selected, a link to the full Zillow listing, and an option to save the property to her history. There is also an option to save the  search query (not necessarily the results) for convenient quick-searching during her next visit.

In either case, saving requires Jackie to sign in or sign up. The page explains that this is so that her history can be saved and recalled for her. She decides to sign up.


#### Signing Up For New Account

Jackie clicks the Sign Up button. She is directed to the signup form page.
```
  Required fields:
    Username (used to login)
    Email
    Password
    Confirm Password

  Optional fields:
    First Name
    Last Name
    Sign in via existing Zillow account (nice-to-have)
    Add User Photo (nice-to-have)
```
Jackie fills in the form and clicks submit. (Ideally, would like to include an email verification function in order to activiate the account, but will come back to this if there's time.)

She is now redirected back to her previous search results and sees that she's now logged in and able to save specific properties as well as the full search query.


#### Saving Properties & Searches

Next to each property is a greyed out heart. By clicking on the checkmark it is 'activated' (in color) and is saved into Jackie's history. Any property with a colored heart indicates it is currently in Jackie's saved properties list. Clicking a colored heart greys it out again and removes it from her saved properties.

Jackie wants to save the search query so she can run it again next time without having to re-enter her search criteria.

Above the search results and under the search page header is a link to save the search query. Jackie clicks on this link and is directed to a form page/view. (Ideally, would like this to be a javascript pop up form over the current active search results page view.)
```
  Required fields:
    Search Name (default is full address of selected Anthro location)
    Date Saved (auto-generated)

  Optional field:
    Description of Search
```
Jackie fills in the appropriate fields and clicks submit. She is returned to the search results page and now the search header says Saved Search, with her Search Name as the title and the Date Saved and description below it. Since Jackie didn't fill in a description, all she sees is the text `Description` in grey text.

Hovering over the header, she sees that she's able to edit the Search Name and Description right from this view page. When she clicks on either text, a text box with the current text appears where she can type whatever she wants. Hitting enter or navigating away from the text box automatically saves any changes she made.


#### User Profile

After saving her search query and 'favoriting' some properties, Jackie goes to her User Profile where she can view what she saved.

The User Profile link is in the top navigation bar. She knows she's logged in because it says 'jackie451's Profile'. (Ideally, should include a 'not jackie451? click here to sign in as a different user.' function.) She clicks on the link and is directed to her Profile page.

The page has the following in formation:
  * First Name (if it exists)
  * Last Name (if it exists)
  * Username
  * Link to Change Password
  * Saved Searches
  * Saved Properties
  * Link to Delete Account
```
  Page Layout:
    USERNAME (HEADER)
      first_name last_name (Subheader)
      update password link (small text)
      User photo floated to the right

    Your Saved Searches (Subheader)
      List of 5 most recent searches in a table
        Columns:
            Date Saved
            Search Name
            Anthro Selected (address)
            Search Description
            Link to remove search query from history
        Sort Options:
            Date Saved (default)
            Search Name

      Link to All saved searches

    Your Saved Properties (Subheader)
      List of 10 most recent saved properties
      (Similar view layout as Search Results page.)
        Columns:
            Property Photo
            Full Address
            Basic Property Info
              Total Sq. Ft.
              No. Bedrooms
              No. Bathrooms
              Sale Price
              Zestimate
            Closest Anthro Location (address)
            Distance from Closest Anthro Location (miles)
            Link to full Zillow listing (open in new tab)
            Heart icon - click to grey out heart and remove property from saved properties.

      Link to All saved properties
```
#### To Come Back To
- Saved searches index view
- Saved properties index view
- Ability to edit Saved Search info directly in Search Results view
- Making the form for saving a search a javascript window over the current search results.
- Map view options for:
    : Search Results - plot properties on map in relation to selected Anthro location.
    : Showing Anthro locations within user-specified search area
- Oauth for Zillow login
- Option to show more than 15 results per page
- Sign in as different user link in navigation
- Heart icon animation for saving and removing a property.
- Dropdown menu for Neighborhood selection in Target Search Area parameters to be populated by Zillow query based on city+state or zipcode entry.
- State field in Target Search Area form is autopopulated when user types in a city.
- Ability to edit saved searches. Generate Updated At date.
- Use paperclip gem for user profile pic.


### A First Attempt at Diagramming Models
![Models Diagram](/test/models_diagram_OLD.jpg)


### Misc. Process & Planning Resources
* notes in /test/*.*
* [trello board](https://trello.com/b/vwdbdeqr/wdi-project-1)
* modification to devise to allow login via username or email: [devise how-to](https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address)
* model diagram with [google drawing](https://docs.google.com/drawings/d/1TJ3znDtEZdmHfY1-UrZU4xTwd9SIDYrlGYYNCKXC7Mw/edit?usp=sharing)
* zillow api documentation [here](http://www.zillow.com/howto/api/APIOverview.htm)
* rubillow gem: documentation [here](http://www.rubydoc.info/gems/rubillow), github repo [here](https://github.com/synewaves/rubillow)

## modified concept & current user model

### Phase I
* User provides a market location. (city+state)
* User sees a list of neighborhoods in the market. (search index view)
* User can select a neighborhood to see demographics for that neighborhood. (result show view)

### Phase II
* User has option to save the neighborhood. (create new neighborhood & save)
* User can view list of all saved neighborhoods. (neighborhood index view)
* User can view details of saved neighborhoods. (show neighborhood view)

### Phase III
* User provides a market location.
* User sees a list of Anthropologie stores in that market.
* User can select a specific Anthro location.
* User sees a list of neighborhoods for that immediate location.

### Phase IV
* User selects a retailer from dropdown menu, i.e. Anthropologie, Club Monaco, etc.
* User provides a market location.
* User sees a list of stores for the retailer they initially selected.
* User has option to select specific categories of data sets to return.
* All other functionality remains.

### Phase V
* User selects specific retail location from an interactive map of all locations in specified market.
* User has option to select up to 5 retail locations to see side-by-side comparison of demographics.
* User has option to select more than one retailer.
* User can input a zipcode by iteslf or with a city+state to specify desired market location.
.
