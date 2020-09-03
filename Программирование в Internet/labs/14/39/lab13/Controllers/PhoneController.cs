using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using lab13.Models;
using System.Data.Entity;

namespace lab13.Controllers
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
            if(ModelState.IsValid)
            {
                context.Phones.Add(phone);
                context.SaveChanges();
                return View("Browse", context.Phones);
            }
            return View();
        }
        
        public ActionResult Update(int id)
        {
           Phone phone = context.Phones.Find(id);
           return View("Update", phone);
        }
        [HttpPost]
        public ActionResult Update(Phone phone)
        {
            if (ModelState.IsValid)
            {
                context.Entry(phone).State = EntityState.Modified;
                context.SaveChanges();
                return View("Browse", context.Phones);
            }
            else
            {
                ViewBag.ErrorTxt = "Update: ошибка";
                return View("Browse", context.Phones);
            }
        }
        public ActionResult Delete(int id)
        {
            Phone phone = context.Phones.Find(id);
            return View("Delete", phone);
        }
        [HttpPost]
        public ActionResult Delete(Phone phone)
        {
            phone = context.Phones.Find(phone.ID);
            if (phone!=null && ModelState.IsValid)
            {
                context.Phones.Remove(phone);
                context.SaveChanges();
                return View("Browse", context.Phones);
            }
            else
            {
                ViewBag.ErrorTxt = "Delete: ошибка";
                return View("Browse", context.Phones);
            }
        }

    }
}