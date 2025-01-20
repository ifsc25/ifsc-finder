---
layout: default
---

<h1>IFSC Code Finder</h1>
<input type="text" id="search" placeholder="Search by Bank Name or IFSC">
<table id="results">
  <thead>
    <tr>
      <th>Bank Name</th>
      <th>IFSC</th>
      <th>Address</th>
      <th>City</th>
      <th>State</th>
    </tr>
  </thead>
  <tbody id="ifsc-list">
  </tbody>
</table>

<script>
  // Replace this CSV with the actual data from your CSV
  const data = [
    { "Bank Name": "State Bank of India", "IFSC": "SBIN0001234", "Add1": "123 Main St", "Add2": "", "Add3": "", "City": "City Name", "State": "StateName" },
    { "Bank Name": "HDFC Bank", "IFSC": "HDFC0001234", "Add1": "456 Another St", "Add2": "", "Add3": "", "City": "City Name", "State": "StateName" }
  ];

  const searchInput = document.getElementById('search');
  const resultsTable = document.getElementById('ifsc-list');

  searchInput.addEventListener('input', function() {
    const query = searchInput.value.toLowerCase();
    const filteredData = data.filter(item => {
      return item['Bank Name'].toLowerCase().includes(query) || item['IFSC'].toLowerCase().includes(query);
    });
    updateResults(filteredData);
  });

  function updateResults(data) {
    resultsTable.innerHTML = '';
    data.forEach(item => {
      const row = document.createElement('tr');
      row.innerHTML = `
        <td>${item['Bank Name']}</td>
        <td>${item['IFSC']}</td>
        <td>${item['Add1']} ${item['Add2']} ${item['Add3']}</td>
        <td>${item['City']}</td>
        <td>${item['State']}</td>
      `;
      resultsTable.appendChild(row);
    });
  }

  updateResults(data);
</script>
