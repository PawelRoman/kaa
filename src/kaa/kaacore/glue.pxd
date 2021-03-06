from cpython.ref cimport PyObject

from libcpp cimport bool


cdef extern from "extra/include/pythonic_callback.h":
    cdef cppclass CPythonicCallbackWrapper "PythonicCallbackWrapper":
        PyObject* py_callback
        bool is_weakref

        CPythonicCallbackWrapper()
        CPythonicCallbackWrapper(PyObject* py_callback)
        CPythonicCallbackWrapper(PyObject* py_callback, bool is_weakref)
        CPythonicCallbackWrapper(const CPythonicCallbackWrapper& wrapper)

    cdef cppclass CPythonicCallbackResult "PythonicCallbackResult" [T]:
        CPythonicCallbackResult()
        CPythonicCallbackResult(T)
        CPythonicCallbackResult(PyObject* exc_object)
        T unwrap_result() nogil
