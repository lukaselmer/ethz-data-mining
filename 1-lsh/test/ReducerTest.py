import unittest

from src import reducer

some_data_line1 = "3:195043920039\t111;123,1,34,45"
some_data_line2 = "3:195043920039\t222;123,1,34,45"
some_data_line3 = "3:195043920039\t333;123,1,34,45"
some_data_line4 = "3:995043920039\t444;4,5,6,7"
some_data_line5 = "3:995043920039\t555;4,5,6,7"

same_hash_other_shingles1 = "3:995043920039\t666;4,5,6,7"
# Note: only 75% matching, but generated same hash!
same_hash_other_shingles2 = "3:995043920039\t777;4,5,6,7"

class ReducerTestCase(unittest.TestCase):
    def test_line_parser(self):
        lp = reducer.LineParser()

        self.assertEqual(lp.parse_line(some_data_line1), ["3:195043920039", 111, [123,1,34,45]])

    def test_basic_reducer(self):
        r = reducer.Reducer([some_data_line1, some_data_line2, some_data_line3])

        res = []
        def print_result_injection(key, value):
            res.append([key, value])
        r.print_result = print_result_injection
        r.process()

        self.assertEqual(len(res), 3)
        k, v = res[0]
        self.assertEqual(k, 111)
        self.assertEqual(v, 222)
        k, v = res[1]
        self.assertEqual(k, 111)
        self.assertEqual(v, 333)
        k, v = res[2]
        self.assertEqual(k, 222)
        self.assertEqual(v, 333)

    def test_reducer_with_unmatching_line(self):
        r = reducer.Reducer([some_data_line1, some_data_line2, some_data_line3, some_data_line4])

        res = []
        def print_result_injection(key, value):
            res.append([key, value])
        r.print_result = print_result_injection
        r.process()

        self.assertEqual(len(res), 3)
        k, v = res[0]
        self.assertEqual(k, 111)
        self.assertEqual(v, 222)
        k, v = res[1]
        self.assertEqual(k, 111)
        self.assertEqual(v, 333)
        k, v = res[2]
        self.assertEqual(k, 222)
        self.assertEqual(v, 333)

    def test_reducer_with_two_pairs(self):
        r = reducer.Reducer([some_data_line1, some_data_line2, some_data_line3, some_data_line4, some_data_line5])

        res = []
        def print_result_injection(key, value):
            res.append([key, value])
        r.print_result = print_result_injection
        r.process()

        self.assertEqual(len(res), 4)
        k, v = res[0]
        self.assertEqual(k, 111)
        self.assertEqual(v, 222)
        k, v = res[1]
        self.assertEqual(k, 111)
        self.assertEqual(v, 333)
        k, v = res[2]
        self.assertEqual(k, 222)
        self.assertEqual(v, 333)
        k, v = res[3]
        self.assertEqual(k, 444)
        self.assertEqual(v, 555)

    def test_reducer_with_two_pairs_but_not_the_same(self):
        r = reducer.Reducer([same_hash_other_shingles1, same_hash_other_shingles2])

        res = []
        def print_result_injection(key, value):
            res.append([key, value])
        r.print_result = print_result_injection
        r.process()

        self.assertEqual(len(res), 0)

if __name__ == '__main__':
    unittest.main()

