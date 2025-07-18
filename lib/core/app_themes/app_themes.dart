import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color deepBlue = Color(0xFF0D47A1);
  static const Color primaryBlue = Color(0xFF1976D2);
  static const Color mediumBlue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFF42A5F5);
  static const Color paleBlue = Color(0xFF64B5F6);
  static const Color softBlue = Color(0xFF90CAF9);
  static const Color iceBlue = Color(0xFFBBDEFB);
  static const Color mistBlue = Color(0xFFE3F2FD);
  static const Color navyBlue = Color(0xFF1A237E);
  static const Color steelBlue = Color(0xFF37474F);
  static const Color slateBlue = Color(0xFF455A64);
  static const Color grayBlue = Color(0xFF607D8B);

  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    
    
    colorScheme: const ColorScheme.light(
      primary: primaryBlue,
      secondary: lightBlue,
      surface: mistBlue,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: deepBlue,
      error: Color(0xFF1976D2),
      onError: Colors.white,
      outline: mediumBlue,
      surfaceContainerHighest : iceBlue,
      onSurfaceVariant: slateBlue,
    ),

    
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),

    
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 4,
      shadowColor: lightBlue.withValues(alpha:  0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: deepBlue,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: deepBlue,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: primaryBlue,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primaryBlue,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: slateBlue,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: grayBlue,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: mediumBlue,
      ),
    ),

    
    iconTheme: const IconThemeData(
      color: primaryBlue,
      size: 24,
    ),

    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: mediumBlue,
      foregroundColor: Colors.white,
      elevation: 4,
    ),

    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: primaryBlue,
      unselectedItemColor: grayBlue,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),

    
    dividerTheme: const DividerThemeData(
      color: paleBlue,
      thickness: 1,
    ),
  );

  
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    
    
    colorScheme: const ColorScheme.dark(
      primary: softBlue,
      secondary: paleBlue,
      surface: Color(0xFF0A1929),
      onPrimary: deepBlue,
      onSecondary: deepBlue,
      onSurface: softBlue,
      error: Color(0xFF90CAF9),
      onError: deepBlue,
      outline: lightBlue,
      surfaceContainerHighest: navyBlue,
      onSurfaceVariant: iceBlue,
    ),

    
    appBarTheme: const AppBarTheme(
      backgroundColor: navyBlue,
      foregroundColor: softBlue,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: softBlue,
      ),
    ),

    
    cardTheme: CardThemeData(
      color: const Color(0xFF1A2332),
      elevation: 4,
      shadowColor: deepBlue.withValues(alpha:  0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: softBlue,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: softBlue,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: paleBlue,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: paleBlue,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: iceBlue,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: paleBlue,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: softBlue,
      ),
    ),

    
    iconTheme: const IconThemeData(
      color: softBlue,
      size: 24,
    ),

    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightBlue,
      foregroundColor: deepBlue,
      elevation: 4,
    ),

    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0A1929),
      selectedItemColor: softBlue,
      unselectedItemColor: grayBlue,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),

    
    dividerTheme: const DividerThemeData(
      color: steelBlue,
      thickness: 1,
    ),
  );

  
  static const LinearGradient sunnyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF42A5F5), 
      Color(0xFF90CAF9), 
    ],
  );

  static const LinearGradient cloudyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF607D8B), 
      Color(0xFF78909C), 
    ],
  );

  static const LinearGradient rainyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF1976D2), 
      Color(0xFF42A5F5), 
    ],
  );

  static const LinearGradient nightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0D47A1), 
      Color(0xFF1A237E), 
    ],
  );

  static const LinearGradient sunsetGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF1976D2), 
      Color(0xFF64B5F6), 
    ],
  );

  
  static const Map<String, Color> weatherColors = {
    'sunny': lightBlue,
    'cloudy': grayBlue,
    'rainy': primaryBlue,
    'stormy': deepBlue,
    'snowy': iceBlue,
    'foggy': steelBlue,
    'windy': paleBlue,
  };

  
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 4,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: mistBlue,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: paleBlue, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: primaryBlue, width: 2),
    ),
  );

  
  static LinearGradient getWeatherGradient(String condition) {
    switch (condition.toLowerCase()) {
      case 'sunny':
      case 'clear':
        return sunnyGradient;
      case 'cloudy':
      case 'overcast':
        return cloudyGradient;
      case 'rainy':
      case 'drizzle':
        return rainyGradient;
      case 'night':
        return nightGradient;
      case 'sunset':
      case 'sunrise':
        return sunsetGradient;
      default:
        return sunnyGradient;
    }
  }

  
  static Color getWeatherIconColor(String condition) {
    return weatherColors[condition.toLowerCase()] ?? primaryBlue;
  }
}