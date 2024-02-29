using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SourceCode.Data;
using SourceCode.Models;

namespace SourceCode.Service
{
    public interface IUserService
    {
        User Add(User user);
        User CheckLogin(string email, string password);
    
        IEnumerable<User> GetList(int ID);
        IEnumerable<User> GetList();
        int GetTotalUser();
        int GetTotalEmployee();
        List<string> GetUserListName(string keyword);
        User GetByID(int ID);
        void Update(User user);
        void Block(User user);
        void Active(User user);
        void ResetPassword(int EmloyeeID, string NewPassword);
        void SaveResetCode(int userId, string resetCode);
        bool CheckPhoneNumber(string PhoneNumber);
        bool CheckName(string Name);
        bool CheckEmail(string Email);
        
        User GetByPhoneNumber(string PhoneNumber);
        User GetByName(string Name);
        User GetByEmail(string Email);
        string GetEmailByID(int ID);
        User CheckCapcha(int ID, string capcha);
        void UpdateCapcha(int ID, string capcha);
        void UpdateAmountPurchased(int ID, decimal AmountPurchased);
        IEnumerable<User> GetUserListForStatistic();
        bool CheckEmailPhone(string email, string phone);
        int GetUserCount();
        string GetFullNameByID(int ID);
    }
    public class UserService : IUserService
    {
        private readonly UnitOfWork context;
        public UserService(UnitOfWork repositoryContext)
        {
            this.context = repositoryContext;
        }

        public User CheckCapcha(int ID, string capcha)
        {
            User user = GetByID(ID);
            if (user.Capcha == capcha)
            {
                user.EmailConfirmed = true;
                Update(user);
                return user;
            }
            return null;
        }

       
        public IEnumerable<User> GetUserListForStatistic()
        {
            IEnumerable<User> listUser = this.context.UserRepository.GetAllData(x => x.AmountPurchased > 0).OrderByDescending(x => x.AmountPurchased);
            return listUser;
        }
        public void UpdateAmountPurchased(int ID, decimal AmountPurchased)
        {
            User user = context.UserRepository.GetDataByID(ID);
            user.AmountPurchased += AmountPurchased;
            context.UserRepository.Update(user);
        }

        public void UpdateCapcha(int ID, string capcha)
        {
            User user = GetByID(ID);
            user.Capcha = capcha;
            Update(user);
        }

        public void Active(User user)
        {
            user.IsDeleted = false;
            this.context.UserRepository.Update(user);
        }

        public User Add(User user)
        {
            user.UserTypeID = 2;
            user.AmountPurchased = 0;
            user.IsDeleted = false;
            user.Avatar = "user.png";
            this.context.UserRepository.Insert(user);
            return user;
        }

        public void Block(User user)
        {
            user.IsDeleted = true;
            this.context.UserRepository.Update(user);
        }

        public User CheckLogin(string email, string password)
        {
            // Lấy thông tin người dùng từ cơ sở dữ liệu bằng email
            User user = GetUserByEmail(email);

            // Kiểm tra xem người dùng có tồn tại và mật khẩu đúng không
            if (user != null && BCrypt.Net.BCrypt.Verify(password, user.Password))
            {
                return user;
            }

            return null;
        }

        private User GetUserByEmail(string email)
        {
            return context.UserRepository.GetAllData().FirstOrDefault(x => x.Email == email && x.IsDeleted == false);
        }


        public bool CheckEmailPhone(string email, string phone)
        {
            User user = this.context.UserRepository.GetAllData().SingleOrDefault(x => x.Email == email && x.PhoneNumber == phone && x.IsDeleted == false);
            if (user != null)
            {
                return false;
            }
            return true;
        }

        public User GetByID(int ID)
        {
            return this.context.UserRepository.GetDataByID(ID);
        }

        public List<string> GetUserListName(string keyword)
        {
            IEnumerable<User> listUserName = this.context.UserRepository.GetAllData(x => x.FullName.Contains(keyword) && x.IsDeleted == false);
            List<string> names = new List<string>();
            foreach (var item in listUserName)
            {
                names.Add(item.FullName);
            }
            return names;
        }

        public IEnumerable<User> GetList(int ID)
        {
            return context.UserRepository.GetAllData(x => x.ID != ID);
        }

        public int GetTotalUser()
        {
            return context.UserRepository.GetAllData(x => x.UserType.Name == "Client").Count();
        }

        public int GetTotalEmployee()
        {
            return context.UserRepository.GetAllData(x => x.UserType.Name != "Client").Count();
        }

        public void ResetPassword(int UserID, string NewPassword)
        {
            // Lấy thông tin người dùng từ cơ sở dữ liệu
            User user = GetByID(UserID);

            // Kiểm tra xem người dùng có tồn tại không
            if (user != null)
            {
                // Mã hóa mật khẩu mới bằng BCrypt.Net
                string hashedNewPassword = BCrypt.Net.BCrypt.HashPassword(NewPassword);

                // Lưu mật khẩu mới đã mã hóa vào cơ sở dữ liệu
                user.Password = hashedNewPassword;
                context.UserRepository.Update(user);
            }
        }

        public void SaveResetCode(int userId, string resetCode)
        {
            User user = GetByID(userId);
            user.Password = resetCode;
            context.UserRepository.Update(user);
        }
        public void Update(User user)
        {
            this.context.UserRepository.Update(user);
        }
        public bool CheckPhoneNumber(string PhoneNumber)
        {
            var check = context.UserRepository.GetAllData(x => x.PhoneNumber == PhoneNumber && x.IsDeleted == false);
            if (check.Count() > 0)
            {
                return false;
            }
            return true;
        }

        public bool CheckName(string Name)
        {
            var check = context.UserRepository.GetAllData(x => x.FullName == Name && x.IsDeleted == false);
            if (check.Count() > 0)
            {
                return false;
            }
            return true;
        }

        public bool CheckEmail(string Email)
        {
            var check = context.UserRepository.GetAllData(x => x.Email == Email && x.IsDeleted == false);
            if (check.Count() > 0)
            {
                return false;
            }
            return true;
        }
        public User GetByPhoneNumber(string PhoneNumber)
        {
            User user = context.UserRepository.GetAllData().FirstOrDefault(x => x.PhoneNumber == PhoneNumber);
            return user;
        }

        public User GetByName(string Name)
        {
            User user = context.UserRepository.GetAllData().FirstOrDefault(x => x.FullName == Name);
            return user;
        }

        public User GetByEmail(string Email)
        {
            User user = context.UserRepository.GetAllData().FirstOrDefault(x => x.Email == Email);
            return user;
        }

        public IEnumerable<User> GetList()
        {
            return context.UserRepository.GetAllData();
        }

        public string GetEmailByID(int ID)
        {
            string email = context.UserRepository.GetAllData().FirstOrDefault(x => x.ID == ID).Email;
            return email;
        }
        public int GetUserCount()
        {
        return context.UserRepository.GetAllData().Count();
        }
        public string GetFullNameByID(int ID)
        {
            User user = GetByID(ID);
            return user?.FullName;
        }


    }
}