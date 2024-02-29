using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using SourceCode.Models;
using SourceCode.Service;
using OfficeOpenXml;
using System.IO;
using System.Text;
using DocumentFormat.OpenXml.Office2013.Excel;

namespace SourceCode.Controllers
{
    [Authorize(Roles = "OrderManage")]
    public class OrderManageController : Controller
    {
        private IOrderService _orderService;
        private IOrderDetailService _orderDetailService;
        private IProductService _productService;
        private IUserService _userService;
        public OrderManageController(IOrderService orderService, IOrderDetailService orderDetailService, IProductService productService, IUserService userService)
        {
            _orderService = orderService;
            _orderDetailService = orderDetailService;
            _productService = productService;
            _userService = userService;
        }
        // GET: OrderManage
        public ActionResult NotApproval(int page = 1)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            IEnumerable<Order> orderList = _orderService.GetOrderNotApproval();
            PagedList<Order> orderListPaging = new PagedList<Order>(orderList, page, 10);

            return View(orderListPaging);
        }
        public ActionResult NotDelivery(int page = 1)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            IEnumerable<Order> orderList = _orderService.GetOrderNotDelivery();
            PagedList<Order> orderListPaging = new PagedList<Order>(orderList, page, 10);

            return View(orderListPaging);
        }

        public ActionResult DeliveredAndPaid(int page = 1)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            IEnumerable<Order> orderList = _orderService.GetOrderDeliveredAndPaid();
            PagedList<Order> orderListPaging = new PagedList<Order>(orderList, page, 10);

            return View(orderListPaging);
        }
        public ActionResult ApprovedAndNotDelivery(int page = 1)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            IEnumerable<Order> orderList = _orderService.ApprovedAndNotDelivery();
            PagedList<Order> orderListPaging = new PagedList<Order>(orderList, page, 10);

            return View(orderListPaging);
        }
        public ActionResult DeliveredList(int page = 1)
        {
            if (Session["User"] == null)
            {
                return RedirectToAction("Login", "Admin");
            }
            IEnumerable<Order> orderList = _orderService.GetDelivered();
            PagedList<Order> orderListPaging = new PagedList<Order>(orderList, page, 10);

            return View(orderListPaging);
        }
        [HttpGet]
        public ActionResult OrderApproval(int ID)
        {
            Order order = _orderService.Approved(ID);
            //Get email customer
            string Email = _userService.GetEmailByID(order.UserID);
            SentMail("Đơn hàng của bạn đã được duyệt", Email, "tranthu2132002@gmail.com", "oolisyauankmjgbt", "Vào đơn hàng của bạn để xem thông tin chi tiết");
            return RedirectToAction("ApprovedAndNotDelivery");
        }
        [HttpGet]
        public ActionResult Delivered(int ID)
        {
            Order order = _orderService.Delivered(ID);
            //Get email customer
            string Email = _userService.GetEmailByID(order.UserID);
            string urlBase = Request.Url.GetLeftPart(UriPartial.Authority) + Url.Content("~");
            SentMail("Đơn hàng của bạn đã được giao cho đối tác vận chuyển", Email, "tranthu2132002@gmail.com", "oolisyauankmjgbt", "Vào đơn hàng của bạn để xem thông tin chi tiết. Sau khi nhận được đơn hàng, bạn vui lòng click vào link sau để xác nhận đã nhận được đơn hàng từ đơn vị vận chuyển: " + urlBase + "/OrderManage/Received/" + ID + "");
            return RedirectToAction("DeliveredList");
        }
        [HttpGet]
        public ActionResult Detail(int ID)
        {
            if (ID == null)
            {
                return null;
            }
            IEnumerable<OrderDetail> orderDetails = _orderDetailService.GetByOrderID(ID);
            if (orderDetails == null)
            {
                return null;
            }
            ViewBag.OrderID = ID;
            Order order = _orderService.GetByID(ID);
            ViewBag.IsApproved = order.IsApproved;
            return View(orderDetails);
        }
        public void SentMail(string Title, string ToEmail, string FromEmail, string Password, string Content)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(ToEmail);
            mail.From = new MailAddress(ToEmail);
            mail.Subject = Title;
            mail.Body = Content;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(FromEmail, Password);
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Received(int ID)
        {
            Order order = _orderService.GetByID(ID);
            order.IsReceived = true;
            order.IsPaid = true;
            order.DateShip = DateTime.Now;
            _orderService.Update(order);
            IEnumerable<OrderDetail> orderDetail = _orderDetailService.GetByOrderID(order.ID);
            foreach (var item in orderDetail)
            {
                _productService.UpdateQuantity(item.ProductID, item.Quantity);
                _productService.UpdatePurchasedCount(item.ProductID, item.Quantity);
            }
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
       

public FileResult DownloadInvoice(int orderId)
    {
            Order order = _orderService.GetByID(orderId);
            IEnumerable<OrderDetail> orderDetails = _orderDetailService.GetByOrderID(orderId);
            // Đường dẫn đến file template Excel
            var templatePath = Server.MapPath("~/Content/Templates/Invoice.xlsx");

        // Kiểm tra xem file template có tồn tại không
        if (!System.IO.File.Exists(templatePath))
        {
            return File(Encoding.UTF8.GetBytes("Template not found"), "text/plain", "Error.txt");
        }

        // Tạo một đối tượng ExcelPackage từ file template
        using (var package = new ExcelPackage(new FileInfo(templatePath)))
        {
            // Lấy Sheet đầu tiên từ ExcelPackage
            var ws = package.Workbook.Worksheets[0];

                ws.Cells["A8"].Value = "Tên khách hàng: " + order.User.FullName;
                ws.Cells["A9"].Value = "Địa chỉ: " + order.User.Address;
                ws.Cells["A10"].Value = "Số điện thoại: " + order.User.PhoneNumber;
                ws.Cells["A11"].Value = "Email: " + order.User.Email;
                ws.Cells["F8"].Value = order.ID;
                ws.Cells["H8"].Value = order.DateOrder;
                int rowStart = 14;
                foreach (var item in orderDetails)
                {
                    ws.Cells[string.Format("A{0}", rowStart)].Value = item.Product.Name;
                    ws.Cells[string.Format("F{0}", rowStart)].Value = item.Quantity;
                    ws.Cells[string.Format("G{0}", rowStart)].Value = item.Price;
                    ws.Cells[String.Format("H{0}", rowStart)].Formula = string.Format("F{0}*G{0}", rowStart);
                    rowStart++;
                }

                // Lưu lại các thay đổi vào file Excel
                byte[] fileBytes = package.GetAsByteArray();
                return File(fileBytes, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Invoice.xlsx");
            }
    }

}
}