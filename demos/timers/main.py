import os
import random

from kaa.timers import Timer
from kaa.input import Keycode
from kaa.images import Sprite
from kaa.engine import Engine, Scene
from kaa.geometry import Vector, Polygon
from kaa.physics import BodyNode, SpaceNode

PYTHON_IMAGE_PATH = os.path.join('demos', 'assets', 'python_small.png')


class TtlNode(BodyNode):

    def __init__(self, **kwargs):
        ttl = kwargs.pop('ttl')
        self.ttl_timer = Timer(lambda c: self.delete())
        self.ttl_timer.start_global(ttl)
        super().__init__(**kwargs)


class MainScene(Scene):

    def __init__(self):
        self.camera.position = Vector(0., 0.)
        self.space = self.root.add_child(
            SpaceNode(position=Vector(0, 0))
        )
        self.python_image = Sprite(PYTHON_IMAGE_PATH)
        self.timer = Timer(self.spawn)
        self.timer.start(0.2, self)
        self.spawn()

    def spawn(self, context=None):
        angles = list(range(0, 360, 10))
        for angle in angles:
            self.space.add_child(
                TtlNode(
                    mass=1e10,
                    sprite=self.python_image,
                    angular_velocity=1,
                    ttl=random.uniform(2, 6),
                    shape=Polygon.from_box(Vector(20, 20)),
                    velocity=Vector.from_angle_degrees(angle) * 50
                )
            )
        if context:
            return context.interval

    def update(self, dt):
        for event in self.input.events():
            if event.keyboard_key:
                if event.keyboard_key.key_down == Keycode.q:
                    self.engine.quit()
                elif event.keyboard_key.key_down == Keycode.s:
                    if self.timer.is_running:
                        self.timer.stop()
                    else:
                        self.timer.start(0.2, self)


if __name__ == '__main__':
    with Engine(virtual_resolution=Vector(800, 600)) as engine:
        engine.run(MainScene())
