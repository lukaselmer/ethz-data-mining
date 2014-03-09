class DMHash:
    def __init__(self, max):
        self.max = max

    def generateHash(self, vector):
        def power(x): return pow(self.max, x)

        a = [power(i) * v for i, v in enumerate(vector)]
        return sum(a)

