import pandas as pd
import os

store_id = input("Enter StoreID: ")
# store_id = 1

# Read Excel file
excel_path = os.path.join("..", "", "Data", "")
df = pd.read_excel(excel_path+"stores.xlsx", sheet_name="Sheet1")

# Filter data by StoreID
filtered_df = df[df["StoreID"] == int(store_id)]

# Check if StoreID exists in the spreadsheet
if filtered_df.empty:
    print(f"StoreID {store_id} does not exist.")
else:
    # Get URL and DeviceSerialNumber
    url = filtered_df.iloc[0]["URL"]
    device_serial_number = filtered_df.iloc[0]["DeviceSerialNumber"]

    # Print results
    print(f"URL: {url}")
    print(f"DeviceSerialNumber: {device_serial_number}")