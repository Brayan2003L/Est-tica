document.addEventListener('DOMContentLoaded', function() {
    const toggleButton = document.getElementById('toggle-button');
    const hiddenAppointments = document.querySelectorAll('.hidden');

    toggleButton.addEventListener('click', function() {
        hiddenAppointments.forEach(appointment => {
            appointment.classList.toggle('hidden');
        });

        if (toggleButton.textContent === 'Mostrar más') {
            toggleButton.textContent = 'Mostrar menos';
        } else {
            toggleButton.textContent = 'Mostrar más';
        }
    });
});
