# !/usr/bin/env python2.7
import threading
from time import sleep


class UCB():
    def __init__(self, i):
        self.y = i


class SimpleInputOutputThread(threading.Thread):
    def __init__(self, obj):
        threading.Thread.__init__(self)
        self.obj = obj
        self.i = 0
        self.res = 0
        self.setDaemon(True)
        self.inputReady = threading.Event()
        self.outputReady = threading.Event()
        self.outputReady.clear()
        self.start()

    def set_input(self, i):
        self.outputReady.clear()
        self.i = i
        self.inputReady.set()

    def get_res(self):
        self.outputReady.wait()
        return self.res

    def run(self):
        while True:
            self.inputReady.wait()
            self.inputReady.clear()
            self.do_calculation()
            self.outputReady.set()

    def do_calculation(self):
        self.res = self.obj.y * self.i
        self.i += 2
        sleep(1)


def f(cls):
    return cls[0].bla(cls[1])


if __name__ == '__main__':
    obj = UCB(10)
    threads = [SimpleInputOutputThread(obj), SimpleInputOutputThread(obj), SimpleInputOutputThread(obj)]
    i = 0

    for t in threads:
        i += 1
        t.set_input(i)
    for t in threads:
        print t.get_res()

    for t in threads:
        i += 1
        t.set_input(i)
    for t in threads:
        print t.get_res()

    for t in threads:
        i += 1
        t.set_input(i)
    for t in threads:
        print t.get_res()

    for t in threads:
        i += 1
        t.set_input(i)
        print t.get_res()



        # result = pool.apply_async(f, [100])
        # print result.get(timeout=1)
        #c = MyClass()

        #print pool.map(f, [[c, 1], [c, 2], [c, 3], [c, 5]])