return {
  summary = 'Get extra information from the model file.',
  description = [[
    Returns extra information stored in the model file.  Currently this is only implemented for glTF
    models and returns the JSON string from the glTF or glb file.  The metadata can be used to get
    application-specific data or add support for glTF extensions not supported by LÖVR.
  ]],
  arguments = {},
  returns = {
    metadata = {
      type = 'string',
      description = 'The metadata from the model file.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'metadata' }
    }
  }
}
