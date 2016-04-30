from sys import version
from platform import linux_distribution

from flask import Flask
application = Flask ( __name__ )

@ application . route ( "/" )
def hello () :
  return "Python %s - Flask & Uwsgi - Ubuntu %s." % ( version [0] , linux_distribution () [1] )

#Yeah, I love spaces!