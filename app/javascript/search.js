document.addEventListener('DOMContentLoaded', function() {
  let typingTimer;
  let doneTypingInterval = 500;

  const searchInput = document.querySelector('#search-input');
  const resultsContainer = document.querySelector('#results-container');
  const container = document.querySelector('.main-container');

  searchInput.addEventListener('input', function() {
    clearTimeout(typingTimer);
    typingTimer = setTimeout(performSearch, doneTypingInterval);
  });

  function performSearch() {
    const searchForm = document.querySelector('#search-form');
    const formData = new FormData(searchForm);

    fetch(`${searchForm.action}?${new URLSearchParams(formData)}`, {
      method: 'GET',
      headers: {
        'Accept': 'text/javascript',
      },
    })
    .then(response => {
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
      return response.text();
    })
    .then(responseText => {
      resultsContainer.innerHTML = responseText;
    })
    .catch(error => {
      console.error('Error during fetch:', error);
    });
  }
});