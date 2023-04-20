import pandas as pd
import os
import sys

# Variables #
test_excel_name = "stores.xlsx"

# Pass an argument in the CLI, in this case <argument_name>:<argument_value>.
if len(sys.argv) > 1:
        arg = sys.argv[1].split(":")[-1]
        print(f"Selected Store : {arg}")
        store_id = arg
else:
    print("No Store argument was passed")
    exit()

# Read Excel File
excel_path = os.path.join(".", "", "Resources", "Data", "", test_excel_name)
df = pd.read_excel(excel_path, sheet_name="Sheet1")

# excel_path = os.path.join(".", "", "Resources", "Data", "", test_excel_name)
# df = pd.read_excel(excel_path, sheet_name="Sheet1")

# Filter Data by Column A's Store ID
filtered_df = df[df["StoreID"] == int(store_id)]

# Check if StoreID exits in the spreadsheet.
if filtered_df.empty:
    print(f"StoreID : {store_id} does not exist in the spreadsheet.")
    exit()
else:
    url = filtered_df.iloc[0]["URL"]
    device_serial_number = filtered_df.iloc[0]["DeviceSerialNumber"]
    print(f"URL: {url}")
    print(f"DSN: {device_serial_number}")

exit()
