define([], ->
  class DevelopmentConfiguration
    whitelist: ["self", "http://localhost:3000/**", "http://localhost:9000/**"]

#    signalSecure: false
#    signalUrl: window.location.hostname + ':8080'
#    # Use this method to get url in form of https://url based on whether or not it should be secured
#    signalFullUrl: ->
#      if @signalSecure then 'https://' + @signalUrl else 'http://' + @signalUrl
#    signalResource: 'signal'
#
#    log: false
#    media: {
##      audio: true
#      video: true
##        video:
##          {
##            mandatory: {},
##            optional: []
##          }
#
#    }
#
#    autoRequestMedia: false
#    peerConnectionConfig: {
#      iceServers: if browser == 'firefox' then [{"url": "stun:124.124.124.2"}] else [{"url": "stun:stun.l.google.com:19302"}]
#      peerConnectionContraints: {
#        optional: [
#          {'DtlsSrtpKeyAgreement': 'false'}
#        ]
#      }
#    }
#
#    sdpConstraints: {
#      'mandatory': {
#        'OfferToReceiveAudio': true
#        'OfferToReceiveVideo': true
#      }
#    }

  namespace 'streamCommander', (exports) ->
    exports.DevelopmentConfiguration = DevelopmentConfiguration
)

