from .cat import api as cat_ns
from .dog import api as dog_ns

from flask import Blueprint
from flask_restx import Api



import pymongo
import sys



blueprint = Blueprint("api", __name__)

api = Api(
    blueprint, title="Generic ApiRest", version="1.0", description="Generic ApiRest"
)


api.add_namespace(cat_ns, path="/cat")
api.add_namespace(dog_ns, path="/dog")
