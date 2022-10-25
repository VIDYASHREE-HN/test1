*** Settings ***
Library  pro1.py

*** Keywords ***
Put
    [Arguments]  ${var1}  ${var2}
    ${result}=  calculate_lcm  ${var1}  ${var2}
    [Return]  ${result}

hii
    [Arguments]  ${var} 
    ${output}=  year  ${var}
    [Return]  ${output}

*** Test Cases ***
test
    ${output}=  Put  2  3 
    BuiltIn.log to console  ${output}

ssss
    ${num}=  hii  ${2023}
    Log To Console  ${num}
    SHOULD BE EQUAL  ${num}  ${2023}
    ${a} =  set variable  5
    ${b} =  set variable  10
    ${mm} =  Evaluate  int(${a}) + int(${b})
    log to console  ${mm}
    Should Be Equal  ${mm}  ${15} 
