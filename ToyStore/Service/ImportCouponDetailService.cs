using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface IImportCouponDetailService
    {
        ImportCouponDetail AddImportCouponDetail(ImportCouponDetail import);
        IEnumerable<ImportCouponDetail> GetByImportCouponID(int ID);
        decimal GetProductPrice (int productID);
    }
    public class ImportCouponDetailService : IImportCouponDetailService
    {
        private readonly UnitOfWork context;
        public ImportCouponDetailService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }

        public ImportCouponDetail AddImportCouponDetail(ImportCouponDetail importCouponDetail)
        {
            context.ImportCouponDetailRepository.Insert(importCouponDetail);
            //Update total amount
            ImportCoupon importCoupon = context.ImportCouponRepository.GetDataByID(importCouponDetail.ImportCouponID);
            Supplier supplier = context.SupplierRepository.GetDataByID(importCoupon.SupplierID);
            supplier.TotalAmount += importCouponDetail.Price * importCouponDetail.Quantity;
            context.SupplierRepository.Update(supplier);
            return importCouponDetail;
        }

        public IEnumerable<ImportCouponDetail> GetByImportCouponID(int ID)
        {
            return context.ImportCouponDetailRepository.GetAllData().Where(x => x.ImportCouponID == ID);
        }
        public decimal GetProductPrice(int productID)
        {
            // Lấy danh sách ImportCouponDetails có chứa sản phẩm với productID
            IEnumerable<ImportCouponDetail> importCouponDetails = context.ImportCouponDetailRepository.GetAllData() .Where(detail => detail.ProductID == productID).ToList();

            // Lấy giá từ ImportCouponDetails, có thể lấy giá từ ImportCouponDetail cuối cùng hoặc tính trung bình giá
            decimal productPrice = importCouponDetails.Any() ? importCouponDetails.Last().Price : 0;

            return productPrice;
        }
        public IEnumerable<ImportCouponDetail> GetImportCouponDetails()
        {
            
            return context.ImportCouponDetailRepository.GetAllData();
        }


    }

    
}