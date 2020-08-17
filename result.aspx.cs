using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.DataVisualization.Charting;


public partial class result : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStudentChartInfo();
            getresult2();
            getresult3();
        }   
    }


    private void GetStudentChartInfo()  
        {  
            DataSet ds = new DataSet();  
            using (con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"))  
            {  
                con.Open();  
                 cmd = new OleDbCommand("SELECT answer as Name, COUNT(snm) AS Total  FROM tblsurvey1 GROUP BY answer", con);  
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);  
                da.Fill(ds);  
                con.Close();  
            }  
            string[] x = new string[ds.Tables[0].Rows.Count];
            int[] y = new int[ds.Tables[0].Rows.Count];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)  
            {
                x[i] = ds.Tables[0].Rows[i][0].ToString();
                y[i] = Convert.ToInt32(ds.Tables[0].Rows[i][1]);  
            }  
  
            EmployeeChartInfo.Series[0].Points.DataBindXY(x, y);  
            EmployeeChartInfo.Series[0].ChartType = SeriesChartType.Pie;  
            EmployeeChartInfo.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;  
            EmployeeChartInfo.Legends[0].Enabled = true;  
        }


    private void getresult2()
    {


        DataSet ds = new DataSet();
        using (con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"))
        {
            con.Open();
            cmd = new OleDbCommand("SELECT ans2 as Name, COUNT(snm) AS Total  FROM tblsurvey1 GROUP BY ans2", con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
        }
        string[] x = new string[ds.Tables[0].Rows.Count];
        int[] y = new int[ds.Tables[0].Rows.Count];
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            x[i] = ds.Tables[0].Rows[i][0].ToString();
            y[i] = Convert.ToInt32(ds.Tables[0].Rows[i][1]);
        }

        Chart2.Series[0].Points.DataBindXY(x, y);
        Chart2.Series[0].ChartType = SeriesChartType.Pie;
        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Legends[0].Enabled = true;
    
    }

    private void getresult3()
    {


        DataSet ds = new DataSet();
        using (con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:/project_2/DBER.mdb"))
        {
            con.Open();
            cmd = new OleDbCommand("SELECT ans3 as Name, COUNT(snm) AS Total  FROM tblsurvey1 GROUP BY ans3", con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();
        }
        string[] x = new string[ds.Tables[0].Rows.Count];
        int[] y = new int[ds.Tables[0].Rows.Count];
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            x[i] = ds.Tables[0].Rows[i][0].ToString();
            y[i] = Convert.ToInt32(ds.Tables[0].Rows[i][1]);
        }

        Chart3.Series[0].Points.DataBindXY(x, y);
        Chart3.Series[0].ChartType = SeriesChartType.Pie;
        Chart3.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart3.Legends[0].Enabled = true;

    }


   }   

