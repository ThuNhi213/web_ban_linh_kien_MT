using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SourceCode.Service;
using SourceCode.Data;
using SourceCode.Data.Repository;
using SourceCode.Models;
using System.Net.Mail;
using System.Web.Security;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;
using BCrypt.Net;

namespace SourceCode.Controllers
{
    public class HomeController : Controller
    {
        #region Initialize
        private IProductCategoryService _productCategoryService;
        private IProductService _productService;
        private IProducerService _producerService;
        private ICategoryService _categoryService;
        private IProductCategoryParentService _productCategoryParentService;
        private IUsageTypeService _usageTypeService;
        private IUserService _userService;
        private ICartService _cartService;
        private IDecentralizationService _decentralizationService;

        public HomeController(IProductCategoryService productCategoryService, IProductService productService, IProducerService producerService, ICategoryService categoryService, IProductCategoryParentService productCategoryParentService, IUsageTypeService usageTypeService, IUserService userService, ICartService cartService, IDecentralizationService decentralizationService)
        {
            _productCategoryService = productCategoryService;
            _productService = productService;
            _producerService = producerService;
            _categoryService = categoryService;
            _productCategoryParentService = productCategoryParentService;
            _usageTypeService = usageTypeService;
            _userService = userService;
            _cartService = cartService;
            _decentralizationService = decentralizationService;
        }
        #endregion
        public ActionResult Index()
        {
            //Get list product New
            var listProdudctNew = _productService.GetProductListLast();
            ViewBag.ListProductNew = listProdudctNew;
            var listProdudct = _productService.GetProductListIndex();
            ViewBag.listProduct = listProdudct;
            var listProdudctDisocunt = _productService.GetProductListDiscount();
            ViewBag.listProductDiscount = listProdudctDisocunt;

            return View();
        }
        public ActionResult HeaderTopPartial()
        {
            return PartialView();
        }
        public ActionResult MenuPartial()
        {
            ViewBag.ListProductCategory = _productCategoryService.GetProductCategoryHome();
            ViewBag.ListProducer = _producerService.GetProducerList();
            ViewBag.ListCategory = _categoryService.GetCategoryList();
            ViewBag.ListParent = _productCategoryParentService.GetProductCategoryParentList();
            ViewBag.ListUsageype = _usageTypeService.GetUsageTypeList();
            return PartialView();
        }
        public ViewResult About()
        {
            return View();
        }
        [HttpGet]
        public ActionResult SignUp()
        {
            return View();
        }
        [HttpPost]

        public ActionResult SignUp(User user)
        {
            // Kiểm tra tính hợp lệ của email trước khi đăng ký
            if (!IsEmail(user.Email))
            {
                ViewBag.MessageEmail = "Email không hợp lệ. Vui lòng nhập đúng định dạng (vd: abc@gmail.com)";
                return View(user);
            }

            Models.User check = _userService.GetByEmail(user.Email);
            if (check == null)
            {
                Models.User check2 = _userService.GetByPhoneNumber(user.PhoneNumber);
                if (check2 != null)
                {
                    // Update thông tin người dùng
                    check2.FullName = user.FullName;
                    check2.Address = user.Address;

                    // Mã hóa mật khẩu bằng BCrypt.Net
                    check2.Password = BCrypt.Net.BCrypt.HashPassword(user.Password);

                    check2.PhoneNumber = user.PhoneNumber;
                    _userService.Update(check2);
                    return RedirectToAction("ConfirmEmail", "User", new { ID = check2.ID });
                }
            }
            else if (check != null && check.EmailConfirmed == false)
            {
                // Update thông tin người dùng
                check.FullName = user.FullName;
                check.Address = user.Address;

                // Mã hóa mật khẩu bằng BCrypt.Net
                check.Password = BCrypt.Net.BCrypt.HashPassword(user.Password);

                check.PhoneNumber = user.PhoneNumber;
                _userService.Update(check);
                return RedirectToAction("ConfirmEmail", "User", new { ID = check.ID });
            }

            bool fail = false;
            //Check email
            if (_userService.CheckEmail(user.Email) == false)
            {
                ViewBag.MessageEmail = "Email đã tồn tại";
                fail = true;
            }
            //Check phonenumber
            if (_userService.CheckPhoneNumber(user.PhoneNumber) == false)
            {
                ViewBag.MessagePhoneNumber = "Số điện thoại đã tồn tại";
                fail = true;
            }
            if (fail)
            {
                return View(user);
            }
            else
            {
                // Mã hóa mật khẩu bằng BCrypt.Net
                user.Password = BCrypt.Net.BCrypt.HashPassword(user.Password);
                user.EmailConfirmed = true;

                User user1 = _userService.Add(user);
                return RedirectToAction("ConfirmEmail", "User", new { ID = user1.ID });
            }
        }

        public static bool IsEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
                return false;

            return Regex.IsMatch(email, @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
        }

        [HttpGet]
        public ActionResult SignIn()
        {
            return View();
        }
        [HttpPost]
        //public ActionResult SignIn(User user)
        //{
        //    if (user == null)
        //    {
        //        return null;
        //    }
        //    else
        //    {
        //        User userCheck = _userService.CheckLogin(user.Email, user.Password);
        //        if (userCheck != null)
        //        {
        //            if (userCheck.EmailConfirmed == false)
        //            {
        //                return RedirectToAction("ConfirmEmail", "User", new { ID = userCheck.ID });
        //            }
        //            else
        //            {
        //                Session["User"] = userCheck;
        //                IEnumerable<Decentralization> decentralizations = _decentralizationService.GetDecentralizationByUserTypeID(userCheck.UserTypeID);
        //                if (decentralizations.Count() > 0)
        //                {
        //                    string role = "";
        //                    foreach (var item in decentralizations)
        //                    {
        //                        role += item.Role.Name + ",";
        //                    }

        //                    role = role.Substring(0, role.Length - 1);
        //                    Decentralization(userCheck.ID, role);
        //                }


        //                if (_cartService.CheckCartUser(userCheck.ID))
        //                {
        //                    List<ItemCart> carts = _cartService.GetCart(userCheck.ID);
        //                    Session["Cart"] = carts;
        //                }
        //                else if (Session["Cart"] != null)
        //                {
        //                    List<ItemCart> listCart = Session["Cart"] as List<ItemCart>;
        //                    foreach (var item in listCart)
        //                    {
        //                        item.UserID = userCheck.ID;
        //                        _cartService.AddCartIntoUser(item);
        //                    }
        //                }
        //            }

        //            if (userCheck.UserType.ID == 1)
        //            {
        //                return Redirect("/Admin");
        //            }
        //        }
        //        else
        //        {
        //            ViewBag.Message = "Email hoặc mật khẩu không đúng.";
        //            return View();
        //        }
        //    }
        //    return RedirectToAction("Index");
        //}
       // [HttpPost]
        public ActionResult SignIn(User user)
        {
            if (user == null)
            {
                return null;
            }
            else
            {
                User userCheck = _userService.CheckLogin(user.Email, user.Password);
                if (userCheck != null)
                {
                    if (userCheck.EmailConfirmed == false)
                    {
                        return RedirectToAction("ConfirmEmail", "User", new { ID = userCheck.ID });
                    }
                    else
                    {
                        Session["User"] = userCheck;
                        IEnumerable<Decentralization> decentralizations = _decentralizationService.GetDecentralizationByUserTypeID(userCheck.UserTypeID);
                        if (decentralizations.Count() > 0)
                        {
                            string role = "";
                            foreach (var item in decentralizations)
                            {
                                role += item.Role.Name + ",";
                            }

                            role = role.Substring(0, role.Length - 1);
                            Decentralization(userCheck.ID, role);
                        }

                        if (_cartService.CheckCartUser(userCheck.ID))
                        {
                            List<ItemCart> carts = _cartService.GetCart(userCheck.ID);
                            Session["Cart"] = carts;
                        }
                        else if (Session["Cart"] != null)
                        {
                            List<ItemCart> listCart = Session["Cart"] as List<ItemCart>;
                            foreach (var item in listCart)
                            {
                                item.UserID = userCheck.ID;
                                _cartService.AddCartIntoUser(item);
                            }
                        }

                        // Kiểm tra xem người dùng có quyền đăng nhập hay không
                        if (userCheck.UserType.ID == 1)
                        {
                            return Redirect("/Admin");
                        }
                    }
                }
                else
                {
                    ViewBag.Message = "Email hoặc mật khẩu không đúng.";
                    return View();
                }
            }
            return RedirectToAction("Index");
        }

        public User CheckLogin(string email, string password)
        {
            User user = _userService.GetByEmail(email);

            if (user != null && BCrypt.Net.BCrypt.Verify(password, user.Password))
            {
                return user;
            }
            return null;
        }


        public ActionResult SignIn(User user, bool rememberMe = false)
        {
            if (user == null)
            {
                return null;
            }
            else
            {
                User userCheck = _userService.CheckLogin(user.Email, user.Password);
                if (userCheck != null)
                {
                    if (userCheck.EmailConfirmed == false)
                    {
                        return RedirectToAction("ConfirmEmail", "User", new { ID = userCheck.ID });
                    }
                    else
                    {
                        // Lưu mật khẩu vào cookie nếu người dùng chọn "Nhớ mật khẩu"
                        if (rememberMe)
                        {
                            HttpCookie usernameCookie = new HttpCookie("username", user.Email);
                            HttpCookie passwordCookie = new HttpCookie("password", user.Password);
                            usernameCookie.Expires = DateTime.Now.AddDays(30); // Lấy thời hạn cookie là 30 ngày
                            passwordCookie.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(usernameCookie);
                            Response.Cookies.Add(passwordCookie);
                        }

                        Session["User"] = userCheck;
                        IEnumerable<Decentralization> decentralizations = _decentralizationService.GetDecentralizationByUserTypeID(userCheck.UserTypeID);
                        if (decentralizations.Count() > 0)
                        {
                            string role = "";
                            foreach (var item in decentralizations)
                            {
                                role += item.Role.Name + ",";
                            }

                            role = role.Substring(0, role.Length - 1);
                            Decentralization(userCheck.ID, role);
                        }

                        if (_cartService.CheckCartUser(userCheck.ID))
                        {
                            List<ItemCart> carts = _cartService.GetCart(userCheck.ID);
                            Session["Cart"] = carts;
                        }
                        else if (Session["Cart"] != null)
                        {
                            List<ItemCart> listCart = Session["Cart"] as List<ItemCart>;
                            foreach (var item in listCart)
                            {
                                item.UserID = userCheck.ID;
                                _cartService.AddCartIntoUser(item);
                            }
                        }
                    }

                    if (userCheck.UserType.ID == 1)
                    {
                        return Redirect("/Admin");
                    }
                }
                else
                {
                    ViewBag.Message = "Email hoặc mật khẩu không đúng.";
                    return View();
                }
            }
            return RedirectToAction("Index");
        }


        private void Decentralization(int ID, string Role)
        {
            FormsAuthentication.Initialize();
            var ticket = new FormsAuthenticationTicket(1,
                ID.ToString(),
                DateTime.Now,
                DateTime.Now.AddHours(3),
                false,
                Role,
                FormsAuthentication.FormsCookiePath);
            var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
            if (ticket.IsPersistent)
            {
                cookie.Expires = ticket.Expiration;
            }
            Response.Cookies.Add(cookie);
        }

        public ActionResult SignOut()
        {
            Session.Remove("User");
            Session.Remove("Cart");
            string[] myCookies = Request.Cookies.AllKeys;
            foreach (string cookie in myCookies)
            {
                Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
            }
            return RedirectToAction("Index");
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

        [HttpGet]
        public ActionResult ForgetPasswordConfirm()
        {
            return View();
        }

        [HttpPost]
        //public ActionResult ForgetPasswordConfirm(string email)
        //{
        //    // Kiểm tra xem email có tồn tại trong hệ thống hay không
        //    var user = _userService.GetByEmail(email);

        //    if (user == null)
        //    {
        //        // Nếu email không tồn tại, hiển thị thông báo lỗi phù hợp
        //        ViewBag.ErrorMessage = "Email không tồn tại trong hệ thống. Vui lòng kiểm tra lại hoặc đăng ký tài khoản mới.";
        //    }
        //    else
        //    {


        //        // Tạo mã đặt lại mật khẩu ngẫu nhiên (có thể sử dụng Guid.NewGuid() hoặc mã tùy chọn khác)
        //        string resetCode = Guid.NewGuid().ToString();

        //        // Lưu mã đặt lại mật khẩu vào cơ sở dữ liệu hoặc bất kỳ lưu trữ tạm thời nào khác
        //        _userService.SaveResetCode(user.ID, resetCode);

        //        // Gửi email chứa liên kết đặt lại mật khẩu
        //        string resetLink = Url.Action("SignIn", "Home", new { userId = user.ID, code = resetCode }, Request.Url.Scheme);
        //        string emailBody = $"Vui lòng nhấp vào liên kết sau để đăng nhập ngay và thay đổi mật khẩu mới: {resetLink}\nMã khẩu tạm thời là: {resetCode}";

        //        // Gửi email (Triển khai logic gửi email tại đây)
        //        SentMail("Lấy lại mật khẩu thành công", user.Email, "tranthu2132002@gmail.com", "oolisyauankmjgbt", emailBody);

        //        ViewBag.Message = "Liên kết đặt lại mật khẩu đã được gửi qua email.";
        //    }

        //    return View();
        //}
        public ActionResult ForgetPasswordConfirm(string email)
        {
            // Kiểm tra xem email có tồn tại trong hệ thống hay không
            var user = _userService.GetByEmail(email);

            if (user == null)
            {
                // Nếu email không tồn tại, hiển thị thông báo lỗi phù hợp
                ViewBag.ErrorMessage = "Email không tồn tại trong hệ thống. Vui lòng kiểm tra lại hoặc đăng ký tài khoản mới.";
            }
            else
            {
                // Tạo mã mới ngẫu nhiên
                string newResetCode = Guid.NewGuid().ToString();

                // Mã hóa mã mới
                string hashedResetCode = BCrypt.Net.BCrypt.HashPassword(newResetCode);

                // Lưu mã đã mã hóa vào cơ sở dữ liệu
                _userService.SaveResetCode(user.ID, hashedResetCode);

                // Gửi email chứa liên kết đặt lại mật khẩu
                string resetLink = Url.Action("SignIn", "Home", new { userId = user.ID, code = newResetCode }, Request.Url.Scheme);
                string emailBody = $"Vui lòng nhấp vào liên kết sau để đăng nhập ngay và thay đổi mật khẩu mới: {resetLink}\nMã khẩu tạm thời là: {newResetCode}";

                // Gửi email (Triển khai logic gửi email tại đây)
                SentMail("Lấy lại mật khẩu thành công", user.Email, "tranthu2132002@gmail.com", "oolisyauankmjgbt", emailBody);

                ViewBag.Message = "Liên kết đặt lại mật khẩu đã được gửi qua email.";
            }

            return View();
        }

    }
}
