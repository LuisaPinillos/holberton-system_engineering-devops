#!/usr/bin/python3
"""
Python script to export data in the CSV format.
"""
import requests
from sys import argv

if __name__ == "__main__":

    user = requests.get("http://jsonplaceholder.typicode.com/users/" +
                        argv[1]).json()
    todos = requests.get("http://jsonplaceholder.typicode.com/todos?userId=" +
                         argv[1]).json()

    userid = str(user.get("id"))
    with open(userid + ".csv", "w") as csvfile:
        username = user.get("username")
        userid = user.get("id")
        for task in todos:
            csvfile.write('"{}","{}","{}","{}"\n'.
                          format(userid, username, task.get("completed"),
                                 task.get("title")))
