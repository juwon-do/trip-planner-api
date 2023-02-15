# README

## Trip planner

## Description
Let people create and sign in to their account and plan their trip.

Minimum Viable Product
* A user can signup and login
* A user can see all their trips
* A user can create a trip
* A user can add places to a trip
* A user can see all places for a trip

Additional features
* A user can see their trip on a map
* A user can plan their trip budget

Showing only logged in user's data
```bash
if (localStorage.jwt === undefined)
```

When a user creates a new place trip, show action takes the address in and converts it to lat and long.
