

*** Settings ***
Documentation    Smoketest Spark execution
Library          OperatingSystem
Library          String

*** Test Cases ***

Run Sample Pi job
  ${classpath} =   Execute                     /opt/hadoop/bin/hadoop classpath
                   Set Environment variable    SPARK_DIST_CLASSPATH   ${classpath}
  ${output} =      Execute                     /opt/spark/bin/run-example org.apache.spark.examples.JavaSparkPi 10
                   Should Contain              ${output}           3.14

*** Keywords
Execute
    [arguments]                     ${command}
    ${rc}                           ${output} =                 Run And Return Rc And Output           ${command}
    Log                             ${output}
    Should Be Equal As Integers     ${rc}                       0
    [return]                        ${output}
