return {
  summary = 'The base object.',
  description = [[
    The superclass of all LÖVR objects.

    In addition to the methods here, all objects have a `__tostring` metamethod that returns the
    name of the object's type.  So `tostring(object) == 'Blob'` will check if a LÖVR object is a
    Blob.
  ]],
  notes = 'Note that the functions here don\'t apply to any vector objects, see `Vectors`.'
}
