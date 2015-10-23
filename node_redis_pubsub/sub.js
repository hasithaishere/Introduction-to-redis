var redis = require("redis");

var sub = redis.createClient();

sub.on("subscribe", function(channel, count) {
    console.log("Subscribed to " + channel + ". Now subscribed to " + count + " channel(s).");
});

sub.on("message", function(channel, message) {
    console.log("Message from channel " + channel + ": " + message);
});

sub.subscribe("analytics");