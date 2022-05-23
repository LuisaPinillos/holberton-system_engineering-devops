#!/usr/bin/python3
"""Module with top_ten function"""
import requests


def top_ten(subreddit):
    """ show the top 10 posts in a subreddit """
    try:
        # Change the user agent
        headers = {'User-Agent': 'cmmolanos'}
        payload = {'t': 'all', 'limit': '10'}
        request = requests.get('https://api.reddit.com/r/{}/hot'.
                               format(subreddit), headers=headers,
                               params=payload)
        top_posts = request.json()

        for post in top_posts['data']['children']:
            print(post['data']['title'])

    except:
        print("None")
