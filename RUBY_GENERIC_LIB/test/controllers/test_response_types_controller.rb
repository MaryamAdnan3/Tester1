# tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class ResponseTypesControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    @response_catcher = HttpResponseCatcher.new
    @controller = ResponseTypesController.new CONFIG, http_call_back: @response_catcher
  end

  # Todo: Add description for test test_get_date_array
  def test_get_date_array()

    # Perform the API call through the SDK function
    result = @controller.get_date_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '["1994-02-13","1994-02-13"]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_date
  def test_get_date()

    # Perform the API call through the SDK function
    result = @controller.get_date()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('1994-02-13', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_return_company_model
  def test_return_company_model()

    # Perform the API call through the SDK function
    result = @controller.return_company_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"company name":"APIMatic","address":"nust","cell number":"090078601"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_boss_model
  def test_return_boss_model()

    # Perform the API call through the SDK function
    result = @controller.return_boss_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"company name":"APIMatic","address":"nust","cell number":"090078601","'\
      'first name":"Adeel","last name":"Ali","address_boss":"nust"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_employee_model
  def test_return_employee_model()

    # Perform the API call through the SDK function
    result = @controller.return_employee_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"company name":"APIMatic","address":"nust","cell number":"090078601","'\
      'first name":"Nauman","last name":"Ali","id":"123456"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_developer_model
  def test_return_developer_model()

    # Perform the API call through the SDK function
    result = @controller.return_developer_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"company name":"APIMatic","address":"nust","cell number":"090078601","'\
      'first name":"Nauman","last name":"Ali","id":"123456","team":"CORE","des'\
      'ignation":"Manager","role":"Team Lead"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_tester_model
  def test_return_tester_model()

    # Perform the API call through the SDK function
    result = @controller.return_tester_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"company name":"APIMatic","address":"nust","cell number":"090078601","'\
      'first name":"Muhammad","last name":"Farhan","id":"123456","team":"Testi'\
      'ng","designation":"Tester","role":"Testing"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_complex1_object
  def test_return_complex1_object()

    # Perform the API call through the SDK function
    result = @controller.return_complex1_object()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"medications":[{"aceInhibitors":[{"name":"lisinopril","strength":"10 m'\
      'g Tab","dose":"1 tab","route":"PO","sig":"daily","pillCount":"#90","ref'\
      'ills":"Refill 3"}],"antianginal":[{"name":"nitroglycerin","strength":"0'\
      '.4 mg Sublingual Tab","dose":"1 tab","route":"SL","sig":"q15min PRN","p'\
      'illCount":"#30","refills":"Refill 1"}],"anticoagulants":[{"name":"warfa'\
      'rin sodium","strength":"3 mg Tab","dose":"1 tab","route":"PO","sig":"da'\
      'ily","pillCount":"#90","refills":"Refill 3"}],"betaBlocker":[{"name":"m'\
      'etoprolol tartrate","strength":"25 mg Tab","dose":"1 tab","route":"PO",'\
      '"sig":"daily","pillCount":"#90","refills":"Refill 3"}],"diuretic":[{"na'\
      'me":"furosemide","strength":"40 mg Tab","dose":"1 tab","route":"PO","si'\
      'g":"daily","pillCount":"#90","refills":"Refill 3"}],"mineral":[{"name":'\
      '"potassium chloride ER","strength":"10 mEq Tab","dose":"1 tab","route":'\
      '"PO","sig":"daily","pillCount":"#90","refills":"Refill 3"}]}],"labs":[{'\
      '"name":"Arterial Blood Gas","time":"Today","location":"Main Hospital La'\
      'b"},{"name":"BMP","time":"Today","location":"Primary Care Clinic"},{"na'\
      'me":"BNP","time":"3 Weeks","location":"Primary Care Clinic"},{"name":"B'\
      'UN","time":"1 Year","location":"Primary Care Clinic"},{"name":"Cardiac '\
      'Enzymes","time":"Today","location":"Primary Care Clinic"},{"name":"CBC"'\
      ',"time":"1 Year","location":"Primary Care Clinic"},{"name":"Creatinine"'\
      ',"time":"1 Year","location":"Main Hospital Lab"},{"name":"Electrolyte P'\
      'anel","time":"1 Year","location":"Primary Care Clinic"},{"name":"Glucos'\
      'e","time":"1 Year","location":"Main Hospital Lab"},{"name":"PT/INR","ti'\
      'me":"3 Weeks","location":"Primary Care Clinic"},{"name":"PTT","time":"3'\
      ' Weeks","location":"Coumadin Clinic"},{"name":"TSH","time":"1 Year","lo'\
      'cation":"Primary Care Clinic"}],"imaging":[{"name":"Chest X-Ray","time"'\
      ':"Today","location":"Main Hospital Radiology"},{"name":"Chest X-Ray","t'\
      'ime":"Today","location":"Main Hospital Radiology"},{"name":"Chest X-Ray'\
      '","time":"Today","location":"Main Hospital Radiology"}]}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_response_with_enum_object
  def test_return_response_with_enum_object()

    # Perform the API call through the SDK function
    result = @controller.return_response_with_enums()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"paramFormat":"Template","optional":false,"type":"Long","constant":fal'\
      'se,"isArray":false,"isStream":false,"isAttribute":false,"isMap":false,"'\
      'attributes":{"exclusiveMaximum":false,"exclusiveMinimum":false,"id":"5a'\
      '9fcb01caacc310dc6bab51"},"nullable":false,"id":"5a9fcb01caacc310dc6bab5'\
      '0","name":"petId","description":"ID of pet to update"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_complex2_object
  def test_return_complex2_object()

    # Perform the API call through the SDK function
    result = @controller.return_complex2_object()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"glossary":{"title":"example glossary","GlossDiv":{"title":"S","GlossL'\
      'ist":{"GlossEntry":{"ID":"SGML","SortAs":"SGML","GlossTerm":"Standard G'\
      'eneralized Markup Language","Acronym":"SGML","Abbrev":"ISO 8879:1986","'\
      'GlossDef":{"para":"A meta-markup language, used to create markup langua'\
      'ges such as DocBook.","GlossSeeAlso":["GML","XML"]},"GlossSee":"markup"'\
      '}}}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_return_complex3_object
  def test_return_complex3_object()

    # Perform the API call through the SDK function
    result = @controller.return_complex3_object()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"documentId":"099cceda-38a8-4b01-87b9-a8f2007675d6","signers":[{"id":"'\
      '1bef97d1-0704-4eb2-a490-a8f2007675db","url":"https://sign-test.idfy.io/'\
      'start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc2lvbiI6IjdmNzhj'\
      'NzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiIwOTljY2VkYS0zOGE4LTR'\
      'iMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlMTQ2OC1hYzk0LTRiMzQtODc2ZS'\
      '1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjpudWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZ'\
      'yI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wNzA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIi'\
      'LCJ1cmxleHAiOm51bGwsImF0aCI6bnVsbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZ'\
      'hbHNlLCJhbiI6IklkZnkgU0RLIGRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG'\
      '9tIjpudWxsLCJyZGlyIjpmYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzd'\
      'EB0ZXN0LmNvbSJ9.Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxf'\
      'Jn_qAHNpb","links":[],"externalSignerId":"uoiahsd321982983jhrmnec2wsadm'\
      '32","redirectSettings":{"redirectMode":"donot_redirect"},"signatureType'\
      '":{"mechanism":"pkisignature","onEacceptUseHandWrittenSignature":false}'\
      ',"ui":{"dialogs":{"before":{"useCheckBox":false,"title":"Info","message'\
      '":"Please read the contract on the next pages carefully. Pay some extra'\
      ' attention to paragraph 5."}},"language":"EN","styling":{"colorTheme":"'\
      'Pink","spinner":"Cubes"}},"tags":[],"order":0,"required":false}],"statu'\
      's":{"documentStatus":"unsigned","completedPackages":[],"attachmentPacka'\
      'ges":{}},"title":"Test document","description":"This is an important do'\
      'cument","externalId":"ae7b9ca7-3839-4e0d-a070-9f14bffbbf55","dataToSign'\
      '":{"fileName":"sample.txt","convertToPDF":false},"contactDetails":{"ema'\
      'il":"test@test.com","url":"https://idfy.io"},"advanced":{"tags":["devel'\
      'op","fun_with_documents"],"attachments":0,"requiredSignatures":0,"getSo'\
      'cialSecurityNumber":false,"timeToLive":{"deadline":"2018-06-29T14:57:25'\
      'Z","deleteAfterHours":1}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_long
  def test_get_long()

    # Perform the API call through the SDK function
    result = @controller.get_long()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('5147483647', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_model
  def test_get_model()

    # Perform the API call through the SDK function
    result = @controller.get_model()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","u'\
      'id":"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9'\
      '571247Z","salary":20000,"department":"Software Development","joiningDay'\
      '":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"perso'\
      'nType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address":"H # 531'\
      ', S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"1994-02-1'\
      '3T14:01:54.9571247Z","salary":20000,"department":"Software Development"'\
      ',"joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"d'\
      'ependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, '\
      'S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13T'\
      '14:01:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H '\
      '# 531, S # 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994'\
      '-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","'\
      'promotedAt":1484719381},"dependents":[{"name":"Future Wife","age":51474'\
      '83649,"address":"H # 531, S # 20","uid":"123412","birthday":"1994-02-13'\
      '","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid","age'\
      '":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"199'\
      '4-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 0'\
      '6 Nov 1994 08:49:37 GMT"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_string_enum_array
  def test_get_string_enum_array()

    # Perform the API call through the SDK function
    result = @controller.get_string_enum_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '["Tuesday","Saturday","Wednesday","Monday","Sunday"]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_string_enum
  def test_get_string_enum()

    # Perform the API call through the SDK function
    result = @controller.get_string_enum()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('Monday', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_model_array
  def test_get_model_array()

    # Perform the API call through the SDK function
    result = @controller.get_model_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","'\
      'uid":"123321","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.'\
      '9571247Z","salary":20000,"department":"Software Development","joiningDa'\
      'y":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"pers'\
      'onType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address":"H # 53'\
      '1, S # 20","uid":"123321","birthday":"1994-02-13","birthtime":"1994-02-'\
      '13T14:01:54.9571247Z","salary":20000,"department":"Software Development'\
      '","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"'\
      'dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531,'\
      ' S # 20","uid":"123412","birthday":"1994-02-13","birthtime":"1994-02-13'\
      'T14:01:54.9571247Z"},{"name":"Future Kid","age":5147483648,"address":"H'\
      ' # 531, S # 20","uid":"312341","birthday":"1994-02-13","birthtime":"199'\
      '4-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT",'\
      '"promotedAt":1484719381},"dependents":[{"name":"Future Wife","age":5147'\
      '483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1994-02-1'\
      '3","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid","ag'\
      'e":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"19'\
      '94-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, '\
      '06 Nov 1994 08:49:37 GMT"},{"name":"Shahid Khaliq","age":5147483645,"ad'\
      'dress":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birtht'\
      'ime":"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"Softwa'\
      're Development","joiningDay":"Saturday","workingDays":["Monday","Tuesda'\
      'y","Friday"],"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":51'\
      '47483645,"address":"H # 531, S # 20","uid":"123321","birthday":"1994-02'\
      '-13","birthtime":"1994-02-13T14:01:54.9571247Z","salary":20000,"departm'\
      'ent":"Software Development","joiningDay":"Saturday","workingDays":["Mon'\
      'day","Tuesday","Friday"],"dependents":[{"name":"Future Wife","age":5147'\
      '483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1994-02-1'\
      '3","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid","ag'\
      'e":5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":"19'\
      '94-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt":"Sun, '\
      '06 Nov 1994 08:49:37 GMT","promotedAt":1484719381},"dependents":[{"name'\
      '":"Future Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123'\
      '412","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"'\
      '},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20","ui'\
      'd":"312341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95'\
      '71247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_int_enum
  def test_get_int_enum()

    # Perform the API call through the SDK function
    result = @controller.get_int_enum()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('3', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_int_enum_array
  def test_get_int_enum_array()

    # Perform the API call through the SDK function
    result = @controller.get_int_enum_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[1,3,4,2,3]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_precision
  def test_get_precision()

    # Perform the API call through the SDK function
    result = @controller.get_precision()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('4.999', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_binary
  def test_get_binary()

    # Perform the API call through the SDK function
    result = @controller.get_binary()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal(File.binread(TestHelper.get_file('http://localhost:3000/response/image')), @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_integer
  def test_get_integer()

    # Perform the API call through the SDK function
    result = @controller.get_integer()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('4', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_integer_array
  def test_get_integer_array()

    # Perform the API call through the SDK function
    result = @controller.get_integer_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[1,2,3,4,5]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_dynamic
  def test_get_dynamic()

    # Perform the API call through the SDK function
    result = @controller.get_dynamic()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"method":"GET","body":{},"uploadCount":0}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_dynamic_array
  def test_get_dynamic_array()

    # Perform the API call through the SDK function
    result = @controller.get_dynamic_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"method":"GET","body":{},"uploadCount":0}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_3339_datetime
  def test_get_3339_datetime()

    # Perform the API call through the SDK function
    result = @controller.get_3339_datetime()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('2016-03-13T12:52:32.123Z', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_3339_datetime_array
  def test_get_3339_datetime_array()

    # Perform the API call through the SDK function
    result = @controller.get_3339_datetime_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '["2016-03-13T12:52:32.123Z","2016-03-13T12:52:32.123Z","2016-03-13T12:5'\
      '2:32.123Z"]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_boolean
  def test_get_boolean()

    # Perform the API call through the SDK function
    result = @controller.get_boolean()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('true', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_boolean_array
  def test_get_boolean_array()

    # Perform the API call through the SDK function
    result = @controller.get_boolean_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[true,false,true,true,false]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_headers_allow_extra
  def test_get_headers_allow_extra()

    # Perform the API call through the SDK function
    @controller.get_headers()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['naumanali'] = nil
    expected_headers['waseemhasan'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Todo: Add description for test test_get_1123_date_time
  def test_get_1123_date_time()

    # Perform the API call through the SDK function
    result = @controller.get_1123_date_time()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('Sun, 06 Nov 1994 08:49:37 GMT', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_unix_date_time
  def test_get_unix_date_time()

    # Perform the API call through the SDK function
    result = @controller.get_unix_date_time()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('1484719381', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_1123_date_time_array
  def test_get_1123_date_time_array()

    # Perform the API call through the SDK function
    result = @controller.get_1123_date_time_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '["Sun, 06 Nov 1994 08:49:37 GMT","Sun, 06 Nov 1994 08:49:37 GMT"]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_unix_date_time_array
  def test_get_unix_date_time_array()

    # Perform the API call through the SDK function
    result = @controller.get_unix_date_time_array()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '[1484719381,1484719381]'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_content_type_in_response
  def test_get_content_type_in_response()

    # Perform the API call through the SDK function
    @controller.get_content_type_headers()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/responseType'
    expected_headers['accept'] = 'application/noTerm'
    expected_headers['accept-encoding'] = 'UTF-8'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
