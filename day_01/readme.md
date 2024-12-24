Santa's workshop is modernizing! Gone are the days of paper wish lists and manual sorting. The elves have implemented a new digital system to handle the millions of Christmas wishes they receive. However, Santa needs a way to quickly understand what each child wants and how to optimize workshop operations.

The challenge: Create a report that helps Santa and the elves understand:

* Each child's primary and backup gift choices
* Their color preferences
* How complex each gift is to make
* Which workshop department should handle the creation
* "Ho ho ho!" Santa chuckled, reviewing the new database. "This will help us work much more efficiently! But we need a query to make sense of all this data."

Unfortunately the elves stored the wishes in JSON, so you're going to have to parse out the children's wishes.

# The challenge

Create a report showing what gifts children want, with difficulty ratings and categorization.
The primary wish will be the first choice
The secondary wish will be the second choice
You can presume the favorite color is the first color in the wish list
Gift complexity can be mapped from the toy difficulty to make. Assume the following:
> Simple Gift = 1 <br />
> Moderate Gift = 2 <br />
> Complex Gift >= 3

We assign the workshop based on the primary wish's toy category. Assume the following:
> outdoor = Outside Workshop <br />
> educational = Learning Workshop <br />
> all other types = General Workshop

Order the list by name in ascending order.
Your answer should limit its return to only 5 rows
In the inputs below provide one row per input in the format, with no spaces and comma separation:
> name,primary_wish,backup_wish,favorite_color,color_count,gift_complexity,workshop_assignment
