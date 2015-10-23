var redis = require("redis");

var pub = redis.createClient();

pub.publish("analytics", "page_viewed");