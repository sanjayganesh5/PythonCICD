from unittest import TestCase
from dotenv import load_dotenv

print("Loading environment variables")
load_dotenv()

from ..src.main import main_method


class Test(TestCase):

    def test_main_method(self):
        res = main_method(123, name="sanjay")
        self.assertEqual(res, {"name": "sanjay"})
