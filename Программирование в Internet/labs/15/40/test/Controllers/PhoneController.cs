using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using test.Models;
using System.Data.Entity;


namespace test.Controllers
{
    public class PhoneController : Controller
    {
        PhonesContext context = new PhonesContext();
        // GET: Phone
        public ActionResult Browse()
        {
            return View("Browse", context.Phones);
        }
        
        public ActionResult Add()
        {
            Phone fm = new Phone();
            return View("Add", fm);
        }
        [HttpPost]
        public ActionResult Add(Phone phone)
        {
            if (phone.BDay < DateTime.Now.AddYears(-120))
            {
                ModelState.AddModelError("BDay", "Ошибка в дате рождения");
            }
            ViewBag.Message = RequestSender.add(phone, Request.Url.Authority);
            return View("Browse", context.Phones);
        }
        
        public ActionResult Update(int id)
        {
           Phone phone = context.Phones.Find(id);
           return View("Update", phone);
        }
        [HttpPost]
        public ActionResult Update(Phone phone)
        {
            ViewBag.Message = RequestSender.update(phone, Request.Url.Authority);
            return View("Browse", context.Phones);
        }
        public ActionResult Delete(int id)
        {
            Phone phone = context.Phones.Find(id);
            return View("Delete", phone);
        }
        [HttpPost]
        public ActionResult Delete(Phone phone)
        {
            ViewBag.Message = RequestSender.delete(phone.ID, Request.Url.Authority);
            return View("Browse", context.Phones);
        }

    }
}