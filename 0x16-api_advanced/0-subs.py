#!/usr/bin/python3
"""
Function queries the Rddit API
and returns 'n' of subscribers
"""
import json
import pprint
import requests
# r = requests.Reddit(UNIQUQ_AND_DESCRIPTIVE_USERAGENT)
# s = r.get_subreddit('redditdev', fetch=True)
# pprint.pprint(vars(s))


def number_of_subscribers(subreddit):
    site = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    head = {'User-Agent': 'My Super Agetnt'}
    response = requests.get(site, headers=head)
    try:
        if response.status_code != 200:
            return 0
        return response.json()['data']['subscribers']
    except:
        return 0
