# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rcj_soccer_sim/bot_measurements.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class bot_measurements(genpy.Message):
  _md5sum = "b801a7d32c725a671c00962bbd8b8a37"
  _type = "rcj_soccer_sim/bot_measurements"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time half_time_remaining
float64 pos_x
float64 pos_y
float64 theta
"""
  __slots__ = ['half_time_remaining','pos_x','pos_y','theta']
  _slot_types = ['time','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       half_time_remaining,pos_x,pos_y,theta

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bot_measurements, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.half_time_remaining is None:
        self.half_time_remaining = genpy.Time()
      if self.pos_x is None:
        self.pos_x = 0.
      if self.pos_y is None:
        self.pos_y = 0.
      if self.theta is None:
        self.theta = 0.
    else:
      self.half_time_remaining = genpy.Time()
      self.pos_x = 0.
      self.pos_y = 0.
      self.theta = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I3d().pack(_x.half_time_remaining.secs, _x.half_time_remaining.nsecs, _x.pos_x, _x.pos_y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.half_time_remaining is None:
        self.half_time_remaining = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.half_time_remaining.secs, _x.half_time_remaining.nsecs, _x.pos_x, _x.pos_y, _x.theta,) = _get_struct_2I3d().unpack(str[start:end])
      self.half_time_remaining.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I3d().pack(_x.half_time_remaining.secs, _x.half_time_remaining.nsecs, _x.pos_x, _x.pos_y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.half_time_remaining is None:
        self.half_time_remaining = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.half_time_remaining.secs, _x.half_time_remaining.nsecs, _x.pos_x, _x.pos_y, _x.theta,) = _get_struct_2I3d().unpack(str[start:end])
      self.half_time_remaining.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I3d = None
def _get_struct_2I3d():
    global _struct_2I3d
    if _struct_2I3d is None:
        _struct_2I3d = struct.Struct("<2I3d")
    return _struct_2I3d