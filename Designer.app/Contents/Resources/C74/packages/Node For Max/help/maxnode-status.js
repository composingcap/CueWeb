const path = require('path');
const Max = require('max-api');

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);
