Feature: CapStore feature

Scenario: Change password scenario
Given User wants to change password and is logged in
When user clicks on change password
And enters the new password same as the old one
Then display the error message as 'invalid password'

When user clicks on change password
And enters the invalid new password(based on constraints)
Then display the error message as 'invalid password'

When user clicks on change password
And enters the valid new password
Then display 'password changed successfully' message

Scenario: Merchant and Admin wants to manage inventory
Given Admin wants to manage full inventory
When Admin clicks on remove item
And Enters the details of item to be removed
Then remove item from the inventory

When Admin clicks on add category
And Enters the details of category to be added
Then Add category to the inventory

When Admin clicks on remove category
And Enters the details of category to be removed
Then remove category from the inventory

Given Merchants wants to manage their own inventory
When Merchants clicks on add items
And Enters the details of item to be added
Then Add item to the inventory

When Merchants clicks on remove items
And Enters the details of item to be removed
Then remove item from the inventory

When Merchants clicks on update items
And Enters the details of items to be updated
Then update the items in inventory

Scenario: Search scenario 
Given Admin wants to search in CapStore

When Admin selects an option from a list of searches provided
And enters detail to be searched (Merchant name /Customer name/Product name)
Then display details of the searched element to admin

Given Merchant wants to search in its own inventory
When Merchant selects an option from a list of searches provided
And enters detail to be searched in its own inventory (Discount/Coupon/Product name)
Then display details of the searched element to merchant

Given Customer wants to search in CapStore
When Customer selects an option from a list of searches provided
And enters detail to be searched (Product name/Product type/Category/Brand)
Then display details of the searched element to customer

Scenario: Products and Banners images upload scenario
Given Merchant wants to upload image for products 
When Merchant clicks on a product
Then direct him to the product page
When Merchant clicks on 'Upload product image' option
And selects an image to upload
Then set that image as product image

When Merchant clicks on 'Upload product banner' option
And selects an image to upload
Then set that image as product banner
