# we don’t want to use relative paths, so we set these variables
PROJECT_DIR=~/repos/personal/cpputest-example
SRC_DIR=$(PROJECT_DIR)/src
TEST_DIR=$(PROJECT_DIR)/tests
CODE_DIR=$(SRC_DIR)/code
COVERAGE_DIR=$(TEST_DIR)/coverage

# specify where the source code and includes are located
INCLUDE_DIRS=$(SRC_DIR)/code
SRC_DIRS=$(SRC_DIR)/code

# specify where the tests code is located
TEST_SRC_DIRS = $(TEST_DIR)

TEST_TARGET=app
OUT=app
CPPUTEST_USE_GCOV=Y



$(info    PROJECT_DIR:$(PROJECT_DIR))
$(info    SRC_DIR:$(SRC_DIR))
$(info    TEST_DIR:$(TEST_DIR))
$(info    CODE_DIR:$(CODE_DIR))
$(info    COVERAGE_DIR:$(COVERAGE_DIR))

$(info    INCLUDE_DIRS:$(INCLUDE_DIRS))
$(info    TEST_SRC_DIRS:$(TEST_SRC_DIRS))
$(info    TEST_TARGET:$(TEST_TARGET))
$(info    OUT:$(OUT))
test:
	make -C $(TEST_DIR)

test_clean:
	make -C $(TEST_DIR) clean

code.o:
	gcc -c -I$(CODE_DIR) $(CODE_DIR)/code.cpp -o $(CODE_DIR)/code.o

main: code.o
	gcc -I$(CODE_DIR) $(CODE_DIR)/code.o $(SRC_DIR)/main.cpp -o $(OUT)

all: test main

clean_coverage:
	rm -rf $(COVERAGE_DIR)

coverage: clean_coverage
	mkdir $(COVERAGE_DIR); lcov --capture --directory . --output-file $(COVERAGE_DIR)/coverage.info; genhtml $(COVERAGE_DIR)/coverage.info --output-directory $(COVERAGE_DIR) && echo -ne "To open report give command\n  xdg-open $(COVERAGE_DIR)/index.html\n"

allcov: main test coverage
	xdg-open $(COVERAGE_DIR)/index.html

clean: test_clean clean_coverage
	rm $(SRC_DIR)/*.o $(CODE_DIR)/*.o $(OUT)

