using System;
using System.Collections.Generic;
using System.Web.Mvc;
using ACCusotmerService.ViewModel;
using BAL;
using EntityModel;

namespace ACCusotmerService.Controllers
{
    public class ACCustomerServiceController : Controller
    {
        public ActionResult ACCustomerService()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetACCustomerService()
        {
            try
            {
                var _objBAL = new BAL.ACCustomerServiceBAL();
                List<ACCustomerServiceEntity> lstEntity = new List<ACCustomerServiceEntity>();
                lstEntity = _objBAL.GetACCustomerService();

                ACCustomerServiceViewModel viewModel = null;
                List<ACCustomerServiceViewModel> lstViewModel = new List<ACCustomerServiceViewModel>();

                if (lstEntity != null && lstEntity.Count > 0)
                {
                    foreach (var item in lstEntity)
                    {
                        viewModel = new ACCustomerServiceViewModel();

                        viewModel.CustomerID = item.CustomerID;
                        viewModel.FirstName = item.FirstName;
                        viewModel.LastName = item.LastName;
                        viewModel.Address = item.Address;
                        viewModel.PhoneNumber = item.PhoneNumber;
                        viewModel.DateCalled = item.DateCalled;
                        viewModel.DateCreated = item.DateCreated;

                        lstViewModel.Add(viewModel);
                    }
                }

                return Json(lstViewModel, JsonRequestBehavior.AllowGet);
            }
            catch(Exception exc)
            {
                throw exc;
            }
        }
    }
}