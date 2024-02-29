using ClosedXML.Excel;
using Microsoft.Reporting.WebForms;
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SourceCode.Models;
using SourceCode.Service;
using System.IO.Packaging;
using System.Text;
using DocumentFormat.OpenXml.Office2010.CustomUI;

namespace SourceCode.Controllers
{
    [Authorize(Roles = "StatisticManage")]
    public class StatisticManageController : Controller
    {
        private IOrderService _orderService;
        private IProductService _productService;
        private IUserService _userService;
        private ISupplierService _supplierService;
        private IAccessTimesCountService _accessTimesCountService;
        private IOrderDetailService _orderDetailService;
        private IImportCouponDetailService _importCouponDetailService;
        private IImportCouponService _importCouponService;
        public StatisticManageController(IOrderService orderService, IProductService productService, IUserService userService, ISupplierService supplierService, IAccessTimesCountService accessTimesCountService, IOrderDetailService orderDetailService, ImportCouponDetailService importCouponDetailService , ImportCouponService importCouponService)
        {
            _orderService = orderService;
            _productService = productService;
            _userService = userService;
            _supplierService = supplierService;
            _accessTimesCountService = accessTimesCountService;
            _orderDetailService = orderDetailService;
            _importCouponService = importCouponService;
            _importCouponDetailService = importCouponDetailService;



        }
        // GET: Statistic
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult StatisticStocking()
        {
            IEnumerable<Product> products = _productService.GetProductListStocking();
            return View(products);
        }
        [HttpGet]

        public void DownloadExcelStatisticStocking()
        {
            User user = Session["User"] as User;
            IEnumerable<Product> products = _productService.GetProductListStocking();
            var templatePath = Server.MapPath("~/Content/Templates/TonKho.xlsx");

            using (var package = new ExcelPackage(new FileInfo(templatePath)))
            {
                var ws = package.Workbook.Worksheets[0];
                ws.Cells["B4"].Value = "Người lập: " + user.FullName;
                ws.Cells["C4"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");

                int rowStart = 6;
                foreach (var item in products)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.ID;
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.Name;
                    int totalQuantity = item.ImportCouponDetails.Sum(detail => detail.Quantity);
                    ws.Cells[string.Format("D{0}", rowStart)].Value = totalQuantity;
                    ws.Cells[string.Format("E{0}", rowStart)].Value = item.ImportCouponDetails.Average(detail => detail.Price); ;
                    ws.Cells[string.Format("F{0}", rowStart)].Value = item.PurchasedCount;
                    ws.Cells[string.Format("G{0}", rowStart)].Value = item.PromotionPrice;
                    ws.Cells[string.Format("H{0}", rowStart)].Value = item.Quantity;
                    rowStart++;
                }

                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(package.GetAsByteArray());
                Response.End();
            }
        }

        [HttpGet]
        public ActionResult StatisticSupplier()
        {
            IEnumerable<Supplier> suppliers = _supplierService.GetSupplierList();
            return View(suppliers);
        }
        [HttpGet]

        public void DownloadExcelStatisticSupplier()
        {
            User user = Session["User"] as User;
            IEnumerable<Supplier> suppliers = _supplierService.GetSupplierList();
            var templatePath = Server.MapPath("~/Content/Templates/Supplier.xlsx");

            using (var package = new ExcelPackage(new FileInfo(templatePath)))
            {
                var ws = package.Workbook.Worksheets[0];
                ws.Cells["F2"].Value = "Người lập: " + user.FullName;
                ws.Cells["G2"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");

                int rowStart = 5;
                foreach (var item in suppliers)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.Name;
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.Address;
                    ws.Cells[string.Format("D{0}", rowStart)].Value = item.Email;
                    ws.Cells[string.Format("E{0}", rowStart)].Value = item.Phone;
                    if (item.IsActive)
                        ws.Cells[string.Format("F{0}", rowStart)].Value = "Đang hợp tác";
                    else
                    {
                        ws.Cells[string.Format("F{0}", rowStart)].Value = "Đã ngừng hợp tác";
                    }
                    ws.Cells[string.Format("G{0}", rowStart)].Value = item.TotalAmount;
                    rowStart++;

                }
                ws.Cells["A:AZ"].AutoFitColumns();

                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(package.GetAsByteArray());
                Response.End();
            }
        }
        //Supplier.xlsx
        [HttpGet]
        public ActionResult StatisticCustomer()
        {
            IEnumerable<User> users = _userService.GetUserListForStatistic();
            return View(users);
        }
        [HttpGet]

        public void DownloadExcelStatisticCustomer()
        {
            User user = Session["User"] as User;
            IEnumerable<User> users = _userService.GetUserListForStatistic();
            var templatePath = Server.MapPath("~/Content/Templates/Customer.xlsx");
            using (var packpage = new ExcelPackage(new FileInfo(templatePath)))
            {

                var ws = packpage.Workbook.Worksheets[0];
                ws.Cells["G2"].Value = "Người lập: " + user.FullName;
                ws.Cells["H2"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");
                int rowStart = 5;

                foreach (var item in users)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.ID;
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.FullName;
                    ws.Cells[string.Format("D{0}", rowStart)].Value = item.Address;
                    ws.Cells[string.Format("E{0}", rowStart)].Value = item.Email;
                    ws.Cells[string.Format("F{0}", rowStart)].Value = item.PhoneNumber;
                    ws.Cells[string.Format("G{0}", rowStart)].Value = item.AmountPurchased;
                    rowStart++;
                }
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(packpage.GetAsByteArray());
                Response.End();
            }

        }

        [HttpGet]

        public ActionResult StatisticProductSold(DateTime? from = null, DateTime? to = null, bool? viewAll = null)
        {
            IEnumerable<Product> products;

            if (viewAll == true)
            {
                // Nếu nhấn nút "Xem Tất Cả", không cần lọc theo thời gian
                products = _productService.GetProductListSold();
            }
            else if (from.HasValue && to.HasValue)
            {
                // Lọc theo thời gian nếu có giá trị from và to
                products = _productService.GetProductListSold(from.Value, to.Value);
            }
            else
            {
                // Không lọc, trả về toàn bộ danh sách
                products = _productService.GetProductListSold();
            }

            ViewBag.from = from;
            ViewBag.to = to;

            return View(products);
        }



        [HttpGet]
        public void DownloadExcelStatisticProductSold(DateTime? from, DateTime? to)
        {
            User user = Session["User"] as User;
            DateTime fromDate = from ?? DateTime.MinValue;
            DateTime toDate = to ?? DateTime.MaxValue;
            IEnumerable<Product> products = _productService.GetProductListSold(fromDate, toDate);

            var templatePath = Server.MapPath("~/Content/Templates/ProductSold.xlsx");
            using (var packpage = new ExcelPackage(new FileInfo(templatePath)))
            {
                var ws = packpage.Workbook.Worksheets[0];
                ws.Cells["E2"].Value = "Người lập: " + user.FullName + " - " + "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");
                ws.Cells["F2"].Value = " Từ ngày - Đến ngày: " + fromDate + " - " + toDate;

                int rowStart = 4;
                foreach (var item in products)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.Name;
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.PurchasedCount;
                    rowStart++;
                }
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(packpage.GetAsByteArray());
                Response.End();

            }

        }
        [HttpGet]

        public ActionResult StatisticOrder(DateTime? from = null, DateTime? to = null, bool? viewAll = null)
        {
            IEnumerable<Order> orders;

            if (viewAll == true)
            {
                // Nếu nhấn nút "Xem Tất Cả", không cần lọc theo thời gian
                orders = _orderService.GetListOrderStatistic();
            }
            else if (from.HasValue && to.HasValue)
            {
                // Lọc theo thời gian nếu có giá trị from và to
                orders = _orderService.GetListOrderStatistic(from.Value, to.Value);
            }
            else
            {
                // Không lọc, trả về toàn bộ danh sách
                orders = _orderService.GetListOrderStatistic();
            }

            ViewBag.from = from;
            ViewBag.to = to;

            return View(orders);
        }

        [HttpGet]
        public void DownloadExcelStatisticOrder(DateTime? from, DateTime? to)
        {
            User user = Session["User"] as User;
            DateTime fromDate = from ?? DateTime.MinValue;
            DateTime toDate = to ?? DateTime.MaxValue;
            IEnumerable<Order> orders = _orderService.GetListOrderStatistic(fromDate, toDate);
            var templatePath = Server.MapPath("~/Content/Templates/Order.xlsx");
            using (var packpage = new ExcelPackage(new FileInfo(templatePath)))
            {
                var ws = packpage.Workbook.Worksheets[0];
                ws.Cells["G2"].Value = "Người lập: " + user.FullName;
                ws.Cells["G3"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");
                ws.Cells["B2"].Value = "Từ: " + fromDate;
                ws.Cells["B3"].Value = "Đến: " + toDate;

                int rowStart = 5;
                foreach (var item in orders)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.ID;
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.User.FullName;
                    ws.Cells[string.Format("D{0}", rowStart)].Value = item.DateOrder.ToString("dd/MM/yyyy");
                    ws.Cells[string.Format("E{0}", rowStart)].Value = item.DateShip.ToString("dd/MM/yyyy");
                    ws.Cells[string.Format("F{0}", rowStart)].Value = item.Offer + "%";
                    if (item.IsReceived)
                        ws.Cells[string.Format("G{0}", rowStart)].Value = "Hoàn thành";
                    else
                    {
                        ws.Cells[string.Format("G{0}", rowStart)].Value = "Chưa hoàn thành";
                    }
                    ws.Cells[string.Format("H{0}", rowStart)].Value = item.Total;
                    rowStart++;
                }
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(packpage.GetAsByteArray());
                Response.End();
            }

        }
        [HttpGet]
        
        public ActionResult StatisticAccessTime(DateTime? from = null, DateTime? to = null,bool? viewAll = null)
        {
            IEnumerable<AccessTimesCount> accessTimesCounts;
            if (viewAll == true)
            {
                accessTimesCounts = _accessTimesCountService.GetListAccessTimeCountStatistic();
            }    
            else if  (from.HasValue && to.HasValue)
            {
                accessTimesCounts = _accessTimesCountService.GetListAccessTimeCountStatistic(from.Value,to.Value);
            }
            else
            {
                accessTimesCounts = _accessTimesCountService.GetListAccessTimeCountStatistic();
            }
            ViewBag.from = from;
            ViewBag.to = to;
            return View(accessTimesCounts);

        }
        [HttpGet]
        public void DownloadExcelStatisticStatisticAccessTime(DateTime? from, DateTime? to)
        {
            User user = Session["User"] as User;
            DateTime fromDate = from ?? DateTime.MinValue;
            DateTime toDate = to ?? DateTime.MaxValue;

            IEnumerable<AccessTimesCount> accessTimesCounts = _accessTimesCountService.GetListAccessTimeCountStatistic(fromDate, toDate);
            var templatePath = Server.MapPath("~/Content/Templates/AccessTime.xlsx");
            using (var package = new ExcelPackage(new FileInfo(templatePath)))
            {
                var ws = package.Workbook.Worksheets[0];

                //ws.Cells["A2"].Value = "Người lập" + user.FullName;

               // ws.Cells["A3"].Value = "Ngày lập" + DateTime.Now.ToString("dd/MM/yyyy");
                int rowStart = 4;
                foreach (var item in accessTimesCounts)
                {
                    ws.Cells[string.Format("B{0}", rowStart)].Value = item.Date.ToString("dd/MM/yyyy");
                    ws.Cells[string.Format("C{0}", rowStart)].Value = item.AccessTimes;
                    rowStart++;
                }
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(package.GetAsByteArray());
                Response.End();
            }
            
        }
        [HttpGet]

        public ActionResult StatisticReport()
        {
            IEnumerable<OrderDetail> orderDetails = _orderDetailService.GetDeliveredOrderDetails();

            // Duyệt qua từng OrderDetail để lấy giá từ ImportCouponDetailService và thiết lập giá trị ImportCouponPrice
            foreach (var orderDetail in orderDetails)
            {
                orderDetail.ImportCouponPrice = _importCouponDetailService.GetProductPrice(orderDetail.ProductID);
                orderDetail.totalValue = orderDetail.Quantity * orderDetail.Price;
                orderDetail.initialCapital = orderDetail.Quantity * orderDetail.ImportCouponPrice;
                orderDetail.profit = orderDetail.totalValue - orderDetail.initialCapital;
            }

            return View(orderDetails);
        }

        [HttpGet]
        public void DownloadExcelReport()
        {
            User user = Session["User"] as User;
            IEnumerable<OrderDetail> orderDetails = _orderDetailService.GetDeliveredOrderDetails();
            var templatePath = Server.MapPath("~/Content/Templates/Report.xlsx");
            using (var packpage = new ExcelPackage (new FileInfo(templatePath)))
            {
                var ws = packpage.Workbook.Worksheets[0];
                ws.Cells["H3"].Value = "Người lập: " + user.FullName;
                ws.Cells["H4"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");

                int rowStart = 6;
                foreach (var item in orderDetails)
                {

                    ws.Cells[$"B{rowStart}"].Value = item.Order.DateOrder.ToString("dd/MM/yyyy");


                    // Lấy thông tin sản phẩm từ bảng Product (Giả sử có quan hệ khóa ngoại ProductID trong OrderDetail)
                    string productName = item.Product != null ? item.Product.Name : "N/A";
                    ws.Cells[$"C{rowStart}"].Value = productName;
                    string productCategory = item.Product != null && item.Product.ProductCategory != null ? item.Product.ProductCategory.Name : "N/A";
                    ws.Cells[$"D{rowStart}"].Value = productCategory;

                    ws.Cells[$"E{rowStart}"].Value = item.Quantity;
                    ws.Cells[$"F{rowStart}"].Value = item.Price;

                    // Lấy giá từ hàm GetProductPrice
                    decimal importCouponPrice = _importCouponDetailService.GetProductPrice(item.ProductID);
                    ws.Cells[$"G{rowStart}"].Value = importCouponPrice;
                    // Tính doanh thu
                    decimal totalValue = (decimal)item.Quantity * item.Price;
                    ws.Cells[$"H{rowStart}"].Value = totalValue;
                    // Vốn ban đầu
                    decimal initialCapital = item.Quantity * importCouponPrice;
                    ws.Cells[$"I{rowStart}"].Value = initialCapital;
                    // Tình lợi nhuânj
                    decimal profit = totalValue - initialCapital;
                    ws.Cells[$"J{rowStart}"].Value = profit;
                    rowStart++;
                }
                Response.Clear();
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.BinaryWrite(packpage.GetAsByteArray());
                Response.End();

            }
            
        }
        [HttpGet]
        public ActionResult StatisticImportCoupon(DateTime? from = null, DateTime? to = null, bool? viewAll = null)
        {
            IEnumerable<ImportCoupon> importCoupons;
            IEnumerable<ImportCouponDetail> importCouponDetails;

            if (viewAll == true)
            {
                // Nếu nhấn nút "Xem Tất Cả", không cần lọc theo thời gian
                importCoupons = _importCouponService.GetListImportCouponStatistic();

            }
            else if (from.HasValue && to.HasValue)
            {
                // Lọc theo thời gian nếu có giá trị from và to
                importCoupons = _importCouponService.GetListImportCouponStatistic(from.Value, to.Value);
            }
            else
            {
                // Không lọc, trả về toàn bộ danh sách
                importCoupons = _importCouponService.GetListImportCouponStatistic();
            }

            ViewBag.from = from;
            ViewBag.to = to;

            return View(importCoupons);
        }


        [HttpGet]
        public void DownloadExcelStatisticImportCoupon(DateTime? from, DateTime? to)
{
    User user = Session["User"] as User;
    DateTime fromDate = from ?? DateTime.MinValue;
    DateTime toDate = to ?? DateTime.MaxValue;
    IEnumerable<ImportCoupon> importCoupons = _importCouponService.GetListImportCouponStatistic(fromDate, toDate);
    var templatePath = Server.MapPath("~/Content/Templates/ImportCoupon.xlsx");
    using (var package = new ExcelPackage(new FileInfo(templatePath)))
    {
        var worksheet = package.Workbook.Worksheets[0];

        worksheet.Cells["B2"].Value = "Người lập: " + user.FullName;
        worksheet.Cells["B3"].Value = "Ngày lập: " + DateTime.Now.ToString("dd/MM/yyyy");
        worksheet.Cells["E4"].Value = "Từ: " + fromDate.ToString("dd/MM/yyyy");
        worksheet.Cells["F4"].Value = "Đến: " + toDate.ToString("dd/MM/yyyy");

        int rowStart = 7;
        foreach (var item in importCoupons)
        {
            worksheet.Cells[string.Format("B{0}", rowStart)].Value = item.ID;
            worksheet.Cells[string.Format("C{0}", rowStart)].Value = item.Supplier.Name;
            worksheet.Cells[string.Format("D{0}", rowStart)].Value = item.User.FullName;
            worksheet.Cells[string.Format("E{0}", rowStart)].Value = item.Date.ToString("dd/MM/yyyy");
            // Điều chỉnh tính toán tổng
            decimal total = item.ImportCouponDetails.Sum(detail => detail.Price * detail.Quantity);
            worksheet.Cells[string.Format("F{0}", rowStart)].Value = total;

            rowStart++;
        }

        Response.Clear();
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.BinaryWrite(package.GetAsByteArray());
        Response.End();
    }
}

    }

}
