# tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Tester
  # send date in model as exception class.
  class SendDateInModelAsException < APIException
    # TODO: Write general description for this method
    # @return [AddDateInGlobalException]
    attr_accessor :body

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @body = AddDateInGlobalException.from_hash(hash['body']) if hash['body']
    end
  end
end
