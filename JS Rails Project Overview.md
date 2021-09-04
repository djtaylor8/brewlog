JS Rails Project Overview

# App Overview

Brew Log is an app that enables users to keep track of their favorite brews wherever they are. Trying a brewery for the first time and fell in love? Save it for later and write a few notes in your log. Think beer journal with added mapping capabilities. See all of those beers add up everywhere you go. 

# User Stories

## Users will be able to ...

-Create accounts
-Search and mark breweries or bottle shops using Mapbox
-Add notes to each saved location or beer
-View other user profiles/logs

## As a user, I can...

-Keep track of my beers, save locations to see where I've been, and interact with others by viewing their brew logs as well.

# Wireframing 

## Models: User, Entry

## User

### Attributes
-Name

### Associations
-has many entries

## Entry  

### Attributes
-Name
-Location
-Beers
-Notes
-User ID
   

### Associations
-belongs to user



# MVP (Minimum viable product)
-Uses Rails API backend, JS/HTML/CSS frontend
-All interactions between client and server handled via AJAX/JSON
-Uses OO JS
-Includes has many relationship (user has many entries)
-Use at least 3 AJAX calls between client and server, covering at least 2 CRUD actions


# Stretch Goals
-Add comments to posts
-Add a small like button
-Incorporate authorization/authentication
