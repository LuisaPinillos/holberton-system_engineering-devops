#!/usr/bin/python3
"""
Python script that, using this REST API,
for a given employee ID, returns information
about his/her TODO list progress.
"""
import requests
from sys import argv

if __name__ == "__main__":

    user = requests.get("http://jsonplaceholder.typicode.com/users/" +
                        argv[1]).json()
    todos = requests.get("http://jsonplaceholder.typicode.com/todos?userId=" +
                         argv[1]).json()
    done = requests.get("http://jsonplaceholder.typicode.com/todos?userId=" +
                        argv[1] + "&completed=true").json()

    print("Employee {} is done with tasks({}/{}):"
          .format(user.get("name"), len(done), len(todos)))
    for task in done:
        print("\t " + task.get("title"))
