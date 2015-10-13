using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AugustCohortPresentationDemo.Models;

namespace AugustCohortPresentationDemo.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GenderBreakdown()
        {
            var viewModel = new GenderBreakdownVM();
            viewModel.Name = new List<string>();
            viewModel.Gender = new List<string>();

            //var testing = new List<string>(); 
            var connectionString = ConfigurationManager.ConnectionStrings["AugustCohort"].ConnectionString;

            //step1 make connection to DB 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT Name, Gender FROM AugustCohort ORDER BY Gender, Name";
                cmd.Connection = con; 

                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        //testing.Add(dr["Name"] as string);
                        viewModel.Name.Add(dr["Name"] as string);
                        if ((bool) dr["Gender"])
                        {
                            viewModel.Gender.Add("Female");
                        }
                        else
                        {
                            viewModel.Gender.Add("Male");
                        }
                    }
                }
            } 
            return View(viewModel); 
        }

        public ActionResult ResidentialStatus()
        {
            var viewModel = new ResidentialStatusVM();
            viewModel.Name = new List<string>();
            viewModel.Lodging = new List<string>();
            viewModel.OhioResid = new List<string>();

            //var testing = new List<string>(); 
            var connectionString = ConfigurationManager.ConnectionStrings["AugustCohort"].ConnectionString;

            //step1 make connection to DB 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT Name, Lodging, [Ohio Resident] FROM AugustCohort ORDER BY Name";
                cmd.Connection = con;

                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        //testing.Add(dr["Name"] as string);
                        viewModel.Name.Add(dr["Name"] as string);
                        if ((bool)dr["Ohio Resident"])
                        {
                            viewModel.OhioResid.Add("Ohio");
                        }
                        else
                        {
                            viewModel.OhioResid.Add("Non-Ohio");
                        }
                        viewModel.Lodging.Add(dr["Lodging"] as string);
                    }
                }
            }
            return View(viewModel);
        }

        public ActionResult GameNight()
        {
            var viewModel = new GameNightVM();
            viewModel.Name = new List<string>();
            viewModel.Attend = new List<string>();

            //var testing = new List<string>(); 
            var connectionString = ConfigurationManager.ConnectionStrings["AugustCohort"].ConnectionString;

            //step1 make connection to DB 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT Name, GameNight FROM AugustCohort ORDER BY Name";
                cmd.Connection = con;

                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        //testing.Add(dr["Name"] as string);
                        viewModel.Name.Add(dr["Name"] as string);
                        if ((bool)dr["GameNight"])
                        {
                            viewModel.Attend.Add("YES");
                        }
                        else
                        {
                            viewModel.Attend.Add("NO");
                        }
                    }
                }
            }
            return View(viewModel);
        }

        public ActionResult ProgrammingLevel()
        {
            var viewModel = new ProgrammingLevelVM();
            viewModel.Name = new List<string>();
            viewModel.Status = new List<string>();
            viewModel.Level = new List<int>();


            //var testing = new List<string>(); 
            var connectionString = ConfigurationManager.ConnectionStrings["AugustCohort"].ConnectionString;

            //step1 make connection to DB 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT [Programming Level], Status, Name FROM AugustCohort ORDER BY [Programming Level] DESC, Name";
                cmd.Connection = con;

                con.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        viewModel.Level.Add((int)dr["Programming Level"]);
                        viewModel.Status.Add(dr["Status"] as string);
                        viewModel.Name.Add(dr["Name"] as string);
                    }
                }
            }
            return View(viewModel);
        }


    }
}