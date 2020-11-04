import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";


document.addEventListener('turbolinks:load', function () {
    var calendarEl = document.getElementById('calendar');
    let calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin, timeGridPlugin ],
        initialView: 'timeGridWeek'
      });
    // var calendar = new Calendar(calendarEl, {
       
    //     plugins: [dayGridPlugin, timeGridPlugin],
    //     views: {
    //         timeGridFourDay: {
    //             type: 'timeGrid',
    //             duration: { days: 4 },
    //         }
    //     },

    // });

    calendar.render();
});