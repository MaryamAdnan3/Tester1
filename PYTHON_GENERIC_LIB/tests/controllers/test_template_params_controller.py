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
from tester.controllers.template_params_controller import TemplateParamsController


class TemplateParamsControllerTests(ControllerTestBase):

    @classmethod
    def setUpClass(cls):
        super(TemplateParamsControllerTests, cls).setUpClass()
        cls.response_catcher = HttpResponseCatcher()
        cls.controller = TemplateParamsController(cls.config, cls.response_catcher)

    # Todo: Add description for test test_send_string_array
    def test_send_string_array(self):
        # Parameters for the API call
        strings = APIHelper.json_deserialize('["abc","def"]')

        # Perform the API call through the SDK function
        result = self.controller.send_string_array(strings)

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)

    # Todo: Add description for test test_send_integer_array
    def test_send_integer_array(self):
        # Parameters for the API call
        integers = APIHelper.json_deserialize('[1,2,3,4,5]')

        # Perform the API call through the SDK function
        result = self.controller.send_integer_array(integers)

        # Test response code
        self.assertEquals(self.response_catcher.response.status_code, 200)

