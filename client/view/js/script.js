document.addEventListener('DOMContentLoaded', function() {
    const toggleButton = document.getElementById('toggle-button');
    const hiddenRows = document.querySelectorAll('.appointment-row.hidden');

    let rowsVisible = false;

    toggleButton.addEventListener('click', function() {
        rowsVisible = !rowsVisible;

        hiddenRows.forEach(row => {
            row.classList.toggle('hidden', !rowsVisible);
        });

        toggleButton.textContent = rowsVisible ? 'Mostrar menos' : 'Mostrar más';
    });
});





