document.addEventListener('DOMContentLoaded', function () {
    var selectedSlots = []; // Array to store selected slots
    var basePrice = 0; // Base price (for the first session)
    var additionalSessions = 0; // Store additional sessions
    var additionalPrice = 0; // Additional sessions cost
    var totalPrice = 0; // Variable to store total price
    var requiredSlots = sessionQuantity; // Initial required slots based on session_quantity
    var maxSlots = sessionQuantity; // Total number of slots allowed (session_quantity + additional_sessions)
    var calendarEl = document.getElementById('calendar');

    // Initialize the calendar
    var calendar = new FullCalendar.Calendar(calendarEl, {
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        initialView: 'dayGridMonth',
        navLinks: true,
        selectable: true,
        nowIndicator: true,
        events: calendarSlots, // Load the slot data from the backend (calendarSlots is passed in Blade)
        eventClick: function (info) {
            var selectedSlotId = info.event.id;
            var selectedSlotDate = info.event.start.toLocaleDateString(); // Get the date in a readable format
            var selectedSlotStartTime = info.event.start.toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'}); // Format start time
            var selectedSlotEndTime = info.event.end.toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'}); // Format end time
            var selectedSlotDayIndex = info.event.start.getUTCDay(); // Get day number (0 = Sunday, 6 = Saturday)

            // Convert day index to day name
            var dayNames = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
            var selectedSlotDay = dayNames[selectedSlotDayIndex];

            // Fetch the current quota for the slot (from the event's extended properties)
            var remainingQuota = info.event.extendedProps.quota;

            // Check if the slot is full
            if (remainingQuota <= 0) {
                alert('This slot is full. Please select another slot.');
                return;
            }

            // Check if the user has already selected the maximum allowed number of slots
            if (selectedSlots.length >= maxSlots) {
                alert(`You have already selected the maximum number of slots (${maxSlots}).`);
                return;
            }

            // Show slot details in the modal
            $('#eventDetails').html(
                'Selected Slot: ' + selectedSlotDate + ' from ' + selectedSlotStartTime + ' to ' + selectedSlotEndTime +
                '<br>Remaining Slots: ' + remainingQuota // Show the remaining slots
            );

            // Store the slot data temporarily in the confirm button
            $('#confirmSlotBtn').data('slot', {
                id: selectedSlotId,
                date: selectedSlotDate,
                start_time: selectedSlotStartTime,
                end_time: selectedSlotEndTime,
                day: selectedSlotDay // Pass day in word form
            });

            // Show the modal for slot confirmation
            $('#eventDetailsModal').modal('show');
        },
        droppable: true, // Allows events to be dropped onto the calendar
        drop: function (arg) {
            // Remove the event after drop if checkbox is checked
            if (document.getElementById('drop-remove').checked) {
                arg.draggedEl.parentNode.removeChild(arg.draggedEl);
            }
        }
    });

    calendar.render();

    // Handle confirm button in modal
    $('#confirmSlotBtn').on('click', function () {
        var slotData = $(this).data('slot');

        // Check if slot is already selected
        if (selectedSlots.some(slot => slot.id === slotData.id)) {
            alert('This slot is already selected.');
            return;
        }

        // Add the slot to the selected slots array
        selectedSlots.push({
            id: slotData.id,
            date: slotData.date,
            start_time: slotData.start_time,
            end_time: slotData.end_time,
            day: slotData.day // Store day as word form (Sunday, Monday, etc.)
        });

        // Update the summary table
        var newRow = `
            <tr id="row-${slotData.id}">
                <td>${slotData.date}</td>
                <td>${slotData.day}</td>
                <td>${slotData.start_time}</td>
                <td>${slotData.end_time}</td>
                <td><button class="btn btn-danger btn-sm remove-slot-btn" data-slot-id="${slotData.id}">Remove</button></td>
            </tr>
        `;
        document.getElementById('summary-table-body').insertAdjacentHTML('beforeend', newRow);

        // Update the hidden inputs for form submission
        document.getElementById('selectedSlots').value = JSON.stringify(selectedSlots);

        // **Calculate the base price**: Ensure the base price is only calculated once, when the required number of slots are selected
        if (selectedSlots.length === sessionQuantity) {
            basePrice = selectedSlots.some(slot => slot.day === 'Friday' || slot.day === 'Saturday') 
                ? packageWkendPrice 
                : packageWkdayPrice;

            // Update the base price display
            document.getElementById('basePriceDisplay').innerText = basePrice;
        }

        // **Calculate the total price**: Base + additional session price
        document.getElementById('totalPrice').value = basePrice + additionalPrice;
        document.getElementById('totalPriceDisplay').innerText = basePrice + additionalPrice;

        // Close the modal
        $('#eventDetailsModal').modal('hide');
    });

    // Handle removing a slot from the summary
    document.addEventListener('click', function (event) {
        if (event.target.classList.contains('remove-slot-btn')) {
            var slotId = event.target.getAttribute('data-slot-id');
            var slotIndex = selectedSlots.findIndex(slot => slot.id === slotId);

            if (slotIndex !== -1) {
                // Remove the slot from the selected slots array
                selectedSlots.splice(slotIndex, 1);

                // Remove the row from the summary table
                document.getElementById('row-' + slotId).remove();

                // Update the hidden inputs for form submission
                document.getElementById('selectedSlots').value = JSON.stringify(selectedSlots);

                // **If the number of selected slots is still >= session quantity**, do not reset the base price
                if (selectedSlots.length >= sessionQuantity) {
                    basePrice = selectedSlots.some(slot => slot.day === 'Friday' || slot.day === 'Saturday') 
                        ? packageWkendPrice 
                        : packageWkdayPrice;
                } else {
                    // **Reset the base price** if fewer than the session quantity slots are selected
                    basePrice = 0;
                }

                // Update the price displays
                document.getElementById('basePriceDisplay').innerText = basePrice;
                document.getElementById('totalPriceDisplay').innerText = basePrice + additionalPrice;
            }
        }
    });

    // Add more sessions button handler
    document.getElementById('additionalSessionsInput').addEventListener('input', function () {
        additionalSessions = parseInt(this.value);
        additionalPrice = additionalSessions * 100; // RM 100 per additional session
        maxSlots = sessionQuantity + additionalSessions; // Update maxSlots based on additional sessions

        // Update the session quantity display
        document.getElementById('additionalSessions').value = additionalSessions;

        // Update the additional price and total price displays
        document.getElementById('additionalPriceDisplay').innerText = additionalPrice;
        document.getElementById('totalPriceDisplay').innerText = basePrice + additionalPrice;
    });

    // Prevent form submission if the required slots are not selected
    $('form').on('submit', function(e) {
        if (selectedSlots.length < maxSlots) {
            e.preventDefault();
            alert(`Please select ${maxSlots} slots before submitting.`);
        }
    });
});