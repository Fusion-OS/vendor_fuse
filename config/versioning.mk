#
# Copyright (C) 2018-2019 The Pixel3ROM Project
# Copyright (C) 2020 Raphielscape LLC.
# Copyright (C) 2020 Team StormBreaker
# Copyright (C) 2020 FusionOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PLATFORM_FUSE_RELEASE := 6.0
PLATFORM_FUSE_VERSION := $(PLATFORM_FUSE_RELEASE).$(shell date +%m%d%H%M)

TARGET_PRODUCT_SHORT := $(subst fuse_,,$(TARGET_DEVICE))

ifeq ($(WITH_GAPPS),true)
    BUILD_TYPE := GAPPS
else
    BUILD_TYPE := VANILLA
endif

ifeq ($(FUSE_BUILD_VARIANT),OFFICIAL)
    PLATFORM_FUSE_VERSION := $(PLATFORM_FUSE_RELEASE)
    PROD_VERSION += fuse_$(TARGET_DEVICE)-$(PLATFORM_FUSE_RELEASE)-$(shell date +%m%d%H%M)-$(BUILD_TYPE)-OFFICIAL
else
    PLATFORM_FUSE_VERSION := $(PLATFORM_FUSE_RELEASE)
    PROD_VERSION += fuse_$(TARGET_DEVICE)-$(PLATFORM_FUSE_RELEASE)-$(shell date +%m%d%H%M)-$(BUILD_TYPE)-UNOFFICIAL
endif

PRODUCT_PRODUCT_PROPERTIES += \
    ro.system.fusion.version=$(PLATFORM_FUSE_VERSION)
