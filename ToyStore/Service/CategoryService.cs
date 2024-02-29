using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface ICategoryService
    {
        IEnumerable<Category> GetCategoryList();
       Category GetCategoryByID(int ID);
    }
    public class CategoryService : ICategoryService
    {
        private readonly UnitOfWork context;
        public CategoryService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }
        public IEnumerable<Category> GetCategoryList()
        {
            IEnumerable<Category> listCategory = this.context.CategoryRepository.GetAllData();
            return listCategory;
        }

        public Category GetCategoryByID(int ID)
        {
            return this.context.CategoryRepository.GetDataByID(ID);
        }
    }
}