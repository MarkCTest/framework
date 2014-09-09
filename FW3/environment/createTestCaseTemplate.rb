# Example Ruby-Selenium framework - v3.0

# This file is to CREAT the TEST CASE TEMPLATE
# Generate once to see what it looks like then SaveAs additional version via Excel
#----------------------------------------------------------------------------------

require 'win32ole'

# Open Excel and set-up the Worksheets
excel = WIN32OLE.new('Excel.Application');
excel.visible = true;
workbook = excel.Workbooks.Add();
worksheet = workbook.Worksheets(1);
worksheet.Name = "Test Case";

# Add data to the cells of the table (maybe split this out later)

worksheet.Range("B2").value = "Test Case Template"
worksheet.Range("B4").value = "Test Case Name"

worksheet.Range("B6:E6").value = ["Target","Object ID","Action","Expected Result"];
worksheet.Range("B7:E7").value = ["?", "?"];

# Save the Template
workbook.SaveAs('C:\Dev\aptana\framework\FW3\environment\TesCaseTemplate.xlsx'); # Change this location as needed
workbook.saved = true;

#excel.ActiveWorkbook.Close(0);
#excel.Quit();
