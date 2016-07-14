import unittest

from . context import module


class TestTools(unittest.TestCase):
    def test_all(self):
        assert module.func(1) == 2
