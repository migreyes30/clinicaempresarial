<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public class Handler : IHttpHandler {

	
	public void ProcessRequest (HttpContext context) 
    {
        
        ManejadorCambio miManejadorImage = new ManejadorCambio();
        byte[] imageToShowInPage = miManejadorImage.imageToShow(context.Request.QueryString["ID"]);
        if (imageToShowInPage != null)
        {
            context.Response.BinaryWrite(imageToShowInPage);
        }
        else
        {

        }


    }
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    
	
}