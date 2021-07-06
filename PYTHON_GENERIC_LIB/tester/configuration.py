# -*- coding: utf-8 -*-

"""
tester

This file was automatically generated for Stamplay by APIMATIC v3.0 (
 https://www.apimatic.io ).
"""

from enum import Enum
from tester.api_helper import APIHelper
from tester.http.requests_client import RequestsClient


class Environment(Enum):
    """An enum for SDK environments"""
    PRODUCTION = 0
    TESTING = 1


class Server(Enum):
    """An enum for API servers"""
    DEFAULT = 0
    AUTH_SERVER = 1


class Configuration(object):
    """A class used for configuring the SDK by a user.
    """

    @property
    def http_client(self):
        return self._http_client

    @property
    def timeout(self):
        return self._timeout

    @property
    def max_retries(self):
        return self._max_retries

    @property
    def backoff_factor(self):
        return self._backoff_factor

    @property
    def retry_statuses(self):
        return self._retry_statuses

    @property
    def retry_methods(self):
        return self._retry_methods

    @property
    def environment(self):
        return self._environment

    @property
    def port(self):
        return self._port

    @property
    def suites(self):
        return self._suites

    def __init__(
        self, timeout=60, max_retries=3, backoff_factor=2,
        retry_statuses=[408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
        retry_methods=['GET', 'PUT'], environment=Environment.TESTING,
        port='80', suites=1
    ):
        # The value to use for connection timeout
        self._timeout = timeout

        # The number of times to retry an endpoint call if it fails
        self._max_retries = max_retries

        # A backoff factor to apply between attempts after the second try.
        # urllib3 will sleep for:
        # `{backoff factor} * (2 ** ({number of total retries} - 1))`
        self._backoff_factor = backoff_factor

        # The http statuses on which retry is to be done
        self._retry_statuses = retry_statuses

        # The http methods on which retry is to be done
        self._retry_methods = retry_methods

        # Current API environment
        self._environment = environment

        # port value
        self._port = port

        # suites value
        self._suites = suites

        # The Http Client to use for making requests.
        self._http_client = self.create_http_client()

    def clone_with(self, timeout=None, max_retries=None, backoff_factor=None,
                   retry_statuses=None, retry_methods=None, environment=None,
                   port=None, suites=None):
        timeout = timeout or self.timeout
        max_retries = max_retries or self.max_retries
        backoff_factor = backoff_factor or self.backoff_factor
        retry_statuses = retry_statuses or self.retry_statuses
        retry_methods = retry_methods or self.retry_methods
        environment = environment or self.environment
        port = port or self.port
        suites = suites or self.suites

        return Configuration(timeout=timeout, max_retries=max_retries,
                             backoff_factor=backoff_factor,
                             retry_statuses=retry_statuses,
                             retry_methods=retry_methods,
                             environment=environment, port=port, suites=suites)

    def create_http_client(self):
        return RequestsClient(timeout=self.timeout,
                              max_retries=self.max_retries,
                              backoff_factor=self.backoff_factor,
                              retry_statuses=self.retry_statuses,
                              retry_methods=self.retry_methods)

    # All the environments the SDK can run in
    environments = {
        Environment.PRODUCTION: {
            Server.DEFAULT: 'http://apimatic.hopto.org:{suites}',
            Server.AUTH_SERVER: 'http://apimaticauth.hopto.org:3000'
        },
        Environment.TESTING: {
            Server.DEFAULT: 'http://localhost:3000',
            Server.AUTH_SERVER: 'http://apimaticauth.xhopto.org:3000'
        }
    }

    def get_base_uri(self, server=Server.DEFAULT):
        """Generates the appropriate base URI for the environment and the
        server.

        Args:
            server (Configuration.Server): The server enum for which the base
            URI is required.

        Returns:
            String: The base URI.

        """
        parameters = {
            "port": {'value': self.port, 'encode': False},
            "suites": {'value': self.suites, 'encode': False},
        }

        return APIHelper.append_url_with_template_parameters(
            self.environments[self.environment][server], parameters
        )
