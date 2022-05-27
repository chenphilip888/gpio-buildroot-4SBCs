################################################################################
#
# gpio_test
#
################################################################################

GPIO_TEST_VERSION = 1.0
GPIO_TEST_SITE = ./package/gpio_test/src
GPIO_TEST_SITE_METHOD = local

define GPIO_TEST_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define GPIO_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/gpio_test $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
