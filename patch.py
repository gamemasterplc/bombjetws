import re
import yaml
import os
import sys
import struct
from io import BytesIO
from collections import namedtuple
from collections import OrderedDict
import copy
from random import Random
from paths import *

# These Values are Hardcoded for Now

DOL_SECTION_OFFSETS = [
	0x100,
	0x2600,
	0,
	0,
	0,
	0,
	0,
	0x346000,
	0x355AC0,
	0x366700,
	0x366A80,
	0x366AA0,
	0x36F040,
	0x384F80,
	0x4088E0,
	0x40A8C0,
	0,
	0,
]

DOL_SECTION_ADDRESSES = [
	0x80003100,
	0x80025D00,
	0,
	0,
	0,
	0,
	0,
	0x80005600,
	0x800150C0,
	0x80369700,
	0x80369A80,
	0x80369AA0,
	0x80372040,
	0x80387F80,
	0x8049BE00,
	0x8049EDE0,
	0,
	0,
]

DOL_SECTION_SIZES = [
	0x2500,
	0x343A00,
	0,
	0,
	0,
	0,
	0,
	0xFAC0,
	0x10C40,
	0x380,
	0x20,
	0x85A0,
	0x15F40,
	0x83960,
	0x1FE0,
	0x6D40,
	0,
	0,
]

def address_to_offset(address):
  # Takes an address in one of the sections of Start.dol and converts it to an offset within Start.dol.
  for section_index in range(len(DOL_SECTION_OFFSETS)):
    section_offset = DOL_SECTION_OFFSETS[section_index]
    section_address = DOL_SECTION_ADDRESSES[section_index]
    section_size = DOL_SECTION_SIZES[section_index]
    
    if section_address <= address < section_address+section_size:
      offset = address - section_address + section_offset
      return offset
  
  raise Exception("Unknown address: %08X" % address)

def apply_patch(patch_name):
  with open(os.path.join(ASM_PATH, patch_name + "_diff.txt")) as f:
    diffs = yaml.safe_load(f)
  
  for file_path, diffs_for_file in diffs.items():
    
    for org_address, new_bytes in diffs_for_file.items():
      if file_path == "root/&&systemdata/Start.dol":
        offset = address_to_offset(org_address)
      else:
        offset = org_address
	  
      temp_path = os.path.normpath(file_path)
      with open(os.path.join(ROOT_PATH, temp_path), "r+b") as file:
        file.seek(offset)
        file.write(struct.pack("B"*len(new_bytes), *new_bytes))
        file.close()
  
def apply_asm_patches():
	apply_patch("custom_funcs")
	apply_patch("widescreen")