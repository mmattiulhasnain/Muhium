// GDB Question Copier Widget

(function() {
  'use strict';

  function applyCustomStyles() {
    if (document.getElementById('gdb-copy-styles')) return;
    const styleSheet = document.createElement('style');
    styleSheet.id = 'gdb-copy-styles';
    styleSheet.textContent = `#gdb-copy-container{position:fixed;bottom:30px;left:50%;transform:translateX(-50%);z-index:10000}#gdb-copy-btn{background-color:#007bff;color:#fff;border:none;padding:10px 20px;border-radius:5px;font-size:15px;font-weight:500;cursor:pointer;box-shadow:0 2px 8px rgba(0,0,0,.2);transition:all .3s ease;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,sans-serif;display:flex;align-items:center;gap:8px}.copy-icon{flex-shrink:0;vertical-align:middle}#gdb-copy-btn:hover{background-color:#0056b3;box-shadow:0 4px 12px rgba(0,0,0,.3);transform:translateY(-2px)}#gdb-copy-btn:active{background-color:#004085;transform:translateY(0)}@media (max-width:768px){#gdb-copy-btn{padding:10px 20px;font-size:15px}.copy-icon{width:17px;height:17px}}@media (max-width:480px){#gdb-copy-btn{padding:8px 16px;font-size:14px}.copy-icon{width:16px;height:16px}}`;
    document.head.appendChild(styleSheet);
  }

  // Create and inject the button
  function initializeCopyWidget() {
    // Don't show button on GDB StudentMessage page (where students submit GDB)
    if (window.location.pathname.includes('/GDB/StudentMessage.aspx')) {
      return;
    }

    if (document.getElementById('gdb-copy-container')) return;

    // Check if page is a GDB page
    const gdbHeader = document.querySelector('h3.m-subheader__title.m-subheader__title--separator');
    if (!gdbHeader || !gdbHeader.innerText.includes('GDB')) {
      return;
    }

    // Inject styles first
    applyCustomStyles();

    // Create button container
    const wrapper = document.createElement('div');
    wrapper.id = 'gdb-copy-container';

    // Create button
    const actionButton = document.createElement('button');
    actionButton.id = 'gdb-copy-btn';
    actionButton.type = 'button';
    actionButton.innerHTML = '<svg class="copy-icon" viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm3 4H8c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h11c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2zm0 16H8V7h11v14z"/></svg>Copy GDB Question';

    actionButton.title = 'Copy the GDB question to clipboard';

    // Add click event listener
    actionButton.addEventListener('click', handleQuestionCopy);

    wrapper.appendChild(actionButton);
    document.body.appendChild(wrapper);
  }

  // Function to extract table data into a readable format
  function formatTableContent(tableNode) {
    const rows = tableNode.querySelectorAll('tr');
    if (rows.length === 0) return '';

    let finalTable = '';
    const parsedRows = [];

    rows.forEach(row => {
      const cells = row.querySelectorAll('td, th');
      const currentRow = [];

      cells.forEach(cell => {
        let text = cell.innerText.trim();
        text = text.replace(/\s+/g, ' ');
        currentRow.push(text);
      });

      if (currentRow.length > 0) {
        parsedRows.push(currentRow);
      }
    });

    if (parsedRows.length > 0) {
      finalTable += parsedRows[0].join(' | ') + '\n';
      finalTable += parsedRows[0].map(() => '---').join(' | ') + '\n';

      for (let i = 1; i < parsedRows.length; i++) {
        finalTable += parsedRows[i].join(' | ') + '\n';
      }
    }

    return finalTable;
  }

  // Function to extract and format description with tables
  function parseDescriptionContent(descriptionNode) {
    let extractedText = '';

    const clonedNode = descriptionNode.cloneNode(true);

    const tables = clonedNode.querySelectorAll('table');
    tables.forEach(table => {
      const formattedTable = formatTableContent(table);

      if (formattedTable) {
        table.textContent = '\n' + formattedTable + '\n';
      }
    });

    extractedText = clonedNode.innerText;

    return extractedText;
  }

  // Function to extract and copy GDB question
  function handleQuestionCopy() {
    try {
      const totalMarksField = document.getElementById('MainContent_lblTotalMarks');
      const startDateField = document.getElementById('MainContent_lblStartDate');
      const endDateField = document.getElementById('MainContent_lblEndDate');
      const statusField = document.getElementById('MainContent_lblStatus');
      const titleField = document.getElementById('MainContent_lblTitle');
      const descriptionField = document.getElementById('MainContent_lblDescription');

      if (!titleField && !descriptionField) {
        alert('Could not find GDB question on this page.');
        return;
      }

      let outputText = '';

      // Add metadata section
      if (totalMarksField || startDateField || endDateField || statusField) {
        outputText += '=== GDB Information ===\n\n';

        if (totalMarksField) {
          outputText += 'Total Marks: ' + totalMarksField.innerText.trim() + '\n';
        }

        if (startDateField) {
          outputText += 'Starting Date: ' + startDateField.innerText.trim() + '\n';
        }

        if (endDateField) {
          outputText += 'Closing Date: ' + endDateField.innerText.trim() + '\n';
        }

        if (statusField) {
          outputText += 'Status: ' + statusField.innerText.trim() + '\n';
        }

        outputText += '\n';
      }

      // Add title
      if (titleField) {
        outputText += '=== Question Title ===\n\n';
        outputText += titleField.innerText + '\n\n';
      }

      // Add description
      if (descriptionField) {
        outputText += '=== Question Description ===\n\n';
        const descriptionText = parseDescriptionContent(descriptionField);
        outputText += descriptionText;
      }

      // Copy to clipboard
      if (navigator.clipboard && navigator.clipboard.writeText) {
        navigator.clipboard.writeText(outputText).then(() => {
          const actionButton = document.getElementById('gdb-copy-btn');
          const originalHTML = actionButton.innerHTML;

          actionButton.innerHTML = '<svg class="copy-icon" viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"/></svg>Copied!';

          setTimeout(() => {
            actionButton.innerHTML = originalHTML;
          }, 1000);

        }).catch(error => {
          alert('Failed to copy: ' + error);
        });
      } else {
        const textarea = document.createElement('textarea');
        textarea.value = outputText;
        document.body.appendChild(textarea);
        textarea.select();
        document.execCommand('copy');
        document.body.removeChild(textarea);
        alert('GDB Question copied to clipboard!');
      }

    } catch (error) {
      alert('Error copying question: ' + error.message);
    }
  }

  // Wait for DOM to be ready and create button
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initializeCopyWidget);
  } else {
    initializeCopyWidget();
  }
})();
