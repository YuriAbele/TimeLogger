using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TimeLogger.Models
{
	public class WorkItem
	{
		[Key]
		public int WorkMatrixId { get; set; }

		[ForeignKey("Project")]
		public int ProjectId { get; set; }
		public Project Project { get; set; }

		public bool IsProductive { get; set; }

		public DateTime StartAt { get; set; }

		public DateTime? FinishAt { get; set; }

		public string Comment { get; set; }
	}
}
