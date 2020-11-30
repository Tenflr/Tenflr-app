import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations.byLocale("fr_fr") +
      {
        "en_US": {
          "Terms and Services": "Terms and Services",
          "Unlock payment": "Unlock payment",
          "Create Budget Manager!!": "Create Budget Manager!!",
          "Processing Payment": "Processing Payment",
          "unlocked": "unlocked",
          "Amount locked": "Amount locked",
          "MoMo Cash Out!!": "MoMo Cash Out!!",
          "RETRY": "RETRY",
          "User smart funds": "User smart funds",
          "blocked": "blocked",
          "First Name": "First Name",
          "Confirm Payment!!": "Confirm Payment!!",
          "Invalid Withdrawal Date": "Invalid Withdrawal Date",
          "Terms of Use": "Terms of Use",
          "What do you want to name this Budget Manager?":
              "What do you want to name this Budget Manager?",
          "Withdraw using Orange mobile money":
              "Withdraw using Orange mobile money",
          "Invalid Account name": "Invalid Account name",
          "The daily Payout rate is very small. It should be at least XFA 200/day 🤑":
              "The daily Payout rate is very small. It should be at least XAF 200/day 🤑",
          "month": "month",
          "Payment with MOMO account failed! Please try again!":
              "Payment with MOMO account failed! Please try again!",
          "Unable to Create new User": "Unable to Create new User",
          "SAVE YOUR MONEY": "SAVE YOUR MONEY",
          "Enter the amount to withdraw": "Enter the amount to withdraw",
          "Make Transactions online without owning a credit card.":
              "Make Transactions online without owning a credit card.",
          "Unable to delete Savings! Please contact Support.":
              "Unable to delete Savings! Please contact Support.",
          "Create a Saving account": "Create a Saving account",
          "How much do you want to budget manage?":
              "How much do you want be managed?",
          "Current amount": "Current amount",
          "Light mode": "Light mode",
          "Please switch to automatic time update.":
              "Please switch to automatic time update.",
          "PHONE TIME INCORRECT!": "PHONE TIME INCORRECT!",
          "Choice a valid receiver of the payment.":
              "Choice a valid receiver of the payment.",
          "Create Savings": "Create Savings",
          "For a weekly Payout, Budget Duration should be greater than a week":
              "For a weekly Payout, Budget Duration should be greater than a week",
          "Deposit using MTN mobile money": "Deposit using MTN mobile money",
          "How do you want the recipient to be paid? Daily, Weekly, etc":
              "How do you want the recipient to be paid? Daily, Weekly, etc",
          "Email": "Email",
          "Adding money in savings...": "Adding money in savings...",
          "Failed to cash quick Payment Received 🤔":
              "Failed to cash quick Payment Received 🤔",
          "By continuing, you agree to the": "By continuing, you agree to the",
          " 😨 There's in an invalid field in your Budget manager. Please contact support":
              " 😨 There's in an invalid field in your Budget manager. Please contact support",
          "Error Card should be here!": "Error Card should be here!",
          "Zipcode/P0-Box": "Zipcode/P0-Box",
          "The daily Payout rate is very small. It should be at least XFA 1,000/day 🤑":
              "The daily Payout rate is very small. It should be at least XAF 1,000/day 🤑",
          "Phone auth failed, Please contact support":
              "Phone auth failed, Please contact support",
          "Make Quick Payment": "Make Quick Payment",
          "User disabled": "User disabled",
          "Server error occurred!": "Server error occurred!",
          "An error occurred while generating a QR code. Please try again!":
              "An error occurred while generating a QR code. Please try again!",
          "View all transaction history": "View all transaction history",
          "State": "State",
          "Recipient info incorrect": "Recipient info incorrect",
          "Your transaction %s, has been sent to archive":
              "Your transaction %s, has been sent to archive",
          "Savings name": "Savings name",
          "Default pin is 2580": "Default pin is 2580",
          "Verify": "Verify",
          "Your saving %s, has been hidden!":
              "Your saving %s, has been hidden!",
          "The daily Payout rate is very small.It should be at least XFA 5,000/day 🤑":
              "The daily Payout rate is very small.It should be at least XAF 5,000/day 🤑",
          "Sent": "Sent",
          "Budgets Details": "Budgets Details",
          "Language": "Language",
          "Trusted Payment": "Trusted Payment",
          "More": "More",
          "Receiver not found": "Receiver not found",
          "You have successfully added money to your Savings Account 😃":
              "You have successfully added money to your Savings Account 😃",
          "Unable to update user's information!":
              "Unable to update user's information!",
          "complete": "complete",
          "You have successfully created a Savings Account 😃":
              "You have successfully created a Savings Account 😃",
          "Failed to credit account! Try again and make sure you validate the MOMO transaction!":
              "Failed to credit account! Try again and make sure you validate the MOMO transaction!",
          "When do you want the funds to the unlocked?":
              "When do you want the funds to the unlocked?",
          "Budget Managers": "Budget Managers",
          "Chat": "Chat",
          "Ex: Retirement Plan": "Ex: Retirement Plan",
          "You have successfully created a new budget Manager Account 😃":
              "You have successfully created a new budget Manager Account 😃",
          "Please wait for next unlock": "Please wait for next unlock",
          "Unable to freeze Savings! Please contact Support.":
              "Unable to freeze Savings! Please contact Support.",
          "New Budget Manager": "New Budget Manager",
          "day": "day",
          "Delete": "Delete",
          "Savings": "Savings",
          "You entered a wrong pin!": "You entered a wrong pin!",
          "Your saving %s, has been frozen!":
              "Your saving %s, has been frozen!",
          "Unable to cashed unlock amount!": "Unable to cashed unlock amount!",
          "Your account could not be created. Please contact support":
              "Your account could not be created. Please contact support",
          "Unable to Delete Budget. Please Contact support!":
              "Unable to Delete Budget. Please Contact support!",
          "Confirm you want to make a payment of XAF %s to %s with phone number %s !":
              "Confirm you want to make a payment of XAF %s to %s with phone number %s !",
          "Withdraw using MTN mobile money": "Withdraw using MTN mobile money",
          "Sent a Budget manger": "Sent a Budget manager",
          "Payment successful": "Payment successful",
          "Address": "Address",
          "How do you want to be paid? Daily, weekly, etc":
              "How do you want to be paid? Daily, weekly, etc",
          "weekly": "weekly",
          "Gift": "Gift",
          "Create Budget manger": "Create Budget manager",
          "An Error occured": "An Error occured",
          "Amount unlocked": "Amount unlocked",
          "An Error occured getting your TrustedPay balance. Please contact support!!":
              "An Error occured getting your TrustedPay balance. Please contact support!!",
          "Invalid Savings Duration": "Invalid Savings Duration",
          "When do you want the account to be unlocked?":
              "When do you want the account to be unlocked?",
          "An unexpected error occurred!": "An unexpected error occurred!",
          "yearly": "yearly",
          "Sim Verification": "Sim Verification",
          "days": "days",
          "frozen": "frozen",
          "Unable to create budget Manager": "Unable to create budget Manager",
          "Enter an amount to save": "Enter an amount to save",
          "Create a Savings Account": "Create a Savings Account",
          "Gift Budget Manager": "Gift Budget Manager",
          "Request Payment unlock": "Request Payment unlock",
          "Your old saving %s, has been deleted!":
              "Your old saving %s, has been deleted!",
          "Insufficient permission. Please contact support":
              "Insufficient permission. Please contact support",
          "QUICK PAYMENTS": "QUICK PAYMENTS",
          "For a month Payout, Budget Duration should be greater than a month":
              "For a month Payout, Budget Duration should be greater than a month",
          "Budget manager name": "Budget manager name",
          "Tenflr": "Tenflr",
          "Unable to Hide Payment. Please contact support!":
              "Unable to Hide Payment. Please contact support!",
          "Error Occurred 😨": "Error Occurred 😨",
          "You entered an invalid verification Code!":
              "You entered an invalid verification Code!",
          "Enter the receiver's phone number or email":
              "Enter the receiver's phone number or email",
          "Wrong Pin. Try again": "Wrong Pin. Try again",
          "Unable to unlock Payment. Please contact support!":
              "Unable to unlock Payment. Please contact support!",
          "Enter Request Amount": "Enter Request Amount",
          "Please connect to the internet to continue.":
              "Please connect to the internet to continue.",
          "Sending payment...": "Sending payment...",
          "Unable to delete payment": "Unable to delete payment",
          "Pay rate": "Pay rate",
          "Payment could not be unlocked": "Payment could not be unlocked",
          "Recipient Not Found": "Recipient Not Found",
          "%s days": "%s days",
          "Trusted Pay": "Trusted Pay",
          "In development": "In development",
          "Force Unlock": "Force Unlock",
          "Your Details": "Your Details",
          "Sorry you can't pay youself🙄": "Sorry you can't pay yourself🙄",
          "Misc": "Misc",
          "Last name": "Last name",
          "Create a Savings": "Create a Savings",
          "Common": "Common",
          "Continue": "Continue",
          "How much do you want to send?": "How much do you want to send?",
          "Unable to return Payment. Please contact support!":
              "Unable to return Payment. Please contact support!",
          "week": "week",
          "Invalid Email address": "Invalid Email address",
          "Unable to unlock Savings! Please contact Support.":
              "Unable to unlock Savings! Please contact Support.",
          "Coming Soon": "Coming Soon",
          "An unexpected error occurred": "An unexpected error occurred",
          "Confirm you want to create a savings account that will be unlocked in %s!":
              "Confirm you want to create a savings account that will be unlocked in %s!",
          "Unknown error": "Unknown error",
          "Invalid unlock date. It shouldn't be in the pass.":
              "Invalid unlock date. It shouldn't be in the pass.",
          "Unable to hide Savings! Please contact Support.":
              "Unable to hide Savings! Please contact Support.",
          "Payment could not be sent!": "Payment could not be sent!",
          "Receiver": "Receiver",
          "Cancelled By User": "Cancelled By User",
          "Send Trusted Payment": "Send Trusted Payment",
          "weeks": "weeks",
          "Create a Budget Manager": "Create a Budget Manager",
          "French": "French",
          "Cashed": "Cashed",
          "Locked": "Locked",
          "TRUSTED PAYMENTS": "TRUSTED PAYMENTS",
          "Uncashed": "Uncashed",
          "Cancel": "Cancel",
          "Invalid Fist Name": "Invalid Fist Name",
          "Security": "Security",
          "New Savings Account": "New Savings Account",
          "The QR code you have scanned has expired. Please restart the payment.":
              "The QR code you have scanned has expired. Please restart the payment.",
          "What do you want to name this savings account?":
              "What do you want to name this savings account?",
          "Gift from": "Gift from",
          "An Error Occurred while loading Payment 🤔":
              "An Error Occurred while loading Payment 🤔",
          "The daily Payout rate is very small. It should be at least XFA 50,000/day 🤑":
              "The daily Payout rate is very small. It should be at least XAF 50,000/day 🤑",
          "Enter you Pin": "Enter you Pin",
          "months": "months",
          "%s years": "%s years",
          "Select the duration...": "Select the duration...",
          "First name": "First name",
          "Logging In...": "Logging In...",
          "Budgets": "Budgets",
          "Create blocked savings account into which you keep money saved for a specified period of time.":
              "Create blocked savings account into which you keep money saved for a specified period of time.",
          "Creating a new savings account...":
              "Creating a new savings account...",
          "Confirm you want to send a budget Manager gift of XFA %s to %s!":
              "Confirm you want to send a budget Manager gift of XAF %s to %s!",
          "Request": "Request",
          "Make a Quick Payment": "Make a Quick Payment",
          "The Payment was successful 😁": "The Payment was successful 😁",
          "Phone number": "Phone number",
          "locked": "locked",
          "recipient": "recipient",
          "Unable to freeze Payment. Please contact support!":
              "Unable to freeze Payment. Please contact support!",
          "Last Name": "Last Name",
          "Unable to update saving!": "Unable to update saving!",
          "Next": "Next",
          "Request a payment": "Request a payment",
          "Deposit using Orange mobile money":
              "Deposit using Orange mobile money",
          "Quick Payments": "Quick Payments",
          "Do quick and instantaneous QR-code payment everywhere you are.":
              "Do quick and instantaneous QR-code payment everywhere you are.",
          "Status": "Status",
          "daily": "daily",
          "An error occurred while scanning the QR code. Please try again!":
              "An error occurred while scanning the QR code. Please try again!",
          "Crediting your TrustedPay...": "Crediting your TrustedPay...",
          "Notifications": "Notifications",
          "Send Payment": "Send Payment",
          "This account is used on another device!":
              "This account is used on another device!",
          "Invalid credential!": "Invalid credential!",
          "Make secure and trusted payments online.":
              "Make secure and trusted payments online.",
          "active": "active",
          "Enter the amount...": "Enter the amount...",
          "How much do you want to start your savings account with?":
              "How much do you want to start your savings account with?",
          "VIRTUAL CREDIT CARD": "VIRTUAL CREDIT CARD",
          "Unable to send budget manager gift":
              "Unable to send budget manager gift",
          "Are you sure you want to force unlock this account?  This will result in a lost of %s% of the funds in the account!!!":
              "Are you sure you want to force unlock this account?  This will result in a lost of %s% of the funds in the account!!!",
          "For a daily Payout, Budget Duration should be greater than 2 days":
              "For a daily Payout, Budget Duration should be greater than 2 days",
          "Create or send Budget Managers to efficiently manage your money.":
              "Create or send Budget Managers to efficiently manage your money.",
          "Unable to create saving!": "Unable to create saving!",
          "City": "City",
          "Confirm": "Confirm",
          "Unable to Delete": "Unable to Delete",
          "Back": "Back",
          "The user couldn't be deleted":
              "The user couldn't be deleted: Either operation failed or user doesn't exist",
          "Insufficient Permission. Contact support!":
              "Insufficient Permission. Contact support!",
          "Invalid Last Name": "Invalid Last Name",
          "Insufficient Funds in TrustedPay wallet!":
              "Insufficient Funds in TrustedPay wallet!",
          "BUDGET MANAGER": "BUDGET MANAGER",
          "Enter the recipient's phone number or email":
              "Enter the recipient's phone number or email",
          "Unable to Force unlock Budget. Please Contact support!":
              "Unable to Force unlock Budget. Please Contact support!",
          "Unlock": "Unlock",
          "Trusted Payments": "Trusted Payments",
          "User not found!": "User not found!",
          "Recipient": "Recipient",
          "insufficient Permission. Contact support":
              "insufficient Permission. Contact support",
          "You entered an incorrect verification code! Please try again!!":
              "You entered an incorrect verification code! Please try again!!",
          "Deposit": "Deposit",
          "An account exist with different credentials!":
              "An account exist with different credentials!",
          "You have no notification at the moment.":
              "You have no notification at the moment.",
          "Withdraw": "Withdraw",
          "years": "years",
          "Unlock date": "Unlock date",
          "Scan to pay": "Scan to pay",
          "Unable to cash Payment. Please contact support!":
              "Unable to cash Payment. Please contact support!",
          "GetStarted": "GetStarted",
          "Operation not allowed": "Operation not allowed",
          "Please dial *126# to confirm the MOMO payment of XAF %s to credit your TrustedPay account!":
              "Please dial *126# to confirm the MOMO payment of XAF %s to credit your TrustedPay account!",
          "Continue with google": "Continue with google",
          "Scan to Pay": "Scan to Pay",
          "Account name": "Account name",
          "monthly": "monthly",
          "Insufficient permission to perform action!":
              "Insufficient permission to perform action!",
          "The user did not grant the camera permission!":
              "The user did not grant the camera permission!",
          "Confirm you want credit your TrustedPay account with a sum of XFA %s from your MOMO account with number %s! ":
              "Confirm you want credit your Tenflr account with a sum of XAF %s from your MOMO account with number %s! ",
          "Confirm you want to withdraw a sum of XFA %s from your Tenflr account to your MOMO account with number %s!":
              "Confirm you want to withdraw a sum of XFA %s from your Tenflr account to your MOMO account with number %s!",
          "A payment of %s was successfully sent to %s":
              "A payment of %s was successfully sent to %s",
          "recipient info incorrect": "recipient info incorrect",
          "Send Budget Manager": "Send Budget Manager",
          "Unable to delete Payment. Please contact support!":
              "Unable to delete Payment. Please contact support!",
          "Phone Number": "Phone Number",
          "Rate Us": "Rate Us",
          "Settings": "Settings",
          "Ex: Allowance": "Ex: Allowance",
          "Thanks for provider your info 🙂. Signing in...":
              "Thanks for provider your info 🙂. Signing in...",
          "Hide": "Hide",
          "NO INTERNET!": "NO INTERNET!",
          "Payment Details": "Payment Details",
          "Unable to force unlock Savings! Please contact Support.":
              "Unable to force unlock Savings! Please contact Support.",
          "Savings Details": "Savings Details",
          "Sign Out": "Sign Out",
          "The operation was cancelled because your local time is out-of-sync with the server time":
              "The operation was cancelled because your local time is out-of-sync with the server time",
          "year": "year",
          "Background app lock": "Background app lock",
          "A verification code has been sent to %s,\\nEnter the code to verify...":
              "A verification code has been sent to %s,\\nEnter the code to verify...",
          "Enter the amount to deposit": "Enter the amount to deposit",
          "Max lenght reached": "Max lenght reached",
          "RE-CHECK TIME": "RE-CHECK TIME",
          "Total amount": "Total amount",
          "cashed": "cashed",
          "The user with specified ID not found!":
              "The user with specified ID not found!",
          "Unable to rate User": "Unable to rate User",
          "For a yearly Payout,Budget Duration should be greater than a year":
              "For a yearly Payout,Budget Duration should be greater than a year",
          "Add": "Add",
          "Creating a new Budget Manager": "Creating a new Budget Manager",
          "Change Password": "Change Password",
          "What is the frequency of the payment you need?":
              "What is the frequency of the payment you need?",
          "Invalid action!": "Invalid action!",
          "cancel": "cancel",
          "Enable 2FA": "Enable 2FA",
          "Unable to find user": "Unable to find user",
          "Unable to hide Budget. Please Contact support!":
              "Unable to hide Budget. Please Contact support!",
          "Recipient not found": "Recipient not found",
          "For how long should this budget be manage?":
              "For how long should this budget be managed?",
          "Freeze": "Freeze",
          "Make a Trusted Payment": "Make a Trusted Payment",
          "Unable to cash unlocked Budget. Please Contact support!":
              "Unable to cash unlocked Budget. Please Contact support!",
          "Rate User": "Rate User",
          "Your transactor %s, has been sent to archive":
              "Your transactor %s, has been sent to archive",
          "Add Money to Account": "Add Money to Account",
          "Enter your Pin": "Enter your Pin",
          "credit": "credit",
          "Gift Budget Manager!!": "Gift Budget Manager!!",
          "Sender": "Sender",
          "Critical failure": "Critical failure",
          "Confirm you want to create a personal budget Manager":
              "Confirm you want to create a personal budget Manager",
          "Change language in system settings":
              "Change language in system settings",
          "Unable to update user PIN 😰. Please try again...":
              "Unable to update user PIN 😰. Please try again...",
          "PIN updated successfully 🙂": "PIN updated successfully 🙂",
          "Change your PIN": "Change your PIN",
          "Wrong PIN. Try again...": "Wrong PIN. Try again...",
          "PIN match failed. Try again...": "PIN match failed. Try again...",
          "Your new PIN must be different from the old. Try again...":
              "Your new PIN must be different from the old. Try again...",
          "Enter a new PIN": "Enter a new PIN",
          "Enter the Pin again to validate": "Enter the Pin again to validate",
          "Enter Current PIN": "Enter Current PIN",
          "Invalid amount!!": "Invalid amount!!",
          "Withdrawal into MOMO failed": "Withdrawal into MOMO failed",
          "Withdrawal in progress...": "Withdrawal in progress...",
          "Withdrawal into your MOMO account failed. Please try again!":
              "Withdrawal into your MOMO account failed. Please try again!",
          "You have successfully credited your Tenflr Account 😃":
              "You have successfully credited your Tenflr Account 😃",
          "You have successfully withdrawn money into your MOMO account 😃":
              "You have successfully transfered money into your MOMO account 😃",
          "Invalid amount!!, Enter an amount between %s XAF to %s XAF":
              "Invalid amount!!, Enter an amount between %s XAF to %s XAF",
              "English": "English",
        },
        "fr_fr": {
          "English": "Anglais",
          "Invalid amount!!, Enter an amount between %s XAF to %s XAF":
              "Montant invalide !!, Entrez un montant entre %s XAF et %s XAF",
          "You have successfully withdrawn money into your MOMO account 😃":
              "Vous avez réussi à transférer l'argent dans votre compte MOMO 😃 ",
          "You have successfully credited your Tenflr Account 😃":
              "Vous avez crédité votre compte Tenflr avec succès 😃",
          "Withdrawal into your MOMO account failed. Please try again!":
              "Le retrait de votre compte MOMO a échoué. Veuillez réessayer!",
          "Withdrawal in progress...": "Retrait en cours ...",
          "Withdrawal into MOMO failed": "Le retrait dans MOMO a échoué",
          "Confirm you want to withdraw a sum of XFA %s from your Tenflr account to your MOMO account with number %s!":
              "Confirmez que vous souhaitez retirer une somme de XFA %s de votre compte Tenflr vers votre compte MOMO avec le numéro %s!",
          "Invalid amount!!": "Montant invalide !!",
          "Enter Current PIN": "Entrer le code PIN actuel",
          "Enter the Pin again to validate":
              "Entrez à nouveau le code PIN pour valider",
          "Enter a new PIN": "Entrez un nouveau code PIN",
          "PIN match failed. Try again...":
              "Échec de la correspondance du code PIN. Réessayez ...",
          "Your new PIN must be different from the old. Try again...":
              "Votre nouveau code PIN doit être différent de l'ancien. Essayez à nouveau ... ",
          "Wrong PIN. Try again...": "Mauvais code PIN. Réessayez ...",
          "Change your PIN": "Changer votre code PIN",
          "PIN updated successfully 🙂": "PIN mis à jour avec succès 🙂",
          "Unable to update user PIN 😰. Please try again...":
              "Impossible de mettre à jour le code PIN de l'utilisateur 😰. Veuillez réessayer ...",
          "Change language in system settings":
              "Changer la langue dans les paramètres système",
          "Terms and Services": "Conditions et services",
          "Unlock payment": "Débloquer le paiement",
          "Create Budget Manager!!": "Créer un gestionnaire de budget !!",
          "Processing Payment": "Traitement du paiement",
          "unlocked": "déverrouillé",
          "Amount locked": "Montant bloqué",
          "MoMo Cash Out!!": "MoMo Cash Out !!",
          "RETRY": "RÉESSAYEZ",
          "User smart funds": "Fonds intelligents",
          "blocked": "bloqué",
          "First Name": "Prénom",
          "Confirm Payment!!": "Confirmer le paiement !!",
          "Invalid Withdrawal Date": "Date de retrait non valide",
          "Terms of Use": "Conditions d'utilisation",
          "What do you want to name this Budget Manager?":
              "Comment voulez-vous nommer ce gestionnaire de budget?",
          "Withdraw using Orange mobile money":
              "Retirer avec Orange Mobile Money",
          "Invalid Account name": "Nom de compte non valide",
          "The daily Payout rate is very small. It should be at least XFA 200/day 🤑":
              "Le taux de paiement quotidien est très faible. Il doit être d'au moins 200 XAF / jour 🤑",
          "month": "mois",
          "Payment with MOMO account failed! Please try again!":
              "Le paiement avec le compte MOMO a échoué! Veuillez réessayer!",
          "Unable to Create new User":
              "Impossible de créer un nouvel utilisateur",
          "SAVE YOUR MONEY": "ÉCONOMISE TON ARGENT",
          "Enter the amount to withdraw": "Entrez le montant à retirer",
          "Make Transactions online without owning a credit card.":
              "Effectuez des transactions en ligne sans posséder de carte de crédit.",
          "Unable to delete Savings! Please contact Support.":
              "Impossible de supprimer les économies! Veuillez contacter l'assistance.",
          "Create a Saving account": "Créer un compte d'épargne",
          "How much do you want to budget manage?":
              "Combien voulez-vous gérer?",
          "Current amount": "Montant actuel",
          "Light mode": "Mode lumière",
          "Please switch to automatic time update.":
              "Veuillez passer à la mise à jour automatique de l'heure.",
          "PHONE TIME INCORRECT!": "HEURE DU TÉLÉPHONE INCORRECTE!",
          "Choice a valid receiver of the payment.":
              "Choisissez un destinataire valide du paiement.",
          "Create Savings": "Créer des économies",
          "For a weekly Payout, Budget Duration should be greater than a week":
              "Pour un paiement hebdomadaire, la durée du budget doit être supérieure à une semaine",
          "Deposit using MTN mobile money": "Dépôt avec de l'argent mobile MTN",
          "How do you want the recipient to be paid? Daily, Weekly, etc":
              "Comment voulez-vous que le bénéficiaire soit payé? Quotidien, hebdomadaire, etc.",
          "Email": "Email",
          "Adding money in savings...": "Ajouter de l'argent aux économies ...",
          "Failed to cash quick Payment Received 🤔":
              "Échec de l'encaissement du paiement rapide reçu 🤔",
          "By continuing, you agree to the": "En continuant, vous acceptez les",
          " 😨 There's in an invalid field in your Budget manager. Please contact support":
              " 😨 Il y a un champ invalide dans votre gestionnaire de budget. Veuillez contacter l'assistance",
          "Error Card should be here!": "La carte d'erreur devrait être ici!",
          "Zipcode/P0-Box": "Code postal / P0-Box",
          "The daily Payout rate is very small. It should be at least XFA 1,000/day 🤑":
              "Le taux de paiement quotidien est très faible. Il doit être d'au moins 1000 XAF / jour 🤑",
          "Phone auth failed, Please contact support":
              "L'authentification par téléphone a échoué, veuillez contacter l'assistance",
          "Make Quick Payment": "Effectuer un paiement rapide",
          "User disabled": "Utilisateur désactivé",
          "Server error occurred!": "Une erreur de serveur s'est produite!",
          "An error occurred while generating a QR code. Please try again!":
              "Une erreur s'est produite lors de la génération d'un code QR. Veuillez réessayer!",
          "View all transaction history":
              "Afficher tout l'historique des transactions",
          "State": "Etat",
          "Recipient info incorrect":
              "Informations sur le destinataire incorrectes",
          "Your transaction %s, has been sent to archive":
              "Votre transaction %s a été envoyée en archive",
          "Savings name": "Nom de l'épargne",
          "Default pin is 2580": "La épingle par défaut est 2580",
          "Verify": "Vérifier",
          "Your saving %s, has been hidden!":
              "Votre économie %s a été masquée!",
          "The daily Payout rate is very small.It should be at least XFA 5,000/day 🤑":
              "Le taux de paiement quotidien est très faible et devrait être d'au moins 5000 XAF / jour 🤑",
          "Sent": "Envoyé",
          "Budgets Details": "Détails des budgets",
          "Language": "Langue",
          "Trusted Payment": "Paiement fiable",
          "More": "Plus",
          "Receiver not found": "Récepteur introuvable",
          "You have successfully added money to your Savings Account 😃":
              "Vous avez ajouté avec succès de l'argent à votre compte d'épargne 😃",
          "Unable to update user's information!":
              "Impossible de mettre à jour les informations de l'utilisateur!",
          "complete": "Achevée",
          "You have successfully created a Savings Account 😃":
              "Vous avez créé avec succès un compte d'épargne 😃",
          "Failed to credit account! Try again and make sure you validate the MOMO transaction!":
              "Échec du crédit du compte! Réessayez et assurez-vous de valider la transaction MOMO!",
          "When do you want the funds to the unlocked?":
              "Quand voulez-vous que les fonds soient débloqués?",
          "Budget Managers": "Gestionnaires de budget",
          "Chat": "Bavarder",
          "Ex: Retirement Plan": "Ex: régime de retraite",
          "You have successfully created a new budget Manager Account 😃":
              "Vous avez créé avec succès un nouveau compte de gestionnaire de budget 😃",
          "Please wait for next unlock":
              "Veuillez attendre le prochain déverrouillage",
          "Unable to freeze Savings! Please contact Support.":
              "Impossible de geler les économies! Veuillez contacter l'assistance.",
          "New Budget Manager": "Nouveau gestionnaire de budget",
          "day": "journée",
          "Delete": "Supprimer",
          "Savings": "Des économies",
          "You entered a wrong pin!": "Vous avez entré une mauvaise épingle!",
          "Your saving %s, has been frozen!": "Votre économie %s a été gelée!",
          "Unable to cashed unlock amount!":
              "Impossible d'encaisser le montant du déverrouillage!",
          "Your account could not be created. Please contact support":
              "Votre compte n'a pas pu être créé. Veuillez contacter l'assistance",
          "Unable to Delete Budget. Please Contact support!":
              "Impossible de supprimer le budget. Veuillez contacter le support!",
          "Confirm you want to make a payment of XAF %s to %s with phone number %s !":
              "Confirmez que vous souhaitez effectuer un paiement de XAF %s à %s avec le numéro de téléphone %s!",
          "Withdraw using MTN mobile money": "Retirer avec l'argent mobile MTN",
          "Sent a Budget manger": "Envoyé le budget",
          "Payment successful": "Paiement réussi",
          "Address": "Adresse",
          "How do you want to be paid? Daily, weekly, etc":
              "Comment voulez-vous être payé? Quotidien, hebdomadaire, etc.",
          "weekly": "hebdomadaire",
          "Gift": "Cadeau",
          "Create Budget manger": "Créer le gestionnaire de budget",
          "An Error occured": "Une erreur s'est produite",
          "Amount unlocked": "Montant débloqué",
          "An Error occured getting your TrustedPay balance. Please contact support!!":
              "Une erreur s'est produite lors de l'obtention de votre solde TrustedPay. Veuillez contacter le support !!",
          "Invalid Savings Duration": "Durée des économies non valide",
          "When do you want the account to be unlocked?":
              "Quand voulez-vous que le compte soit déverrouillé?",
          "An unexpected error occurred!": "Une erreur inattendue est apparue!",
          "yearly": "annuel",
          "Sim Verification": "Vérification Sim",
          "days": "journées",
          "frozen": "congelé",
          "Unable to create budget Manager":
              "Impossible de créer le gestionnaire de budget",
          "Enter an amount to save": "Entrez un montant à épargner",
          "Create a Savings Account": "Créer un compte d'épargne",
          "Gift Budget Manager": "Gestionnaire de budget cadeau",
          "Request Payment unlock": "Demander le déverrouillage du paiement",
          "Your old saving %s, has been deleted!":
              "Votre ancienne sauvegarde %s a été supprimée!",
          "Insufficient permission. Please contact support":
              "Permission insuffisante. Veuillez contacter l'assistance",
          "QUICK PAYMENTS": "PAIEMENTS RAPIDES",
          "For a month Payout, Budget Duration should be greater than a month":
              "Pendant un mois de paiement, la durée du budget doit être supérieure à un mois",
          "Budget manager name": "Nom du responsable du budget",
          "Tenflr": "Tenflr",
          "Unable to Hide Payment. Please contact support!":
              "Impossible de masquer le paiement. Veuillez contacter l'assistance!",
          "Error Occurred 😨": "Une erreur s'est produite 😨",
          "You entered an invalid verification Code!":
              "Vous avez entré un code de vérification non valide!",
          "Enter the receiver's phone number or email":
              "Entrez le numéro de téléphone ou l'adresse e-mail du destinataire",
          "Wrong Pin. Try again": "Mauvaise épingle. Réessayer",
          "Unable to unlock Payment. Please contact support!":
              "Impossible de déverrouiller le paiement. Veuillez contacter l'assistance!",
          "Enter Request Amount": "Entrez le montant de la demande",
          "Please connect to the internet to continue.":
              "Veuillez vous connecter à Internet pour continuer.",
          "Sending payment...": "Envoi du paiement ...",
          "Unable to delete payment": "Impossible de supprimer le paiement",
          "Pay rate": "Taux de rémunération",
          "Payment could not be unlocked":
              "Le paiement n'a pas pu être déverrouillé",
          "Recipient Not Found": "Destinataire introuvable",
          "%s days": " %s jours",
          "Trusted Pay": "Paiement fiable",
          "In development": "En développement",
          "Force Unlock": "Forcer le déverrouillage",
          "Your Details": "Vos détails",
          "Sorry you can't pay youself🙄":
              "Désolé, vous ne pouvez pas vous payer",
          "Misc": "Divers",
          "Last name": "Nom de famille",
          "Create a Savings": "Créer une épargne",
          "Common": "Commun",
          "Continue": "Continuer",
          "How much do you want to send?": "Combien voulez-vous envoyer?",
          "Unable to return Payment. Please contact support!":
              "Impossible de retourner le paiement. Veuillez contacter l'assistance!",
          "week": "la semaine",
          "Invalid Email address": "Adresse e-mail invalide",
          "Unable to unlock Savings! Please contact Support.":
              "Impossible de débloquer des économies! Veuillez contacter l'assistance.",
          "Coming Soon": "Bientôt disponible",
          "An unexpected error occurred": "une erreur inattendue est apparue",
          "Confirm you want to create a savings account that will be unlocked in %s!":
              "Confirmez que vous souhaitez créer un compte d'épargne qui sera déverrouillé dans %s!",
          "Unknown error:": "Erreur inconnue:",
          "Invalid unlock date. It shouldn't be in the pass.":
              "Date de déverrouillage non valide. Ça ne devrait pas être dans la passe.",
          "Unable to hide Savings! Please contact Support.":
              "Impossible de masquer les économies! Veuillez contacter l'assistance.",
          "Payment could not be sent!": "Le paiement n'a pas pu être envoyé!",
          "Receiver": "Receveur",
          "Cancelled By User": "Annulé par l'utilisateur",
          "Send Trusted Payment": "Envoyer un paiement sécurisé",
          "weeks": "semaines",
          "Create a Budget Manager": "Créer un gestionnaire de budget",
          "French": "français",
          "Cashed": "Encaissé",
          "Locked": "Fermé à clé",
          "TRUSTED PAYMENTS": "PAIEMENTS DE CONFIANCE",
          "Uncashed": "Non encaissé",
          "Cancel": "Annuler",
          "Invalid Fist Name": "Nom de poing invalide",
          "Security": "Sécurité",
          "New Savings Account": "Nouveau compte d'épargne",
          "The QR code you have scanned has expired. Please restart the payment.":
              "Le code QR que vous avez scanné a expiré. Veuillez redémarrer le paiement.",
          "What do you want to name this savings account?":
              "Comment voulez-vous nommer ce compte d'épargne?",
          "Gift from": "Cadeau de la part de",
          "An Error Occurred while loading Payment 🤔":
              "Une erreur s'est produite lors du chargement du paiement 🤔",
          "The daily Payout rate is very small. It should be at least XFA 50,000/day 🤑":
              "Le taux de paiement quotidien est très faible. Il doit être d'au moins 50000 XAF / jour 🤑",
          "Enter you Pin": "Entrez votre épingle",
          "months": "mois",
          "%s years": " %s années",
          "Select the duration...": "Sélectionnez la durée ...",
          "First name": "Prénom",
          "Logging In...": "Se connecter...",
          "Budgets": "Les budgets",
          "Create blocked savings account into which you keep money saved for a specified period of time.":
              "Créez un compte d'épargne bloqué dans lequel vous gardez l'argent économisé pendant une période de temps spécifiée.",
          "Creating a new savings account...":
              "Créer un nouveau compte d'épargne ...",
          "Confirm you want to send a budget Manager gift of XFA %s to %s!":
              "Confirmez que vous souhaitez envoyer un cadeau de gestionnaire de budget de XAF %s à %s!",
          "Request": "Demandez",
          "Make a Quick Payment": "Effectuer un paiement rapide",
          "The Payment was successful 😁": "Le paiement a réussi 😁",
          "Phone number": "Numéro de téléphone",
          "locked": "fermé à clé",
          "recipient": "bénéficiaire",
          "Unable to freeze Payment. Please contact support!":
              "Impossible de geler le paiement. Veuillez contacter l'assistance!",
          "Last Name": "Nom de famille",
          "Unable to update saving!":
              "Impossible de mettre à jour l'enregistrement!",
          "Next": "Suivant",
          "Request a payment": "Demander un paiement",
          "Deposit using Orange mobile money": "Dépôt avec Orange Mobile Money",
          "Quick Payments": "Paiements rapides",
          "Do quick and instantaneous QR-code payment everywhere you are.":
              "Effectuez un paiement rapide et instantané par code QR où que vous soyez.",
          "Status": "Statut",
          "daily": "quotidien",
          "An error occurred while scanning the QR code. Please try again!":
              "Une erreur s'est produite lors de la numérisation du code QR. Veuillez réessayer!",
          "Crediting your TrustedPay...": "Créditer votre TrustedPay ...",
          "Notifications": "Notifications",
          "Send Payment": "Envoyer le paiement",
          "This account is used on another device!":
              "Ce compte est utilisé sur un autre appareil!",
          "Invalid credential!": "Accréditation non valide!",
          "Make secure and trusted payments online.":
              "Effectuez des paiements en ligne sécurisés et fiables.",
          "active": "actif",
          "Enter the amount...": "Entrez le montant ...",
          "How much do you want to start your savings account with?":
              "Avec combien souhaitez-vous démarrer votre compte d'épargne?",
          "VIRTUAL CREDIT CARD": "CARTE DE CRÉDIT VIRTUELLE",
          "Unable to send budget manager gift":
              "Impossible d'envoyer le cadeau du gestionnaire de budget",
          "Are you sure you want to force unlock this account?  This will result in a lost of %s% of the funds in the account!!!":
              "Voulez-vous vraiment forcer le déverrouillage de ce compte? Cela entraînera une perte de %s% des fonds du compte !!!",
          "For a daily Payout, Budget Duration should be greater than 2 days":
              "Pour un paiement quotidien, la durée du budget doit être supérieure à 2 jours",
          "Create or send Budget Managers to efficiently manage your money.":
              "Créez ou envoyez des gestionnaires de budget pour gérer efficacement votre argent.",
          "Unable to create saving!": "Impossible de créer une sauvegarde!",
          "City": "Ville",
          "Confirm": "Confirmer",
          "Unable to Delete": "Impossible de supprimer",
          "Back": "Retour",
          "The user couldn't be deleted: Either operation failed or user doesn't exist":
              "L'utilisateur n'a pas pu être supprimé: l'opération a échoué ou l'utilisateur n'existe pas",
          "Insufficient Permission. Contact support!":
              "Permission insuffisante. Contactez le support!",
          "Invalid Last Name": "Nom de famille invalide",
          "Insufficient Funds in TrustedPay wallet!":
              "Fonds insuffisants dans le portefeuille TrustedPay!",
          "BUDGET MANAGER": "GESTIONNAIRE DE BUDGET",
          "Enter the recipient's phone number or email":
              "Saisissez le numéro de téléphone ou l'adresse e-mail du destinataire",
          "Unable to Force unlock Budget. Please Contact support!":
              "Impossible de forcer le déverrouillage du budget. Veuillez contacter le support!",
          "Unlock": "Ouvrir",
          "Trusted Payments": "Paiements fiables",
          "User not found!": "Utilisateur non trouvé!",
          "Recipient": "Bénéficiaire",
          "insufficient Permission. Contact support":
              "permission insuffisante. Contactez le support",
          "You entered an incorrect verification code! Please try again!!":
              "Vous avez entré un code de vérification incorrect! Veuillez réessayer!!",
          "Deposit": "Dépôt",
          "An account exist with different credentials!":
              "Un compte existe avec des identifiants différents!",
          "You have no notification at the moment.":
              "Vous n'avez aucune notification pour le moment.",
          "Withdraw": "Retrait",
          "years": "années",
          "Unlock date": "Date de déverrouillage",
          "Scan to pay": "Scannez pour payer",
          "Unable to cash Payment. Please contact support!":
              "Impossible d'encaisser le paiement. Veuillez contacter l'assistance!",
          "GetStarted": "Commencer",
          "Operation not allowed": "Opération non autorisée",
          "Please dial *126# to confirm the MOMO payment of XAF %s to credit your TrustedPay account!":
              "Veuillez composer le * 126 # pour confirmer le paiement MOMO de XAF %s afin de créditer votre compte TrustedPay!",
          "Continue with google": "Continuer avec google",
          "Scan to Pay": "Numériser pour payer",
          "Account name": "Nom du compte",
          "monthly": "mensuel",
          "Insufficient permission to perform action!":
              "Autorisation insuffisante pour effectuer une action!",
          "The user did not grant the camera permission!":
              "L'utilisateur n'a pas accordé l'autorisation de la caméra!",
          "Confirm you want credit your TrustedPay account with a sum of XFA %s from your MOMO account with number %s! ":
              "Confirmez que vous voulez créditer votre compte TrustedPay d'une somme de XAF %s de votre compte MOMO avec le numéro %s! ",
          "A payment of %s was successfully sent to %s":
              "Un paiement de %s a été envoyé avec succès à %s",
          "recipient info incorrect":
              "informations sur le destinataire incorrectes",
          "Send Budget Manager": "Envoyer le gestionnaire de budget",
          "Unable to delete Payment. Please contact support!":
              "Impossible de supprimer le paiement. Veuillez contacter l'assistance!",
          "Phone Number": "Numéro de téléphone",
          "Rate Us": "Évaluez nous",
          "Settings": "Réglages",
          "Ex: Allowance": "Ex: allocation",
          "Thanks for provider your info 🙂. Signing in...":
              "Merci pour le fournisseur de vos informations 🙂. Connectez-vous...",
          "Hide": "Cacher",
          "NO INTERNET!": "PAS D'INTERNET!",
          "Payment Details": "Détails de paiement",
          "Unable to force unlock Savings! Please contact Support.":
              "Impossible de forcer le déverrouillage des économies! Veuillez contacter l'assistance.",
          "Savings Details": "Détails des économies",
          "Sign Out": "Déconnexion",
          "The operation was cancelled because your local time is out-of-sync with the server time":
              "L'opération a été annulée car votre heure locale n'est pas synchronisée avec l'heure du serveur",
          "year": "an",
          "Background app lock": "Verro en arrière-plan",
          "A verification code has been sent to %s,\\nEnter the code to verify...":
              "Un code de vérification a été envoyé à %s, \\ nSaisissez le code pour vérifier ...",
          "Enter the amount to deposit": "Entrez le montant à déposer",
          "Max lenght reached": "Longueur max atteinte",
          "RE-CHECK TIME": "TEMPS DE RÉVÉRIFICATION",
          "Total amount": "Montant total",
          "cashed": "encaissé",
          "The user with specified ID not found!":
              "L'utilisateur avec l'ID spécifié est introuvable!",
          "Unable to rate User": "Impossible d'évaluer l'utilisateur",
          "For a yearly Payout,Budget Duration should be greater than a year":
              "Pour un paiement annuel, la durée du budget doit être supérieure à un an",
          "Add": "Ajouter",
          "Creating a new Budget Manager":
              "Créer un nouveau gestionnaire de budget",
          "Change Password": "Changer le mot de passe",
          "What is the frequency of the payment you need?":
              "Quelle est la fréquence de paiement dont vous avez besoin?",
          "Invalid action!": "Action invalide!",
          "cancel": "Annuler",
          "Enable 2FA": "Activer 2FA",
          "Unable to find user": "Impossible de trouver l'utilisateur",
          "Unable to hide Budget. Please Contact support!":
              "Impossible de masquer le budget. Veuillez contacter le support!",
          "Recipient not found": "Destinataire introuvable",
          "For how long should this budget be manage?":
              "Pendant combien de temps ce budget doit-il être géré?",
          "Freeze": "Geler",
          "Make a Trusted Payment": "Effectuer un paiement sécurisé",
          "Unable to cash unlocked Budget. Please Contact support!":
              "Impossible d'encaisser le budget débloqué. Veuillez contacter le support!",
          "Rate User": "Évaluer l'utilisateur",
          "Your transactor %s, has been sent to archive":
              "Votre opérateur %s a été envoyé en archive",
          "Add Money to Account": "Ajouter de l'argent au compte",
          "Enter your Pin": "Entrez votre code PIN",
          "credit": "crédit",
          "Gift Budget Manager!!": "Gestionnaire de budget cadeau !!",
          "Sender": "Expéditeur",
          "Critical failure": "Panne critique",
          "Confirm you want to create a personal budget Manager":
              "Confirmez que vous souhaitez créer un gestionnaire de budget personnel"
        },
      };

  String fill(List<Object> params) => localizeFill(this, params);

  String get i18n => localize(this, _t);
}
