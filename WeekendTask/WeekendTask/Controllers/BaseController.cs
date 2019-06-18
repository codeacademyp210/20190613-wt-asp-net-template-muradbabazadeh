using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WeekendTask.Models;

namespace WeekendTask.Controllers
{
    public class BaseController : Controller
    {
       protected BackendBemaxEntities db;
       protected Setting settings;

        public BaseController()
        {
            db = new BackendBemaxEntities();
            settings = db.Settings.FirstOrDefault();
        }

    }
}