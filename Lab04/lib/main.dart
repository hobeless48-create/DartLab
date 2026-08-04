import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chapter 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = AppBar().preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final contentHeight = screenHeight - appBarHeight - statusBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 4 Demo'),
        backgroundColor: Colors.blue.shade900.withOpacity(0.8),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Background Image (Local asset or fallback gradient/image to avoid network CORS issue)
          Positioned.fill(
            child: Image.network(
              'https://img.magnific.com/free-vector/abstract-blue-technology-background_23-2149352058.jpg?semt=ais_hybrid&w=740&q=80',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade900, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                );
              },
            ),
          ),
          // Dark Overlay for readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          // Main Content
          SafeArea(
            child: SizedBox(
              height: contentHeight,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Remote Network Image
                      Image.network(
                        'https://www.tstar.com/hubfs/blog/blog-hero-how-are-semiconductors-manufactured.jpg',
                        height: 150,
                        fit: BoxFit.contain,
                        loadingBuilder: (context, child, progress) {
                          return progress == null
                              ? child
                              : const Center(
                                  child: CircularProgressIndicator(),
                                );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const SizedBox.shrink(); // Hide error placeholder completely
                        },
                      ),

                      const SizedBox(height: 24),

                      // Local Asset Image (Logo.png)
                      Image.asset(
                        'Asset/Logo.png',
                        height: 100,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const SizedBox.shrink(); // Hide error placeholder completely
                        },
                      ),

                      const SizedBox(height: 24),

                      // Decorated Container containing text
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blue.shade500),
                        ),
                        child: Text(
                          'Hello, Flutter Widgets!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.prompt(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade100,
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Buttons with Blue Theme Styling
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Elevated button clicked');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade700,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Elevated'),
                          ),

                          const SizedBox(width: 10),

                          OutlinedButton(
                            onPressed: () {
                              print('Outlined button clicked');
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.blue.shade400),
                              foregroundColor: Colors.blue.shade300,
                            ),
                            child: const Text('Outlined'),
                          ),

                          const SizedBox(width: 10),

                          TextButton(
                            onPressed: () {
                              print('Text button clicked');
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.blue.shade300,
                            ),
                            child: const Text('Text'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 48), // Increased padding to move the icon button lower

                      // Icon Button
                      IconButton(
                        onPressed: () {
                          print('Info icon clicked');
                        },
                        icon: const Icon(Icons.info),
                        iconSize: 32,
                        color: Colors.blue.shade300,
                        tooltip: 'Information',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
