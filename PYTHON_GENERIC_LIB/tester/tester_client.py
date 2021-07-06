# -*- coding: utf-8 -*-

"""
tester

This file was automatically generated for Stamplay by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

from tester.decorators import lazy_property
from tester.configuration import Configuration
from tester.configuration import Environment
from tester.controllers.response_types_controller\
    import ResponseTypesController
from tester.controllers.form_params_controller import FormParamsController
from tester.controllers.body_params_controller import BodyParamsController
from tester.controllers.error_codes_controller import ErrorCodesController
from tester.controllers.query_param_controller import QueryParamController
from tester.controllers.echo_controller import EchoController
from tester.controllers.header_controller import HeaderController
from tester.controllers.template_params_controller\
    import TemplateParamsController
from tester.controllers.query_params_controller import QueryParamsController


class TesterClient(object):

    @lazy_property
    def response_types(self):
        return ResponseTypesController(self.config)

    @lazy_property
    def form_params(self):
        return FormParamsController(self.config)

    @lazy_property
    def body_params(self):
        return BodyParamsController(self.config)

    @lazy_property
    def error_codes(self):
        return ErrorCodesController(self.config)

    @lazy_property
    def query_param(self):
        return QueryParamController(self.config)

    @lazy_property
    def echo(self):
        return EchoController(self.config)

    @lazy_property
    def header(self):
        return HeaderController(self.config)

    @lazy_property
    def template_params(self):
        return TemplateParamsController(self.config)

    @lazy_property
    def query_params(self):
        return QueryParamsController(self.config)

    def __init__(self, timeout=60, max_retries=3, backoff_factor=2,
                 retry_statuses=[408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                 retry_methods=['GET', 'PUT'], environment=Environment.TESTING,
                 port='80', suites=1, config=None):
        if config is None:
            self.config = Configuration(timeout=timeout,
                                        max_retries=max_retries,
                                        backoff_factor=backoff_factor,
                                        retry_statuses=retry_statuses,
                                        retry_methods=retry_methods,
                                        environment=environment, port=port,
                                        suites=suites)
        else:
            self.config = config
