require 'win32ole'

# Open Excel and set-up the Worksheets
excel = WIN32OLE.new('Excel.Application');
excel.visible = true;
workbook = excel.Workbooks.Add();
worksheet = workbook.Worksheets(1);
worksheet.Name = "Test Data";

# Add data to the cells of the table (maybe split this out later)
worksheet.Range("B2:E2").value = ["Pass","Fail","Blocked","Not Run"];
worksheet.Range("B3:C3").value = [5, 10];
worksheet.Range("D3").value = 8;
worksheet.Range("E3").value = 20;

# Select the range with date we want a chart for
range = worksheet.Range("B2:E3");
range.select

# Create a chart
chart = workbook.Charts.Add;
chart.Name = "Chart";
chart.HasTitle = true;
chart.ChartTitle.Text = "Test Results";
chart.SeriesCollection(1).Name = "No. of Test Cases";

# TO DO Add x and y axis titles

# TO DO Add     =CONCATENATE("Total Test Cases = ", <sum>)

workbook.SaveAs('C:\Dev\aptana\framework\FW3\TestResults.xls');
workbook.saved = true;

#excel.ActiveWorkbook.Close(0);
#excel.Quit();
