# Author: Immanuel Bayer
# License: BSD 3 clause

cimport cpp_ffm
from cpp_ffm cimport Settings, Data, Model, fit
from libcpp.memory cimport nullptr

cdef class MyTest:
    cdef cpp_ffm.MyTest *_thisptr
    def __cinit__(self):
         self._thisptr = new cpp_ffm.MyTest()
    def __dealloc__(self):
        if self._thisptr != nullptr:
            del self._thisptr
    cpdef multi(self, a, b):
        return self._thisptr.multi(a,b)

# def test_my_test():
#     t = cpp_ffm.MyTest
#     print t.multi(6,6)

# cdef class FmData:
#     cdef cpp_ffm.Data *_thisptr
#     def __cinit__(self):
#         self._thisptr = new cpp_ffm.Data()
    #def __dealloc__(self):
       # if self._thisptr != nullptr:
       #     del self._thisptr
