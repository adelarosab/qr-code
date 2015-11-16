Polymer
  is: "qr-code"

  properties:
    _computedURI:
      computed: "_computeURI(backgroundColor, color, data, ecc, _computedSize)"
    _computedSize:
      computed: "_computeSize(height, width)"

    backgroundColor:
      type: String
      value: "ffffff"
    color:
      type: String
      value: "000000"
    data:
      type: String
      value: ""
    ecc:
      type: String
      value: "L"
    height:
      type: Number
      value: 200
    width:
      type: Number
      value: 200

  _computeSize: (height, width) ->
    side = if height > width then height else width
    "#{side}x#{side}"

  _computeURI: (backgroundColor, color, data, ecc, _computedSize) ->
    "//api.qrserver.com/v1/create-qr-code/?bgcolor=#{backgroundColor}&color=#{color}&data=#{data}&ecc=#{ecc}&size=#{_computedSize}"
