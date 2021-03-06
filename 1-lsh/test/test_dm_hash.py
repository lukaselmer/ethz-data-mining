import unittest

from src import mapper


class DMHashTestCase(unittest.TestCase):
    def test_dm_hash0(self):
        d = mapper.DMHash(3);
        self.assertEqual(d.generate_hash([0]), 0)
        self.assertEqual(d.generate_hash([0]), 0)

    def test_dm_hash1(self):
        d = mapper.DMHash(3);
        self.assertEqual(d.generate_hash([1]), 1)
        self.assertEqual(d.generate_hash([2]), 2)

    def test_dm_hash2(self):
        d = mapper.DMHash(3);
        self.assertEqual(d.generate_hash([0, 1]), 3)
        self.assertEqual(d.generate_hash([0, 2]), 6)

    def test_dm_hash3(self):
        d = mapper.DMHash(3);
        self.assertEqual(d.generate_hash([1, 1]), 1+3)
        self.assertEqual(d.generate_hash([1, 2]), 1+6)

    def test_dm_hash4(self):
        d = mapper.DMHash(3);
        self.assertEqual(d.generate_hash([2, 1]), 2+3)
        self.assertEqual(d.generate_hash([2, 2]), 2+6)

if __name__ == '__main__':
    unittest.main()
