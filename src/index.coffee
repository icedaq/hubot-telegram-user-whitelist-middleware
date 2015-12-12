# Configuration:
#   HUBOT_WHITELIST

reach = require('hoek').reach
path = require('path')

module.exports = (robot) ->

  # Establish whitelist
  whitelist = []
  if process.env.HUBOT_WHITELIST
    whitelist = process.env.HUBOT_WHITELIST.split(',')
  else 
    robot.logger.warning 'no users whitelisted' 

  unless Array.isArray(whitelist)
    robot.logger.error 'whitelist is not an array!'

  robot.receiveMiddleware (context, next, done) ->
    # Unless the user is in the whitelist
    unless reach(context, 'response.message.user.name') in whitelist
      # We're done
      context.response.message.finish()
      done()
    else
      robot.logger.debug 'Received message from whitelisted user.'
      next(done)
