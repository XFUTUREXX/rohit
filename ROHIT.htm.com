<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ESP8266 Robot Control</title>
</head>
<body>
  <h1>ESP8266 Robot Control</h1>
  <button onclick="sendCommand('F')">Forward</button>
  <button onclick="sendCommand('B')">Backward</button>
  <button onclick="sendCommand('S')">Stop</button>

  <script>
    function sendCommand(command) {
      fetch('/control', {
        method: 'POST',
        body: command,
      });
    }
  </script>
</body>
</html>
