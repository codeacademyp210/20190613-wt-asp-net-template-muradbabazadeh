using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WeekendTask.Models
{
    public class WiewModelHome
    {
        public Setting setting { get; set; }
        public List<Slider> sliders { get; set; }
        public List<SliderProject> sliderProjects { get; set; }
        public List<BlogPost> blogPosts { get; set; }
        public List<Choose> chooses { get; set; }
        public List<Logo> logos { get; set; }
        public List<Service> services { get; set; }
        public List<Testiminiol> testiminiols { get; set; }
        public List<Working> workings { get; set; }
        public List<ImgContent> imgContents { get; set; }
    }
}