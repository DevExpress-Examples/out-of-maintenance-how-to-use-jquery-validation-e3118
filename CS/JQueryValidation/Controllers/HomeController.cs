using System;
using System.Web;
using System.Web.Mvc;
using JQueryValidation.Models;
using DevExpress.Web.Mvc;

namespace JQueryValidation.Controllers {
    public class HomeController : Controller {
        public ActionResult Index() {
            return JQueryValidation();
        }
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult JQueryValidation() {
            return View("JQueryValidation", new ValidationData());
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult JQueryValidation([ModelBinder(typeof(DevExpressEditorsBinder))] ValidationData validationData) {
            if(ModelState.IsValid)
                return View("JQueryValidationSuccess");
            return View("JQueryValidation", validationData);
        }
        public ActionResult JQueryValidationSuccess() {
            return View("JQueryValidationSuccess");
        }
    }
}
