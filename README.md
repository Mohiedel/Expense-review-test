# test

A Flutter project.

This project is a test for balance to apply for the internship position, for flutter developer. 

This project implements a Rewards Summary Page in a Flutter application where users can:
Track their total earnings from bookings made on the Balanceè platform.
View a history of cashback transactions.Cash out rewards either directly or through promo codes.
The page uses dummy data to simulate earnings and transaction history.
The application is designed to be modular, with clean separation between different components, widgets, and logic.


Design Choices
Each UI section (earnings, cashback history, cashout) is broken into its own widget. This ensures that the code is easy to maintain and extend, allowing for new features to be added in specific sections without affecting the entire codebase.
The mock data is placed in a separate file (dummy_data.dart). This approach ensures that the page remains clean and focuses solely on rendering and logic, while data can be fetched from APIs later without affecting the core layout.
Dialog for Cash Out:Instead of a direct action, the app prompts the user with a dialog to enter how much they want to cash out. This creates a better user experience and mimics a real-world scenario where users must confirm an amount before proceeding.
Animations:Simple animations using AnimatedContainer were added to make the earnings display smooth and visually appealing.
Error Handling & UX:For the cash-out process, the button becomes disabled and a loading spinner is shown, simulating a real transaction. This improves the user experience by preventing multiple accidental cash-outs.

