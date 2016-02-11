import opentuner
import argparse
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
    returnString = ''
    for i in self.flagList:
      counter[i] = 0

    for i in cfg['order']:
      if counter[i] < cfg[i]:
        returnString += i
      counter[i] += 1

    return opentuner.resultsdb.models.Result(time=len(returnString))

  def manipulator(self):
    m = manipulator.ConfigurationManipulator()
    flagListDuplicate = []
    print self.flagList
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
  
