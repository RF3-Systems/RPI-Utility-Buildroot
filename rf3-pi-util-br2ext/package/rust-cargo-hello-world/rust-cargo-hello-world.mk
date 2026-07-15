################################################################################
#
# foo
#
################################################################################

FOO_VERSION = 1.0
FOO_SOURCE = foo-$(FOO_VERSION).tar.gz
FOO_SITE = http://www.foosoftware.org/download
FOO_LICENSE = GPL-3.0+
FOO_LICENSE_FILES = COPYING

$(eval $(cargo-package))
