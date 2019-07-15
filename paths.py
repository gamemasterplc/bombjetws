import os

try:
  from sys import _MEIPASS
  ROOT_PATH = _MEIPASS
except ImportError:
  ROOT_PATH = os.path.dirname(os.path.realpath(__file__))

ASM_PATH = os.path.join(ROOT_PATH, "asm")