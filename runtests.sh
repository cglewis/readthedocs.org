cd readthedocs
rm -rf rtd_tests/builds/
export PYTHONPATH=`pwd`:$PYTHONPATH
export DJANGO_SETTINGS_MODULE=settings.test
py.test $1
exit=$?
cd -
exit $exit
