window.addEventListener('DOMContentLoaded', function () {
    var clock = document.querySelector('#clock').getContext('2d');
    clock.canvas.width = 500;
    clock.canvas.height = 500;
    clock.strokeStyle = '#198754';
    clock.lineWidth = 14;
    clock.lineCap = 'round';

    function degreeToRadian(degree) {
        return degree * Math.PI / 180;
    }

    function capitalize(word) {
        return word.charAt(0).toUpperCase() + word.slice(1);
    }

    function renderTime() {
        var now = new Date();
        var options = { weekday: 'short', year: 'numeric', month: 'short', day: 'numeric' };
        var today = now.toLocaleDateString('es-ES', options);
        var parts = today.split(' ');
        var dayOfWeek = capitalize(parts[0]);
        var dayOfMonth = parts[1];
        var month = capitalize(parts[2]);
        var year = parts[3];
        var formattedDate = `${dayOfWeek}, ${dayOfMonth}/${month}/${year}`;
        formattedDate = formattedDate.replace(/,,/g, ','); // Elimina la coma extra
        var time = now.toLocaleTimeString('es-ES', { hour12: true });
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var ampm = hours < 12 ? 'am' : 'pm';
        hours = hours % 12;
        if (hours === 0) hours = 12;

        var time = `${hours}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')} ${ampm}`;
        
        // var seconds = now.getSeconds();
        var miliSeconds = now.getMilliseconds();
        var newSeconds = seconds + (miliSeconds / 1000);

        // BACKGROUND
        clock.fillStyle = '#eeeeee';
        clock.fillRect(0, 0, 500, 500);

        // HOURS
        clock.strokeStyle = '#6610f2'; // Rojo
        clock.beginPath();
        clock.arc(250, 250, 200, degreeToRadian(270), degreeToRadian((hours % 12 + minutes / 60) * 30 - 90));
        clock.stroke();

        // MINUTES
        clock.strokeStyle = '#d63384'; // Verde
        clock.beginPath();
        clock.arc(250, 250, 180, degreeToRadian(270), degreeToRadian(minutes * 6 - 90));
        clock.stroke();

        // SECONDS
        clock.strokeStyle = '#fd7e14'; // Azul
        clock.beginPath();
        clock.arc(250, 250, 160, degreeToRadian(270), degreeToRadian(newSeconds * 6 - 90));
        clock.stroke();

        // TEXTO ENCIMA DE LA FECHA
        clock.font = '20px Arial, sans-serif';
        clock.fillStyle = '#666666';
        clock.textAlign = 'center';
        clock.textBaseline = 'middle';
        clock.fillText('Fecha y hora actual', 250, 200);

        // DATE
        clock.font = '36px Arial, sans-serif';
        clock.fillStyle = '#006937';
        clock.textAlign = 'center';
        clock.textBaseline = 'middle';
        clock.fillText(formattedDate, 250, 237);

        // TIME
        clock.font = '32px Arial, sans-serif';
        clock.fillStyle = '#006937';
        clock.textAlign = 'center';
        clock.textBaseline = 'middle';
        clock.fillText(time, 250, 276); // Ajusta la posición de la hora
    }
    setInterval(renderTime, 40);
}, false);
