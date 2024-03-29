﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SourceCode
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
               name: "SignUp",
               url: "dang-ky",
               defaults: new { controller = "Home", action = "SignUp"}
           );
            routes.MapRoute(
               name: "SignIn",
               url: "dang-nhap",
               defaults: new { controller = "Home", action = "SignIn" }
            
           );
            routes.MapRoute(
              name: "ForgetPassword",
              url: "quen-mat-khau",
              defaults: new { controller = "Home", action = "ForgetPassword" }
              );

           routes.MapRoute(
               name: "Cart",
               url: "gio-hang",
               defaults: new { controller = "Cart", action = "Checkout" }
           );
            routes.MapRoute(
               name: "Voucher",
               url: "quay-trung-thuong",
               defaults: new { controller = "Spin", action = "Index" }
           );
            routes.MapRoute(
               name: "ProductCategoryParent",
               url: "danh-muc-goc/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "ProductCategoryParent", id = UrlParameter.Optional }
           );

            routes.MapRoute(
               name: "ProductCategory",
               url: "danh-muc/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "ProductCategory", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "UsageType",
               url: "dung-cho/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "UsageType", id = UrlParameter.Optional }
               );
            routes.MapRoute(
               name: "Category",
               url: "phan-loai/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "Categories", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "Producer",
               url: "thuong-hieu/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "Producer", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "ProductDetail",
               url: "san-pham/{seo-keyword}-{id}",
               defaults: new { controller = "Product", action = "Details", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "Product",
               url: "san-pham-moi",
               defaults: new { controller = "Product", action = "NewProduct"}
           );
            routes.MapRoute(
                name: "Home",
                url: "trang-chu",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "About",
                url: "Home/About",
                defaults: new { controller = "Home", action = "About" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        
        }
    }
}
