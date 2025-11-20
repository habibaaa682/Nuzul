class ErrorFormatter {
  static String format(String rawError) {
    final error = rawError.toLowerCase();

    if (error.contains("email") && error.contains("exist")) {
      return "This email is already registered.";
    }

    if (error.contains("username") && error.contains("exist")) {
      return "This username is already taken.";
    }

    if (error.contains("phone")) {
      return "Invalid or already used phone number.";
    }

    if (error.contains("password")) {
      return "The password does not meet the required criteria.";
    }

    if (error.contains("socket") ||
        error.contains("network") ||
        error.contains("failed host") ||
        error.contains("connection timed out")) {
      return "Please check your internet connection and try again.";
    }

    if (error.contains("500") ||
        error.contains("internal server") ||
        error.contains("server failure")) {
      return "A server error occurred. Please try again later.";
    }

    if (error.contains("400") || error.contains("bad request")) {
      return "Your request could not be processed. Please verify the entered data.";
    }

    if (error.contains("403")) {
      return "You don't have permission to perform this action.";
    }

    if (error.contains("404")) {
      return "The requested resource was not found.";
    }

    if (error.contains("format")) {
      return "Unexpected response format received from the server.";
    }

    return "An unexpected error occurred. Please try again.";
  }
}
