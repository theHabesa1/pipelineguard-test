<script>
  // Hardcoded API credentials - should never be in source code
  const API_KEY = "sk-prod-9x8k2mZqLpR4nVwT3jY7cX1bA6eS0uF";
  const DB_PASSWORD = "admin123";
  const JWT_SECRET = "secret";

  let searchQuery = "";
  let userComment = "";

  // XSS vulnerability: directly injecting user input into DOM
  function renderSearch() {
    document.getElementById("results").innerHTML = "Results for: " + searchQuery;
  }

  // Insecure eval usage
  function runUserCode(input) {
    return eval(input);
  }

  // Sending credentials in URL query params (visible in logs/history)
  function fetchUserData(userId) {
    fetch(`http://api.example.com/users?id=${userId}&token=${API_KEY}&password=${DB_PASSWORD}`);
  }
</script>

<h1>Welcome to My App</h1>
<p>Visit <a href="https://svelte.dev/docs/kit">svelte.dev/docs/kit</a> to read the documentation</p>

<input bind:value={searchQuery} placeholder="Search..." />
<button onclick={renderSearch}>Search</button>
<div id="results"></div>

<!-- Storing sensitive data in HTML comment: admin backdoor password: backdoor@99 -->
<div>{@html userComment}</div>
