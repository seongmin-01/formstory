document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
	  locale : "ko",
      timeZone: 'UTC',
	  dayCellContent: function (arg) {
	      const { date } = arg;
	      return date.getDate();
	  },
      events: [
          {
	          title: '신정',
	          start: '2025-01-01',
			  backgroundColor: '#F7B457',
  		      borderColor: '#F7B457'
          },
          {
	          title: '설날',
	          start: '2025-01-28',
			  end: '2025-01-31',
			  backgroundColor: '#D21611',
		      borderColor: '#D21611'
          },
		  {
		      title: '삼일절',
		      start: '2025-03-01',
		      backgroundColor: 'purple',
		      borderColor: 'purple'
	      },
		  {
	          title: '대체공휴일',
	          start: '2025-03-03',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '프로젝트 발표',
	          start: '2025-03-07',
	          backgroundColor: 'green',
	          borderColor: 'green'
		  },
          {
	          title: '어린이날',
	          start: '2025-05-05',
	          backgroundColor: '#A1D0E6',
	          borderColor: '#A1D0E6'
		  },
		  {
	          title: '부처님오신날',
	          start: '2025-05-05',
	          backgroundColor: 'gray',
	          borderColor: 'gray'
		  },
		  {
	          title: '대체공휴일',
	          start: '2025-05-06',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '현충일',
	          start: '2025-06-06',
	          backgroundColor: '#F0EFED',
	          borderColor: '#e7e7e7',
			  textColor: 'black'
		  },
		  {
	          title: '광복절',
	          start: '2025-08-15',
	          backgroundColor: '#0D6EFB',
	          borderColor: '#0D6EFB'
		  },
		  {
	          title: '개천절',
	          start: '2025-10-03',
	          backgroundColor: '#67BCCE',
	          borderColor: '#67BCCE'
		  },
		  {
	          title: '추석',
	          start: '2025-10-05',
			  end: '2025-10-08',
	          backgroundColor: '#D21611',
	          borderColor: '#D21611'
		  },
		  {
	          title: '대체 공휴일',
	          start: '2025-10-08',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '한글날',
	          start: '2025-10-09',
	          backgroundColor: '#F7CD58',
	          borderColor: '#F7CD58'
		  },
		  {
	          title: '성탄절',
	          start: '2025-12-25',
	          backgroundColor: 'red',
	          borderColor: 'red'
		  },
      ]
    });
    calendar.render();
});