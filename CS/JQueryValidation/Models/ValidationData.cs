using System;
using System.ComponentModel.DataAnnotations;

namespace JQueryValidation.Models {
    public class ValidationData {
        [Required(ErrorMessage = "Name is required")]
        [StringLength(50, ErrorMessage = "Must be under 50 characters")]
        public string Name { get; set; }

        [Range(18, 100, ErrorMessage = "Must be between 18 and 100")]
        public int? Age { get; set; }

        [Required(ErrorMessage = "Email is required")]
        [RegularExpression("\\w+([-+.\\']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*", ErrorMessage = "Email is invalid")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Arrival date is required")]
        public DateTime? ArrivalDate { get; set; }
    }
}