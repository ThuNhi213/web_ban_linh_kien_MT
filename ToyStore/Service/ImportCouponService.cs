using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface IImportCouponService
    {
        ImportCoupon GetByID(int ID);
        ImportCoupon AddImportCoupon(ImportCoupon importCoupon);
        IEnumerable<ImportCoupon> GetImportCoupon();
        void Delete(int ID);
        void Rehibilitate(int ID);
        decimal GetTotalByImportCouponID(int importCouponID);
        IEnumerable<ImportCoupon> GetListImportCouponStatistic(DateTime from, DateTime to);
        IEnumerable<ImportCoupon> GetListImportCouponStatistic();
       




    }
    public class ImportCouponService : IImportCouponService
    {
        private readonly UnitOfWork context;
        public ImportCouponService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }
        public ImportCoupon AddImportCoupon(ImportCoupon importCoupon)
        {
            context.ImportCouponRepository.Insert(importCoupon);
            return importCoupon;
        }

        public void Delete(int ID)
        {
            ImportCoupon importCoupon = context.ImportCouponRepository.GetDataByID(ID);
            importCoupon.IsDelete = true;
            context.ImportCouponRepository.Update(importCoupon);
        }

        public ImportCoupon GetByID(int ID)
        {
            return context.ImportCouponRepository.GetDataByID(ID);
        }

        public IEnumerable<ImportCoupon> GetImportCoupon()
        {
            return context.ImportCouponRepository.GetAllData();
        }

        public void Rehibilitate(int ID)
        {
            ImportCoupon importCoupon = context.ImportCouponRepository.GetDataByID(ID);
            importCoupon.IsDelete = false;
            context.ImportCouponRepository.Update(importCoupon);
        }

        public IEnumerable<ImportCoupon> GetListImportCouponStatistic(DateTime from, DateTime to)
        {
            var importCoupons = context.ImportCouponRepository.GetAllData(importCoupon =>
                DbFunctions.TruncateTime(importCoupon.Date) >= from.Date &&
                DbFunctions.TruncateTime(importCoupon.Date) <= to.Date);

            foreach (var importCoupon in importCoupons)
            {
                importCoupon.total = importCoupon.ImportCouponDetails
                    .Sum(detail => detail.Price * detail.Quantity);
            }

            return importCoupons;
        }

        public IEnumerable<ImportCoupon> GetListImportCouponStatistic()
        {
            var importCoupons = context.ImportCouponRepository.GetAllData();

            foreach (var importCoupon in importCoupons)
            {
                importCoupon.total = importCoupon.ImportCouponDetails
                    .Sum(detail => detail.Price * detail.Quantity);
            }

            return importCoupons;
        }

        public decimal GetTotalByImportCouponID(int importCouponID)
        {
            return context.ImportCouponDetailRepository.GetAllData(x => x.ImportCouponID == importCouponID).Sum(x => x.Price);
        }
       

    }
}