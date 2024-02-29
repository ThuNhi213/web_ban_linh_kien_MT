using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface IUsageTypeService
    {
        IEnumerable<UsageType> GetUsageTypeList();
        UsageType GetUsageTypeByID(int ID);
    }
    public class UsageTypeService : IUsageTypeService
    {
        private readonly UnitOfWork context;
        public UsageTypeService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }
        public IEnumerable<UsageType> GetUsageTypeList()
        {
            IEnumerable<UsageType> listUsageType = this.context.UsageTypeRepository.GetAllData();
            return listUsageType;
        }

        public UsageType GetUsageTypeByID(int ID)
        {
            return this.context.UsageTypeRepository.GetDataByID(ID);
        }
    }
}