
##############################################################
#
# LDD3
#
##############################################################

LDD3_VERSION = 7528d0a3f846325f979f2b4247a8a203b6059988
LDD3_SITE = git@github.com:cu-ecen-aeld/assignment-7-neginmadani.git
LDD3_SITE_METHOD = git
LDD3_GIT_SUBMODULES = YES

# this variable tells buildroot to go into these subdirectories and build 
# kernel modules using the kernel-module infrastructure.
LDD3_MODULE_SUBDIRS = misc-modules scull

define LDD3_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))