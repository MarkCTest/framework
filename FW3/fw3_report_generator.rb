require 'win32ole'

excel = WIN32OLE.new('Excel.Application')
excel.visible = true
workbook = excel.Workbooks.Add();
worksheet = workbook.Worksheets(1);
worksheet.Range("A1:D1").value = ["Pass","Fail","Blocked","Not Run"];
worksheet.Range("A2:B2").value = [5.2, 10];
worksheet.Range("C2").value = 8;
worksheet.Range("D2").value = 20;

range = worksheet.Range("A1:D2");
range.select

chart = workbook.Charts.Add;
chart.HasTitle = true;
chart.ChartTitle.Text = "Test Results";
chart.SeriesCollection(1).name = "No. of Test Cases";

axis.HasTitle = true;
xlCategory = 1;
axis = chart.Axes(xlCategory);

chart.AxisTitle.Text = "Banana";

workbook.SaveAs('C:\Dev\ruby\TestResults.xls')
workbook.saved = true;

#excel.ActiveWorkbook.Close(0);
#excel.Quit();