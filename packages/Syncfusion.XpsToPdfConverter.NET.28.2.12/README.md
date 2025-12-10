### Syncfusion&reg; .NET Xps to PDF Converter 

Syncfusion&reg; [.NET XPS To PDF](https://help.syncfusion.com/file-formats/pdf/working-with-document-conversions?cs-save-lang=1&cs-lang=net%20#converting-xps-document-to-pdf?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) converter is a .NET standard PDF library used to convert XPS files to PDF Document in any .NET applications.

![Net XPS to PDF library](https://cdn.syncfusion.com/nuget-readme/fileformats/net-xps-to-pdf.png)

[Features overview](https://www.syncfusion.com/pdf-framework/net-core/pdf-library?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [Documentation](https://help.syncfusion.com/file-formats/pdf/overview?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [API Reference](https://help.syncfusion.com/cr/file-formats/Syncfusion.Pdf.html?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [Blogs](https://www.syncfusion.com/blogs/?s=pdf?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [Support](https://www.syncfusion.com/support/directtrac/incidents/newincident?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [Forums](https://www.syncfusion.com/forums?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | [Feedback](https://www.syncfusion.com/feedback/pdf?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget).

### System Requirements

*	[System Requirements](https://help.syncfusion.com/file-formats/installation-and-upgrade/system-requirements?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget).

### Getting Started
You can fetch the Syncfusion&reg; .NET Xps to PDF Converter NuGet by simply running `Install-Package Syncfusion.XpsToPdfConverter.NET` from the Package Manager Console in Visual Studio.

Try the following code example to create a hello world PDF document.

```csharp
//Initialize XPS to PDF converter.
XPSToPdfConverter converter = new XPSToPdfConverter();
//Open the XPS file as stream.
FileStream fileStream = new FileStream(“Input.xps", FileMode.Open, FileAccess.ReadWrite);
//Convert the XPS to PDF
PdfDocument document = converter.Convert(fileStream);
//Creating the stream object
MemoryStream stream = new MemoryStream(); 
//Save the document into stream.
document.Save(stream); 
//If the position is not set to '0' then the PDF will be empty.
stream.Position = 0;
//Close the documents.
document.Close(true); 
//Defining the ContentType for pdf file.
string contentType = "application/pdf";
//Define the file name. 
string fileName = "Output.pdf"; 
//Creates a FileContentResult object by using the file contents, content type, and file name. 
return File(stream, contentType, fileName);
```

### License
This is a commercial product and requires a paid license for possession or use. Syncfusion’s licensed software, including this component, is subject to the terms and conditions of [Syncfusion's EULA](https://www.syncfusion.com/eula/es?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget). You can purchase a license [here](https://www.syncfusion.com/sales/products?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) or start a free 30-day trial [here](https://www.syncfusion.com/account/manage-trials/start-trials?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget).

### About Syncfusion&reg;
Founded in 2001 and headquartered in Research Triangle Park, N.C., Syncfusion&reg; has more than 26,000+ customers and more than 1 million users, including large financial institutions, Fortune 500 companies, and global IT consultancies. 

Today, we provide 1600+ components and frameworks for web ([Blazor](https://www.syncfusion.com/blazor-components?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [ASP.NET Core](https://www.syncfusion.com/aspnet-core-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [ASP.NET MVC](https://www.syncfusion.com/aspnet-mvc-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [ASP.NET WebForms](https://www.syncfusion.com/jquery/aspnet-webforms-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [JavaScript](https://www.syncfusion.com/javascript-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [Angular](https://www.syncfusion.com/angular-ui-components?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [React](https://www.syncfusion.com/react-ui-components?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [Vue](https://www.syncfusion.com/vue-ui-components?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), and [Flutter](https://www.syncfusion.com/flutter-widgets?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget)), mobile ([Xamarin](https://www.syncfusion.com/xamarin-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [Flutter](https://www.syncfusion.com/flutter-widgets?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [UWP](https://www.syncfusion.com/uwp-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), and [JavaScript](https://www.syncfusion.com/javascript-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget)), and desktop development ([WinForms](https://www.syncfusion.com/winforms-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [WPF](https://www.syncfusion.com/wpf-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [WinUI(Preview)](https://www.syncfusion.com/winui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget), [Flutter](https://www.syncfusion.com/flutter-widgets?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) and [UWP](https://www.syncfusion.com/uwp-ui-controls?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget)). We provide ready-to-deploy enterprise software for dashboards, reports, data integration, and big data processing. Many customers have saved millions in licensing fees by deploying our software.

[sales@syncfusion.com](mailto:sales@syncfusion.com?Subject=Syncfusion%20ASPNET%20Core%20DocIO%20-%20NuGet) | [www.syncfusion.com](https://www.syncfusion.com?utm_source=nuget&utm_medium=listing&utm_campaign=net-pdf-nuget) | Toll Free: 1-888-9 DOTNET
