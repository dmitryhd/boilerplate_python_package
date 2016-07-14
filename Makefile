MODULE = module
TEST_RUNNER = py.test

all: test

test:
	py.test -q

test-p2:
	python2 -m pytest -q

install-rec:
	pip install -r requirements.txt

clean:
	find . -name '*.pyc' -exec rm -f {} +; find . -name '*~' -exec rm -f {} +

pylint:
	pylint $(MODULE) -r y -f html -d fixme -d locally-disabled -d invalid-name -d missing-docstring -d logging-format-interpolation > /tmp/pylint.report.html; google-chrome-stable /tmp/pylint.report.html

coverage:
	py.test -q --cov=module tests/


