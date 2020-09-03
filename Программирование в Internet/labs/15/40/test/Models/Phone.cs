using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;

namespace test.Models
{
    public class Phone
    {
        public Phone(string surname, string firstname, string middlename, string phoneNumber, DateTime bDay)
        {
            Surname = surname;
            Firstname = firstname;
            Middlename = middlename;
            PhoneNumber = phoneNumber;
            BDay = bDay;
        }
        public Phone() { }
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Display(Name = "Фамилия")]
        [StringLength(30, ErrorMessage="Фамилия не должна быть больше 30 символов")]
        public string Surname {get;set;}

        [Display(Name = "Имя")]
        [StringLength(30, ErrorMessage="Имя не должна быть больше 30 символов")]
        public string Firstname {get;set;}

        [Display(Name = "Отчество")]
        [StringLength(30, ErrorMessage="Отчество не должна быть больше 30 символов")]
        public string Middlename {get;set;}
 
        [Display(Name = "Телефон")]
        [StringLength(10, ErrorMessage="телефон не должна быть больше 10 символов")]
        public string PhoneNumber {get;set;}
 
        [Display(Name = "Дата рождения")]
        [DisplayFormat(DataFormatString="{0:MM.dd.yyyy}")]
        public DateTime BDay { get; set; }
    }
}