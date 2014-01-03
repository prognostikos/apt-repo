name             'foo'
maintainer       'Matt Rohrer'
maintainer_email 'matt@prognostikos.com'
license          'public domain'
description      'just here to configure the apt repo builder'
version          '0.1.0'

recipe 'foo::default', ''

depends 'apt'
