# tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class QueryParamsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    @response_catcher = HttpResponseCatcher.new
    @controller = QueryParamsController.new CONFIG, http_call_back: @response_catcher
  end

  # Todo: Add description for test test_number_as_optional_in_query
  def test_number_as_optional_in_query()
    # Parameters for the API call
    number = 1
    number1 = 1

    # Perform the API call through the SDK function
    result = @controller.send_number_as_optional(number, number1: number1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_long_as_optional_in_query
  def test_long_as_optional_in_query()
    # Parameters for the API call
    long = 123123
    long1 = 123123

    # Perform the API call through the SDK function
    result = @controller.send_long_as_optional(long, long1: long1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_precision_as_optional_in_query
  def test_precision_as_optional_in_query()
    # Parameters for the API call
    precision = 1.23
    precision1 = 1.23

    # Perform the API call through the SDK function
    result = @controller.precision_as_optional(precision, precision1: precision1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_boolean_as_optional_in_query
  def test_boolean_as_optional_in_query()
    # Parameters for the API call
    boolean = true
    boolean1 = true

    # Perform the API call through the SDK function
    result = @controller.boolean_as_optional(boolean, boolean1: boolean1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc1123_datetime_as_optional_in_query
  def test_rfc1123_datetime_as_optional_in_query()
    # Parameters for the API call
    date_time = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')
    date_time1 = DateTime.httpdate('Sun, 06 Nov 1994 08:49:37 GMT')

    # Perform the API call through the SDK function
    result = @controller.rfc1123_datetime_as_optional(date_time, date_time1: date_time1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_rfc3339_as_optional_in_query
  def test_rfc3339_as_optional_in_query()
    # Parameters for the API call
    date_time = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')
    date_time1 = DateTime.rfc3339('1994-02-13T14:01:54.9571247Z')

    # Perform the API call through the SDK function
    result = @controller.rfc3339_datetime_as_optional(date_time, date_time1: date_time1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_date_as_optional_in_query
  def test_date_as_optional_in_query()
    # Parameters for the API call
    date = Date.parse('1994-02-13')
    date1 = Date.parse('1994-02-13')

    # Perform the API call through the SDK function
    result = @controller.send_date_as_optional(date, date1: date1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_as_optional_in_query
  def test_string_as_optional_in_query()
    # Parameters for the API call
    string = 'test'
    string1 = 'test'

    # Perform the API call through the SDK function
    result = @controller.send_string_as_optional(string, string1: string1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_unixtimestamp_as_optional_in_query
  def test_unixtimestamp_as_optional_in_query()
    # Parameters for the API call
    date_time = Time.at(1484719381).utc.to_datetime
    date_time1 = Time.at(1484719381).utc.to_datetime

    # Perform the API call through the SDK function
    result = @controller.unixdatetime_as_optional(date_time, date_time1: date_time1)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"passed":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end