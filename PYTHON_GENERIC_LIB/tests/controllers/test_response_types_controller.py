# -*- coding: utf-8 -*-

"""
tester

This file was automatically generated for Stamplay by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

import json
import dateutil.parser

from tests.controllers.controller_test_base import ControllerTestBase
from tests.test_helper import TestHelper
from tests.http_response_catcher import HttpResponseCatcher
from tester.api_helper import APIHelper
from tester.controllers.response_types_controller import ResponseTypesController


class ResponseTypesControllerTests(ControllerTestBase):

    @classmethod
    def setUpClass(cls):
        super(ResponseTypesControllerTests, cls).setUpClass()
        cls.response_catcher = HttpResponseCatcher()
        cls.controller = ResponseTypesController(cls.config, cls.response_catcher)

    # Todo: Add description for test test_get_date_array
    def test_get_date_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_date_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('["1994-02-13","1994-02-13"]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_date
    def test_get_date(self):

        # Perform the API call through the SDK function
        result = self.controller.get_date()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('1994-02-13', self.response_catcher.response.text)


    # Todo: Add description for test test_return_company_model
    def test_return_company_model(self):

        # Perform the API call through the SDK function
        result = self.controller.return_company_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"company name":"APIMatic","address":"nust","cell number":"0900786'
            '01"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_boss_model
    def test_return_boss_model(self):

        # Perform the API call through the SDK function
        result = self.controller.return_boss_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"company name":"APIMatic","address":"nust","cell number":"0900786'
            '01","first name":"Adeel","last name":"Ali","address_boss":"nust"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_employee_model
    def test_return_employee_model(self):

        # Perform the API call through the SDK function
        result = self.controller.return_employee_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"company name":"APIMatic","address":"nust","cell number":"0900786'
            '01","first name":"Nauman","last name":"Ali","id":"123456"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_developer_model
    def test_return_developer_model(self):

        # Perform the API call through the SDK function
        result = self.controller.return_developer_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"company name":"APIMatic","address":"nust","cell number":"0900786'
            '01","first name":"Nauman","last name":"Ali","id":"123456","team":"'
            'CORE","designation":"Manager","role":"Team Lead"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_tester_model
    def test_return_tester_model(self):

        # Perform the API call through the SDK function
        result = self.controller.return_tester_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"company name":"APIMatic","address":"nust","cell number":"0900786'
            '01","first name":"Muhammad","last name":"Farhan","id":"123456","te'
            'am":"Testing","designation":"Tester","role":"Testing"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_complex_1_object
    def test_return_complex_1_object(self):

        # Perform the API call through the SDK function
        result = self.controller.return_complex_1_object()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"medications":[{"aceInhibitors":[{"name":"lisinopril","strength":'
            '"10 mg Tab","dose":"1 tab","route":"PO","sig":"daily","pillCount":'
            '"#90","refills":"Refill 3"}],"antianginal":[{"name":"nitroglycerin'
            '","strength":"0.4 mg Sublingual Tab","dose":"1 tab","route":"SL","'
            'sig":"q15min PRN","pillCount":"#30","refills":"Refill 1"}],"antico'
            'agulants":[{"name":"warfarin sodium","strength":"3 mg Tab","dose":'
            '"1 tab","route":"PO","sig":"daily","pillCount":"#90","refills":"Re'
            'fill 3"}],"betaBlocker":[{"name":"metoprolol tartrate","strength":'
            '"25 mg Tab","dose":"1 tab","route":"PO","sig":"daily","pillCount":'
            '"#90","refills":"Refill 3"}],"diuretic":[{"name":"furosemide","str'
            'ength":"40 mg Tab","dose":"1 tab","route":"PO","sig":"daily","pill'
            'Count":"#90","refills":"Refill 3"}],"mineral":[{"name":"potassium '
            'chloride ER","strength":"10 mEq Tab","dose":"1 tab","route":"PO","'
            'sig":"daily","pillCount":"#90","refills":"Refill 3"}]}],"labs":[{"'
            'name":"Arterial Blood Gas","time":"Today","location":"Main Hospita'
            'l Lab"},{"name":"BMP","time":"Today","location":"Primary Care Clin'
            'ic"},{"name":"BNP","time":"3 Weeks","location":"Primary Care Clini'
            'c"},{"name":"BUN","time":"1 Year","location":"Primary Care Clinic"'
            '},{"name":"Cardiac Enzymes","time":"Today","location":"Primary Car'
            'e Clinic"},{"name":"CBC","time":"1 Year","location":"Primary Care '
            'Clinic"},{"name":"Creatinine","time":"1 Year","location":"Main Hos'
            'pital Lab"},{"name":"Electrolyte Panel","time":"1 Year","location"'
            ':"Primary Care Clinic"},{"name":"Glucose","time":"1 Year","locatio'
            'n":"Main Hospital Lab"},{"name":"PT/INR","time":"3 Weeks","locatio'
            'n":"Primary Care Clinic"},{"name":"PTT","time":"3 Weeks","location'
            '":"Coumadin Clinic"},{"name":"TSH","time":"1 Year","location":"Pri'
            'mary Care Clinic"}],"imaging":[{"name":"Chest X-Ray","time":"Today'
            '","location":"Main Hospital Radiology"},{"name":"Chest X-Ray","tim'
            'e":"Today","location":"Main Hospital Radiology"},{"name":"Chest X-'
            'Ray","time":"Today","location":"Main Hospital Radiology"}]}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_response_with_enum_object
    def test_return_response_with_enum_object(self):

        # Perform the API call through the SDK function
        result = self.controller.return_response_with_enums()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"paramFormat":"Template","optional":false,"type":"Long","constant'
            '":false,"isArray":false,"isStream":false,"isAttribute":false,"isMa'
            'p":false,"attributes":{"exclusiveMaximum":false,"exclusiveMinimum"'
            ':false,"id":"5a9fcb01caacc310dc6bab51"},"nullable":false,"id":"5a9'
            'fcb01caacc310dc6bab50","name":"petId","description":"ID of pet to '
            'update"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_complex_2_object
    def test_return_complex_2_object(self):

        # Perform the API call through the SDK function
        result = self.controller.return_complex_2_object()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"glossary":{"title":"example glossary","GlossDiv":{"title":"S","G'
            'lossList":{"GlossEntry":{"ID":"SGML","SortAs":"SGML","GlossTerm":"'
            'Standard Generalized Markup Language","Acronym":"SGML","Abbrev":"I'
            'SO 8879:1986","GlossDef":{"para":"A meta-markup language, used to '
            'create markup languages such as DocBook.","GlossSeeAlso":["GML","X'
            'ML"]},"GlossSee":"markup"}}}}}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_return_complex_3_object
    def test_return_complex_3_object(self):

        # Perform the API call through the SDK function
        result = self.controller.return_complex_3_object()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"documentId":"099cceda-38a8-4b01-87b9-a8f2007675d6","signers":[{"'
            'id":"1bef97d1-0704-4eb2-a490-a8f2007675db","url":"https://sign-tes'
            't.idfy.io/start?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzM4NCJ9.eyJrdmVyc'
            '2lvbiI6IjdmNzhjNzNkMmQ1MjQzZWRiYjdiNDI0MmI2MDE1MWU4IiwiZG9jaWQiOiI'
            'wOTljY2VkYS0zOGE4LTRiMDEtODdiOS1hOGYyMDA3Njc1ZDYiLCJhaWQiOiJjMGNlM'
            'TQ2OC1hYzk0LTRiMzQtODc2ZS1hODg1MDBjMmI5YTEiLCJsZyI6ImVuIiwiZXJyIjp'
            'udWxsLCJpZnIiOmZhbHNlLCJ3Ym1zZyI6ZmFsc2UsInNmaWQiOiIxYmVmOTdkMS0wN'
            'zA0LTRlYjItYTQ5MC1hOGYyMDA3Njc1ZGIiLCJ1cmxleHAiOm51bGwsImF0aCI6bnV'
            'sbCwiZHQiOiJUZXN0IGRvY3VtZW50IiwidmYiOmZhbHNlLCJhbiI6IklkZnkgU0RLI'
            'GRlbW8iLCJ0aCI6IlBpbmsiLCJzcCI6IkN1YmVzIiwiZG9tIjpudWxsLCJyZGlyIjp'
            'mYWxzZSwidXQiOiJ3ZWIiLCJ1dHYiOm51bGwsInNtIjoidGVzdEB0ZXN0LmNvbSJ9.'
            'Dyy2RSeR6dmU8qxOEi-2gEX3Gg7wry6JhkZIWOuADDdu5jJWidQLcxfJn_qAHNpb",'
            '"links":[],"externalSignerId":"uoiahsd321982983jhrmnec2wsadm32","r'
            'edirectSettings":{"redirectMode":"donot_redirect"},"signatureType"'
            ':{"mechanism":"pkisignature","onEacceptUseHandWrittenSignature":fa'
            'lse},"ui":{"dialogs":{"before":{"useCheckBox":false,"title":"Info"'
            ',"message":"Please read the contract on the next pages carefully. '
            'Pay some extra attention to paragraph 5."}},"language":"EN","styli'
            'ng":{"colorTheme":"Pink","spinner":"Cubes"}},"tags":[],"order":0,"'
            'required":false}],"status":{"documentStatus":"unsigned","completed'
            'Packages":[],"attachmentPackages":{}},"title":"Test document","des'
            'cription":"This is an important document","externalId":"ae7b9ca7-3'
            '839-4e0d-a070-9f14bffbbf55","dataToSign":{"fileName":"sample.txt",'
            '"convertToPDF":false},"contactDetails":{"email":"test@test.com","u'
            'rl":"https://idfy.io"},"advanced":{"tags":["develop","fun_with_doc'
            'uments"],"attachments":0,"requiredSignatures":0,"getSocialSecurity'
            'Number":false,"timeToLive":{"deadline":"2018-06-29T14:57:25Z","del'
            'eteAfterHours":1}}}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_get_long
    def test_get_long(self):

        # Perform the API call through the SDK function
        result = self.controller.get_long()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('5147483647', self.response_catcher.response.text)


    # Todo: Add description for test test_get_model
    def test_get_model(self):

        # Perform the API call through the SDK function
        result = self.controller.get_model()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 2'
            '0","uid":"123321","birthday":"1994-02-13","birthtime":"1994-02-13T'
            '14:01:54.9571247Z","salary":20000,"department":"Software Developme'
            'nt","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Fri'
            'day"],"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":5147'
            '483645,"address":"H # 531, S # 20","uid":"123321","birthday":"1994'
            '-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","salary":20000,'
            '"department":"Software Development","joiningDay":"Saturday","worki'
            'ngDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Futur'
            'e Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412'
            '","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247'
            'Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # '
            '20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-13'
            'T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","p'
            'romotedAt":1484719381},"dependents":[{"name":"Future Wife","age":5'
            '147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1'
            '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Fu'
            'ture Kid","age":5147483648,"address":"H # 531, S # 20","uid":"3123'
            '41","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95712'
            '47Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_get_string_enum_array
    def test_get_string_enum_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_string_enum_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('["Tuesday","Saturday","Wednesday","Monday","Sunday"]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_string_enum
    def test_get_string_enum(self):

        # Perform the API call through the SDK function
        result = self.controller.get_string_enum()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('Monday', self.response_catcher.response.text)


    # Todo: Add description for test test_get_model_array
    def test_get_model_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_model_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # '
            '20","uid":"123321","birthday":"1994-02-13","birthtime":"1994-02-13'
            'T14:01:54.9571247Z","salary":20000,"department":"Software Developm'
            'ent","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Fr'
            'iday"],"boss":{"personType":"Boss","name":"Zeeshan Ejaz","age":514'
            '7483645,"address":"H # 531, S # 20","uid":"123321","birthday":"199'
            '4-02-13","birthtime":"1994-02-13T14:01:54.9571247Z","salary":20000'
            ',"department":"Software Development","joiningDay":"Saturday","work'
            'ingDays":["Monday","Tuesday","Friday"],"dependents":[{"name":"Futu'
            're Wife","age":5147483649,"address":"H # 531, S # 20","uid":"12341'
            '2","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.957124'
            '7Z"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S #'
            ' 20","uid":"312341","birthday":"1994-02-13","birthtime":"1994-02-1'
            '3T14:01:54.9571247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","'
            'promotedAt":1484719381},"dependents":[{"name":"Future Wife","age":'
            '5147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"'
            '1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"F'
            'uture Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312'
            '341","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.9571'
            '247Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT"},{"name":"Shahid'
            ' Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":"12332'
            '1","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.957124'
            '7Z","salary":20000,"department":"Software Development","joiningDay'
            '":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"'
            'personType":"Boss","name":"Zeeshan Ejaz","age":5147483645,"address'
            '":"H # 531, S # 20","uid":"123321","birthday":"1994-02-13","birtht'
            'ime":"1994-02-13T14:01:54.9571247Z","salary":20000,"department":"S'
            'oftware Development","joiningDay":"Saturday","workingDays":["Monda'
            'y","Tuesday","Friday"],"dependents":[{"name":"Future Wife","age":5'
            '147483649,"address":"H # 531, S # 20","uid":"123412","birthday":"1'
            '994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Fu'
            'ture Kid","age":5147483648,"address":"H # 531, S # 20","uid":"3123'
            '41","birthday":"1994-02-13","birthtime":"1994-02-13T14:01:54.95712'
            '47Z"}],"hiredAt":"Sun, 06 Nov 1994 08:49:37 GMT","promotedAt":1484'
            '719381},"dependents":[{"name":"Future Wife","age":5147483649,"addr'
            'ess":"H # 531, S # 20","uid":"123412","birthday":"1994-02-13","bir'
            'thtime":"1994-02-13T14:01:54.9571247Z"},{"name":"Future Kid","age"'
            ':5147483648,"address":"H # 531, S # 20","uid":"312341","birthday":'
            '"1994-02-13","birthtime":"1994-02-13T14:01:54.9571247Z"}],"hiredAt'
            '":"Sun, 06 Nov 1994 08:49:37 GMT"}]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_get_int_enum
    def test_get_int_enum(self):

        # Perform the API call through the SDK function
        result = self.controller.get_int_enum()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('3', self.response_catcher.response.text)


    # Todo: Add description for test test_get_int_enum_array
    def test_get_int_enum_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_int_enum_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('[1,3,4,2,3]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_precision
    def test_get_precision(self):

        # Perform the API call through the SDK function
        result = self.controller.get_precision()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('4.999', self.response_catcher.response.text)


    # Todo: Add description for test test_get_binary
    def test_get_binary(self):

        # Perform the API call through the SDK function
        result = self.controller.get_binary()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual(TestHelper.get_file('http://localhost:3000/response/image').read(), self.response_catcher.response.text)


    # Todo: Add description for test test_get_integer
    def test_get_integer(self):

        # Perform the API call through the SDK function
        result = self.controller.get_integer()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('4', self.response_catcher.response.text)


    # Todo: Add description for test test_get_integer_array
    def test_get_integer_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_integer_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('[1,2,3,4,5]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_dynamic
    def test_get_dynamic(self):

        # Perform the API call through the SDK function
        result = self.controller.get_dynamic()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"method":"GET","body":{},"uploadCount":0}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_get_dynamic_array
    def test_get_dynamic_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_dynamic_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"method":"GET","body":{},"uploadCount":0}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


    # Todo: Add description for test test_get_3339_datetime
    def test_get_3339_datetime(self):

        # Perform the API call through the SDK function
        result = self.controller.get_3339_datetime()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('2016-03-13T12:52:32.123Z', self.response_catcher.response.text)


    # Todo: Add description for test test_get_3339_datetime_array
    def test_get_3339_datetime_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_3339_datetime_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('["2016-03-13T12:52:32.123Z","2016-03-13T12:52:32.123Z","2016-03-13'
            'T12:52:32.123Z"]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_boolean
    def test_get_boolean(self):

        # Perform the API call through the SDK function
        result = self.controller.get_boolean()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('true', self.response_catcher.response.text)


    # Todo: Add description for test test_get_boolean_array
    def test_get_boolean_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_boolean_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('[true,false,true,true,false]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_headers_allow_extra
    def test_get_headers_allow_extra(self):

        # Perform the API call through the SDK function
        self.controller.get_headers()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)

        # Test headers
        expected_headers = {}
        expected_headers['naumanali'] = None
        expected_headers['waseemhasan'] = None

        self.assertTrue(TestHelper.match_headers(expected_headers, self.response_catcher.response.headers))


    # Todo: Add description for test test_get_1123_date_time
    def test_get_1123_date_time(self):

        # Perform the API call through the SDK function
        result = self.controller.get_1123_date_time()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('Sun, 06 Nov 1994 08:49:37 GMT', self.response_catcher.response.text)


    # Todo: Add description for test test_get_unix_date_time
    def test_get_unix_date_time(self):

        # Perform the API call through the SDK function
        result = self.controller.get_unix_date_time()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        self.assertEqual('1484719381', self.response_catcher.response.text)


    # Todo: Add description for test test_get_1123_date_time_array
    def test_get_1123_date_time_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_1123_date_time_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('["Sun, 06 Nov 1994 08:49:37 GMT","Sun, 06 Nov 1994 08:49:37 GMT"]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_unix_date_time_array
    def test_get_unix_date_time_array(self):

        # Perform the API call through the SDK function
        result = self.controller.get_unix_date_time_array()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('[1484719381,1484719381]')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body))


    # Todo: Add description for test test_get_content_type_in_response
    def test_get_content_type_in_response(self):

        # Perform the API call through the SDK function
        self.controller.get_content_type_headers()

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)

        # Test headers
        expected_headers = {}
        expected_headers['content-type'] = 'application/responseType'
        expected_headers['accept'] = 'application/noTerm'
        expected_headers['accept-encoding'] = 'UTF-8'

        self.assertTrue(TestHelper.match_headers(expected_headers, self.response_catcher.response.headers))


