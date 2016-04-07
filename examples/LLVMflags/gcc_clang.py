#!/usr/bin/python
import opentuner
import argparse
import sys
import time
from opentuner.search import manipulator

timeout = 5 #seconds
source_name = 'raytracer.cpp'
parser = argparse.ArgumentParser(parents=opentuner.argparsers())
run_number = 0

class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)

  def run(self, desired_result, input, limit):
    global run_number
    if run_number == 0:
      output = self.call_program('clang -O2 -lm -lstdc++ ' + source_name + ' -o ' + 'test.out', limit = timeout)
      if output['returncode'] != 0:
        print "error at compilation"
        print output['stderr']
      run_number += 10

    if run_number == 1:
      output = self.call_program('g++ -O2 -lm ' + source_name + ' -o ' + 'test.out', limit = timeout)
      if output['returncode'] != 0:
        print "error at compilation"
        print output['stderr']
      run_number += 10

    output = self.call_program('./test.out', limit = timeout)
    if ('ERROR' in output['stdout']) or output['stderr'] != '' or output['returncode'] != 0:
      print 'error at running code\n'
      print output['stderr']
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')
    else:
      if run_number == 10:
        print 'running on clang took ' + str(output['time']) + ' seconds\n'
      elif run_number == 11:
        print 'running on g++ took ' + str(output['time']) + ' seconds\n'
      return opentuner.resultsdb.models.Result(time=output['time'])


  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    m.add_parameter(manipulator.IntegerParameter('test', 0, 1000000000))
    return m
  
if __name__ == '__main__':
  opentuner.init_logging()
  args = parser.parse_args()
  #call_program()
  LLVMFlagsTuner.main(args)
  
