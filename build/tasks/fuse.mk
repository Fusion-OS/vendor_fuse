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

TARGET_FILES_PACKAGE := $(PRODUCT_OUT)/$(PROD_VERSION).zip

.PHONY: fuse-prod
fuse-prod: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(TARGET_FILES_PACKAGE)
	@echo ""
	@echo "=============================================="
	@echo " ______         _              ____   _____"
	@echo "|  ____|       (_)            / __ \ / ____|"
	@echo "| |__ _   _ ___ _  ___  _ __ | |  | | (___  "
	@echo "|  __| | | / __| |/ _ \| '_ \| |  | |\___ \ "
	@echo "| |  | |_| \__ \ | (_) | | | | |__| |____) |"
	@echo "|_|   \__,_|___/_|\___/|_| |_|\____/|_____/ "
	@echo "=============================================="
	@echo ""
	@echo "Package Completed:"
	@echo "Zip: $(TARGET_FILES_PACKAGE)"
	@echo "Size: `du -h "$(TARGET_FILES_PACKAGE)" | cut -f1`"
	@echo "SHA256: `sha256sum $(TARGET_FILES_PACKAGE) | cut -f 1 -d " "`"
	@echo "MD5: `md5sum $(TARGET_FILES_PACKAGE) | cut -f 1 -d " "`"
	@echo "" >&2
