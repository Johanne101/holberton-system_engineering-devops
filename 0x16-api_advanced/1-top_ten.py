#!/usr/bin/python3
"""Fetches the title of the top 10 post in a subreddit"""
import json
import requests


def top_ten(subreddit):
    """ Fetches title of the top ten posts"""
    site = 'https://www.reddit.com/r/{}/top.json?limit=10'.format(subreddit)
    head = {'User-Agent': 'My Super Agent'}
    response = requests.get(site, headers=head)
    try:
        if response.status_code != 200:
            raise Exception('Invalid subreddit or a Redirection')
        else:
            posts = response.json()['data']['children']
            for post in posts:
                print(post['data']['title'])
    except:
        print('None')
