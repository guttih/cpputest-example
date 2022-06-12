# we don’t want to use relative paths, so we set these variables
PROJECT_DIR=~/repos/personal/cpputest-example
SRC_DIR=$(PROJECT_DIR)/src
TEST_DIR=$(PROJECT_DIR)/tests
# specify where the source code and includes are located
INCLUDE_DIRS=$(SRC_DIR)/code
SRC_DIRS=$(SRC_DIR)/code

# specify where the test code is located
TEST_SRC_DIRS = $(TEST_DIR)

# what to call the test binary
TEST_TARGET=app
# where the cpputest library is located
 CPPUTEST_HOME=/usr/local

CPPUTEST_USE_GCOV=Y

$(info    PROJECT_DIR:$(PROJECT_DIR))
$(info    SRC_DIR:$(SRC_DIR))
$(info    TEST_DIR:$(TEST_DIR))
$(info    INCLUDE_DIRS:$(INCLUDE_DIRS))
$(info    SRC_DIRS:$(SRC_DIRS))
$(info    TEST_SRC_DIRS:$(TEST_SRC_DIRS))
$(info    TEST_TARGET:$(TEST_TARGET))
$(info    CPPUTEST_HOME:$(CPPUTEST_HOME))


# run MakefileWorker.mk with the variables defined here
include MakefileWorker.mk