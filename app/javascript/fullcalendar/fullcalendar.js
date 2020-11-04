import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";


document.addEventListener('turbolinks:load', function () {
    var calendarEl = document.getElementById('calendar');
    var calendar = new Calendar(calendarEl, {
        plugins: [dayGridPlugin, timeGridPlugin],
        views: {
            timeGridOneDay: {
                type: 'timeGrid',
                duration: { days: 1 },
                buttonText: '1 day'
            }
        },
        initialView: "timeGridOneDay"
    });


    calendar.render();
});