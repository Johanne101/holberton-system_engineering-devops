API advanced
======

**Background Context**
``.md
Questions involving APIs are common for interviews. Sometimes they’re as simple as ‘write a Python script that queries a given endpoint’, sometimes they require you to use recursive functions and format/sort the results.

A great API to use for some practice is the Reddit API. There’s a lot of endpoints available, many that don’t require any form of authentication, and there’s tons of information to be parsed out and presented. Getting comfortable with API calls now can save you some face during technical interviews and even outside of the job market, you might find personal use cases to make your life a little bit easier.
``

# General Objectives

## Endpoints: **listings**
<p>
**listings**:

Many endpoints on reddit use the same protocol for controlling pagination and filtering.
These endpoints are called Listings and share five common parameters:
`after` / `before`, `limit`, `count`, and `show`.

Listings do not use page numbers because their content changes so frequently.
Instead, they allow you to view slices of the underlying data.
Listing JSON responses contain `after` and `before` fields
which are equivalent to the "next" and "prev" buttons on the site
and in combination with `count` can be used to page through the listing.

***The common parameters are as follows:***

- `after` / `before` - only one should be specified. these indicate the fullname of an item in the listing to use as the anchor point of the slice.
- `limit` - the maximum number of items to return in this slice of the listing.
- `count` - the number of items already seen in this listing. on the html site, the builder uses this to determine when to give values for `before` and `after` in the response.
- `show` - optional parameter; if `all` is passed, filters such as "hide links that I have voted on" will be disabled.

To page through a listing, start by fetching the first page without specifying values for after and count. The response will contain an after value which you can pass in the next request. It is a good idea, but not required, to send an updated value for count which should be the number of items already fetched.

</p>

## How to read API documentation to find the endpoints you’re looking for
## How to use an API with pagination
## How to parse JSON results from an API
## How to make a recursive API call
## How to sort a dictionary by value

# General Requirements


- Allowed editors: `vi`, `vim`, `emacs`
- All your files will be interpreted/compiled on Ubuntu 14.04 LTS using `python3` (version 3.4.3)
- All your files should end with a new line
- The first line of all your files should be exactly `#!/usr/bin/python3`
- Libraries imported in your Python files must be organized in alphabetical order
- A `README.md` file, at the root of the folder of the project, is mandatory
- Your code should use the `PEP 8` style
- All your files must be executable
- The length of your files will be tested using `wc`
- All your modules should have a documentation (``python3 -c 'print(__import__("my_module").__doc__)'``)
- You must use the Requests module for sending HTTP requests to the Reddit API


Resources
=====
***Read or watch:***

- [Reddit API Documentation](https://www.reddit.com/dev/api/)
- [Getting data from any API](https://rows.com/docs/getting-data-from-any-api)
  - [Python API: Table of Contents](https://realpython.com/python-api/)
  - [Requests Library: Python Guide](https://realpython.com/python-requests/)
- [Query String](https://en.wikipedia.org/wiki/Query_string)
- [GET/users/...](https://www.reddit.com/dev/api/#GET_users_{where})
- [GET/api/morechildren sort:Top](https://www.reddit.com/dev/api/#GET_api_morechildren)
