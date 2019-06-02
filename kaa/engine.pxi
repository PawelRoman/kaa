from contextlib import contextmanager

from libcpp.memory cimport unique_ptr

from .kaacore.scenes cimport CScene
from .kaacore.engine cimport CEngine, get_c_engine, create_c_engine


cdef unique_ptr[CEngine] _c_engine_instance
_c_engine_instance.reset(NULL)


@cython.final
cdef class _Engine:
    cdef _Window _window

    def __init__(self):
        self._window = _Window()

    cdef inline CEngine* _get_c_engine(self):
        cdef CEngine* c_engine = get_c_engine()
        if c_engine == NULL:
            raise ValueError("Engine is not running")
        return c_engine

    def run(self, Scene scene not None):
        self._get_c_engine().run(<CScene*>scene.c_scene)

    def quit(self):
        self._get_c_engine().quit()

    @property
    def window(self):
        return self._window

    def stop(self):
        if get_c_engine() == NULL:
            raise ValueError("Engine is stopped")
        assert _c_engine_instance != NULL

        _c_engine_instance.reset(NULL)

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        self.stop()


cdef _Engine _engine_wrapper = _Engine()


def Engine():
    global _c_engine_instance
    if get_c_engine() != NULL:
        raise ValueError("Engine was already started")
    assert _c_engine_instance == NULL

    _c_engine_instance = create_c_engine()
    return _engine_wrapper


def get_engine():
    if get_c_engine() != NULL:
        return _engine_wrapper
