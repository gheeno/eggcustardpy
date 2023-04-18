import pandas as pd

# Define the name of the spreadsheet
path = 'Resources/Data/stores.xlsx'
spreadsheet_name = path

# Define the name of the sheet
sheet_name = 'Sheet1'

# Define the name of the columns in the sheet
store_id_col_name = 'StoreID'
url_col_name = 'URL'
device_serial_col_name = 'DeviceSerialNumber'

# Define the Store ID to look up
store_id = 3

# Load the spreadsheet into a Pandas dataframe
df = pd.read_excel(spreadsheet_name, sheet_name)

# Set the index of the dataframe to the StoreID column
df = df.set_index(store_id_col_name)

# Get the URL and DeviceSerialNumber for the specified StoreID
url = df.loc[store_id, url_col_name]
device_serial_number = df.loc[store_id, device_serial_col_name]

# Print the results
print(f'URL for Store ID {store_id}: {url}')
print(f'Device Serial Number for Store ID {store_id}: {device_serial_number}')
