import unittest

from src import mapper

some_data_line = "VIDEO_000000000 123 747 2776 7633 3906 2788 3336 3488 8544 313 1630 6090 5395 2686 8582 7170 6202 8285 2429 8517 2093 4149 396 711 5943 9430 2267 8625 8997 7605 4392 354 1110 1242 1467 2348 447 3774 8595 9649 1513 1230 2469 1008 4247 4853 2244 371 2985 5976 4148 2991 235 100 4939 9451 1959 163 8574 1648 7382 5587 5497 9845 6003 6023 8795 3665 8232 4580 181 9142 7412 2271 1101 1253 5954 627 7717 9115 7434 5809 2598 1037 2288 398 8364 7807 6443 3122 3292 8004 5448 15 9540 1155 5049 8677 6764 6944"


class MapperTestCase(unittest.TestCase):
    def test_mapper(self):
        m = mapper.Mapper(mapper.IDPermutation(), 1)

        res = []

        def xxx(key, value):
            res.append([key, value])

        m.print_res = xxx
        m.map(some_data_line)

        self.assertEqual(res, [52, 0])


if __name__ == '__main__':
    unittest.main()
