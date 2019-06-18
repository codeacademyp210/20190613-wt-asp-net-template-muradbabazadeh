using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WeekendTask.Models;

namespace WeekendTask.Controllers
{
    public class HomeController : BaseController
    {

        
        public ActionResult Index()
        {
            WiewModelHome model = new WiewModelHome();

            model.setting = db.Settings.FirstOrDefault();
            model.sliders = db.Sliders.ToList();
            model.sliderProjects = db.SliderProjects.ToList();
            model.blogPosts = db.BlogPosts.ToList();
            model.services = db.Services.ToList();
            model.testiminiols = db.Testiminiols.ToList();
            model.logos = db.Logoes.ToList();
            model.workings = db.Workings.ToList();
            model.chooses = db.Chooses.ToList();
            model.imgContents = db.ImgContents.ToList();

            return View(model);
        }

       
    }
}