document.addEventListener('DOMContentLoaded', () => {
    const monthElement = document.getElementById('month');
    const datesElement = document.getElementById('dates');
    const prevButton = document.getElementById('prev');
    const nextButton = document.getElementById('next');

    let currentDate = new Date();

    function renderCalendar() {
        const month = currentDate.getMonth();
        const year = currentDate.getFullYear();
        monthElement.textContent = `${getMonthName(month)} ${year}`;
        datesElement.innerHTML = '';

        const firstDay = new Date(year, month, 1).getDay();
        const daysInMonth = new Date(year, month + 1, 0).getDate();

        // Adjust the start day if it's Sunday
        const startDay = firstDay === 0 ? 6 : firstDay - 1;

        // Fill empty days
        for (let i = 0; i < startDay; i++) {
            datesElement.innerHTML += '<div></div>';
        }

        // Fill the days of the month
        for (let i = 1; i <= daysInMonth; i++) {
            datesElement.innerHTML += `<div>${i}</div>`;
        }
    }

    function getMonthName(monthIndex) {
        const monthNames = [
            'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
            'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
        ];
        return monthNames[monthIndex];
    }

    prevButton.addEventListener('click', () => {
        currentDate.setMonth(currentDate.getMonth() - 1);
        renderCalendar();
    });

    nextButton.addEventListener('click', () => {
        currentDate.setMonth(currentDate.getMonth() + 1);
        renderCalendar();
    });

    renderCalendar();
});
