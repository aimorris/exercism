class Bob
  hey: (msg) ->

    return "Fine. Be that way!" if msg.trim() == ""
    return "Whoa, chill out!" if msg.match(/[a-z]/i) and msg.toUpperCase() == msg
    return "Sure." if msg.endsWith "?"
    return "Whatever."

module.exports = Bob
