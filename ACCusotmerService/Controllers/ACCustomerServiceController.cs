using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AcCustomerService.ViewModel;
using BAL;
using EntityModel;

namespace ACCusotmerService.Controllers
{
    public class AcCustomerServiceController : Controller
    {
        public ActionResult AcCustomerService()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetAcCustomerService()
        {
            try
            {
                var _objBAL = new ACCustomerServiceBAL();
                var lstEntity = new List<ACCustomerServiceEntity>();
                lstEntity = _objBAL.GetACCustomerService();

                if (lstEntity == null || lstEntity.Count <= 0) return Json(Enumerable.Empty<ACCustomerServiceViewModel>(), JsonRequestBehavior.AllowGet);
                var acCustomerServiceViewModels = lstEntity.Select(item => new ACCustomerServiceViewModel
                {
                    CustomerID = item.CustomerID,
                    FirstName = item.FirstName,
                    LastName = item.LastName,
                    Address = item.Address,
                    PhoneNumber = item.PhoneNumber,
                    DateCalled = item.DateCalled,
                    DateCreated = item.DateCreated
                });

                return Json(acCustomerServiceViewModels, JsonRequestBehavior.AllowGet);
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }

        [HttpPost]
        public ActionResult ACCustomerService(ACCustomerServiceViewModel viewModel)
        {
            try
            {
                var _objBAL = new ACCustomerServiceBAL();
                var entity = new ACCustomerServiceEntity
                {
                    FirstName = viewModel.FirstName,
                    LastName = viewModel.LastName,
                    Address = viewModel.Address,
                    PhoneNumber = viewModel.PhoneNumber,
                    DateCalled = viewModel.DateCalled,
                    DateCreated = DateTime.Now
                };

                _objBAL.InsertACCustomerService(entity);

                return RedirectToAction("AcCustomerService");
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }

    }
}