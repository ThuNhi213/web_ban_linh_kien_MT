﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface IOrderDetailService
    {
        OrderDetail AddOrderDetail(OrderDetail order);
        IEnumerable<OrderDetail> GetByOrderID(int ID);
        void SetIsRating(int ID);
        void Save();
        IEnumerable<OrderDetail> GetDeliveredOrderDetails();
    }
    public class OrderDetailService : IOrderDetailService
    {
        private readonly UnitOfWork context;
        public OrderDetailService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }
        public OrderDetail AddOrderDetail(OrderDetail orderDetail)
        {
            this.context.OrderDetailRepository.Insert(orderDetail);
            return orderDetail;
        }

        public IEnumerable<OrderDetail> GetByOrderID(int ID)
        {
            return this.context.OrderDetailRepository.GetAllData().Where(x => x.OrderID == ID);
        }

        public void Save()
        {
            throw new NotImplementedException();
        }

        public void SetIsRating(int ID)
        {
            OrderDetail orderDetail = context.OrderDetailRepository.GetDataByID(ID);
            orderDetail.IsRating = true;
            context.OrderDetailRepository.Update(orderDetail);
        }
        public IEnumerable<OrderDetail> GetDeliveredOrderDetails()
        {
            return context.OrderDetailRepository.GetAllData(orderDetail => orderDetail.Order.IsReceived==true);
        }

    }
}