using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using test.Models;

namespace test
{
    static public class RequestSender
    {
    
        public static string add(Phone phone, string server_addres)
        {
            string addr = String.Format("http://{0}/api/ApiPhone?Surname={1}&Firstname={2}&Middlename={3}&PhoneNumber={4}&BDay={5}",
                server_addres,
                phone.Surname, phone.Firstname, phone.Middlename, phone.PhoneNumber, phone.BDay);
            HttpWebResponse response = SendRequest(addr, "POST");
            if (response.StatusCode == HttpStatusCode.Created)
            {
                return String.Format("запись {0} {1} {2} добавлена", phone.Surname, phone.Firstname, phone.Middlename);
            }
            return "ошибка при добавлении данных";
        }
     
        public static string update(Phone phone, string server_addres)
        {
            string addr = String.Format("http://{0}/api/ApiPhone?Id={1}&Surname={2}&Firstname={3}&Middlename={4}&PhoneNumber={5}&BDay={6}",
                server_addres,
                phone.ID, phone.Surname, phone.Firstname, phone.Middlename, phone.PhoneNumber, phone.BDay);
            HttpWebResponse response = SendRequest(addr, "PUT");
            return String.Format("запись с id={0} изменена", phone.ID);
        }
   
        public static string delete(int id, string server_addres)
        {
            string addr = String.Format("http://{0}/api/ApiPhone?Id={1}", server_addres, id);
            HttpWebResponse response = SendRequest(addr, "DELETE");
            if (response.StatusCode == HttpStatusCode.NotFound)
            {
                return String.Format("Данные с id={0} не найдены",id);
            }
            else return String.Format("запись с id={0} удалена", id);
        }
        private static HttpWebResponse SendRequest(string addres,string method)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(addres);
            request.Proxy = null;
            request.Method = method;
            request.MaximumResponseHeadersLength = 100;
            request.ContentLength = 0;
            return (HttpWebResponse)request.GetResponse();
        }
    }
}