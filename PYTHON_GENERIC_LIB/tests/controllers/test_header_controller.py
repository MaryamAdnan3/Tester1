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
from tester.controllers.header_controller import HeaderController


class HeaderControllerTests(ControllerTestBase):

    @classmethod
    def setUpClass(cls):
        super(HeaderControllerTests, cls).setUpClass()
        cls.response_catcher = HttpResponseCatcher()
        cls.controller = HeaderController(cls.config, cls.response_catcher)

    # Todo: Add description for test test_send_headers
    def test_send_headers(self):
        # Parameters for the API call
        custom_header = 'TestString'
        value = 'TestString'

        # Perform the API call through the SDK function
        result = self.controller.send_headers(custom_header, value)

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)
        
        # Test whether the captured response is as we expected
        self.assertIsNotNone(result)
        expected_body = APIHelper.json_deserialize('{"passed":true}')
        received_body = APIHelper.json_deserialize(self.response_catcher.response.text)
        self.assertTrue(TestHelper.match_body(expected_body, received_body, check_values = True))


