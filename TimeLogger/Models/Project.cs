using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TimeLogger.Models
{
	public class Project
	{
		[Key]
		public int ProjectId { get; set; }

		[Required, MinLength(3), MaxLength(100)]
		public string Name { get; set; }

		public double? DailyRate { get; set; }

		public string Description { get; set; }

		public ICollection<WorkItem> WorkItems { get; set; }
	}
}
