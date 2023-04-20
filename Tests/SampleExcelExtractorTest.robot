*** Settings ***
Library    Process

*** Variables ***
${STORE_ID}

*** Test Cases ***
Log the extracted data from the stores.xlsx spreadsheet.
    ${results}  Run Process   python   ./Resources/PythonScripts/ExcelReader.py    store:${STORE_ID}    shell=True
    Should Contain  ${results.stdout}   Selected Store : ${STORE_ID}
    Should Not Contain  ${results.stderr}   ERROR
    log    URL: ${results.stdout.splitlines()[1].replace('URL: ', '')}
    log    Device Serial Number: ${results.stdout.splitlines()[2].replace('DSN: ', '')}
