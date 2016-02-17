#!/usr/bin/python
import opentuner
import argparse
import sys
from opentuner.search import manipulator


parser = argparse.ArgumentParser(parents=opentuner.argparsers())

class LLVMFlagsTuner(opentuner.measurement.MeasurementInterface):
  def __init__(self, *pargs, **kwargs):
      super(LLVMFlagsTuner, self).__init__(*pargs, **kwargs)
      self.flagList = self.getArgs()


  def extract_LLVM_version(self):
    pass

  def run(self, desired_result, input, limit):
    cfg = desired_result.configuration.data
    counter = {}
    parameterList = ''
    for i in self.flagList:
      counter[i] = 0

    #we're iterating through the duplicate of flags here
    #and if it's appeared less than the specified # of times, we
    #add it to the parameter List
    for i in cfg['order']:
      if counter[i] < cfg[i]:
        parameterList += i + ' '
      counter[i] += 1
    
    #.c to .ll
    output = self.call_program('clang -O0 -S -emit-llvm matrixmultiply.cpp -o matrixmultiply.ll')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.ll to .bc
    output = self.call_program('opt ' + parameterList + ' matrixmultiply.ll -o matrixmultiply.bc')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.bc to #.s
    output = self.call_program('llc matrixmultiply.bc -o matrixmultiply.s')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.s to #.o
    output = self.call_program('as matrixmultiply.s -o matrixmultiply.o')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    #.o to .out
    output = self.call_program('clang -lstdc++ -lm matrixmultiply.out')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR')

    output = self.call_program('./matrixmultiply.out')
    if output['returncode'] != 0:
      print output
      return opentuner.resultsdb.models.Result(time=float('inf'), state='ERROR') 

    #parameterList represents the parameters we're passing into opt
    sys.exit()
    return opentuner.resultsdb.models.Result(time=output['time'])

  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    flagListDuplicate = []
    for i in range(3):
      flagListDuplicate.extend(self.flagList)

    for f in self.flagList:
      m.add_parameter(manipulator.IntegerParameter(f, 0, 3))
    m.add_parameter(manipulator.PermutationParameter('order', flagListDuplicate))
    
    return m

  def getArgs(self):
    output = self.call_program('opt --help')['stdout']
    output = output.split("\n")
    argsList = []
    readingArgs = False
    leadingSpaces = 0

    for i in output:
      if "Optimizations available:" in i:
        readingArgs = True
        leadingSpaces = len(i) - len(i.lstrip(' '))
        continue
      if readingArgs:
        if (len(i) - len(i.lstrip(' '))) > leadingSpaces:
          argsList.append(i.lstrip(' ').split(' ')[0])
        else:
          break

    return argsList
      
if __name__ == '__main__':
  opentuner.init_logging()
  args = parser.parse_args()
  #call_program()
  LLVMFlagsTuner.main(args)
  
