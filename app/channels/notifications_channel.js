// app/javascript/channels/notifications_channel.js
import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  received(data) {
    // Lógica para agregar la notificación al dropdown o mostrar una alerta
    const notificationsDropdown = document.getElementById('notifications-dropdown')
    if (notificationsDropdown) {
      notificationsDropdown.insertAdjacentHTML('afterbegin', data.message)
    }
    
    // Actualizar el contador de notificaciones no leídas
    const unreadCount = document.getElementById('unread-count')
    if (unreadCount) {
      unreadCount.textContent = parseInt(unreadCount.textContent) + 1
    }
  }
});
