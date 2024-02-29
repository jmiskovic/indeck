return {
  description = 'The different eyes a Layer can show up in',
  values = {
    {
      name = 'both',
      description = 'The layer will show up in both eyes.'
    },
    {
      name = 'left',
      description = 'The layer will only show up in the left eye.'
    },
    {
      name = 'right',
      description = 'The layer will only show up in the right eye.'
    }
  },
  related = {
    'Layer:getViewMask',
    'Layer:setViewMask'
  }
}
