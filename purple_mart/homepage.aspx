<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="purple_mart.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Resource/nav.css" rel="stylesheet" type="text/css" />
    <link href="Resource/homepage.css" rel="stylesheet" type="text/css" />
    <title>Purple Mart</title>
</head>


<body>
    <nav role='navigation'>
        <a data-page="home" class="active tag" href="#">Home</a>
        <a data-page="about" class="tag" href="#">About</a>
        <a data-page="clients" class="tag" href="#">Clients</a>
        <a data-page="contact" class="tag" href="#">Contact Us</a>
    </nav> 

    <div class="intro">
        <h1>hello world</h1>
    </div>
 

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>


</html>
