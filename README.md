Setup : 
- Install Python 3.X.X ( latest )
- Install RobotFramework </br>
-- `~ pip install robotframework-seleniumlibrary` </br>
-- `~ pip install robotframework-requests` </br>
-- `~ pip install webdriver-manager` </br>
  
- Install PyCharm </br>
-- Install IntelliBot ( latest ) plugin.

To Run : 
- Run the script: </br>
-- `~ python -m robot -d Results .\Tests\*.robot`
- pass the variable </br>
-- `~ python -m robot -d Results --variable START_URL:https://www.example.com .\Tests\*.robot`