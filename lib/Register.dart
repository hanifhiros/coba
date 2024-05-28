import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0, // Hide the app bar
        backgroundColor: Colors.white, // Match the background color
        elevation: 0, // Remove the shadow
      ),
      body: Center(
        child: Container(
          width: 360,
          height: 800,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Desa Tanggap',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'lorem ipsum lorem ipsum\nlorem ipsum lorem ipsum\nlorem ipsum lorem ipsum',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle login action
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Handle register action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Nama Lengkap',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on),
                      hintText: 'Alamat',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Konfirmasi Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle daftar action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Daftar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Atau daftar dengan',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.network(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEU7V53///8gRZUyUZrn6vKKl785VZxAW6Dh5O5yg7QmSZbR1uUxUJojR5Y2U5vx8vdbcKqyutSXosVidq3a3urM0uPCyd6ps9B7i7n09vrx9Pm4wNikrs1MZKRYbqp/j7tqfbGapsiPnMIAMY0VP5JdM9iBAAAD+UlEQVR4nO3dbVOjMBSG4fDSUEISXtRatta67v7/37hF7eiMs5iKyTmHee4Zx08i13RIhACq7K1mqCu1lqp6aC4w9fqtr5z1mnrHfiztrav6D8K2M+vRXdKmay/CsiiodydKRVG+ClvrqfclUt62L8JunZ/gVNFNwt5Q70fETH8WVusbZN7TVaYaR70XUXONGiz1TkTNDqpe60D6mq/Vqg/D6UCk3gOEEEIIIYQQQgghhMjz1hr3ofz8ZZwxxlpbFFr2NUJ9tvmbzf2u2ZbjmGXZOI6/2rLc3jZ3u0P/MGz2N0dtnZPJ9NYdN7sy+7p2q+QRtc0f70N0b0vY0tLGDuE8eUJtdH8NT5zQ2vsrfbKEOj+NVwMlCQvffO2RLDRP3/EJEubD94BihPm1Q6g0Yb77LlCIcAFQhtBdPwvKEprNAqAEoX9cAhQg1KZdudB9e54QIvTdMiB/Yb5dubA4LQSyF7qrzucFCpd/hNyFi49C7kK9dCBlLzSH1QuXA3kLi/3ahWbBaaEMoVv2Nzd/4cLTJgFC+3ydpd3eNp+65bz2dMVhOB5ORzstjX6OMVC50D9otntnJK74ahsIHHKhDw/qYxjwRuyzg0UdBKzlPncWNpQeBD86GLYaKvQQfCnoxOIg9iA8Z+4ChE+Sn410IUu+Vt4s+F7IhL8VPM6ECXeSD0OVB1xIvJc7Gaow4e/VC59XL9xInvAhhFBAEELIPwgh5B+EEPIPQgj5ByGE/INQhlD/vzChndnCy1aoq2YyIUI9t4UpWqMPW+VdUkl72T9wHXtJd6sX9rQXxRMIid+fm0C4p51OEggfaVfBEwiJl/njC0fiVfD4Qup1/vhC6nX++ELqdf74QupV8PhC6lum4guPxKdP8YXUd3lHF7bUN4VFF96uXkg9HcYXPlDfMhVdSH4pLrrwhvoO4uhC8v+uEls4Ug800YUl9WQRXdis/jOkfxgjtpD+HunYwj31ZBFd2FFPFtGF1L7oQvrpMLaQ+lJifCHxytqUfyq3MwUg5n6+JD93mohupj8Bq9ynvzMbYACcbx33YswFIYT8gxBC/kEIIf8ghJB/EELIPwgh5B+EEPIPQgj5ByGE/IMQQv5BCCH/IISQfxBCyD8IIeQfhBDyD0II+QchhPyDEEL+QQgh/yCEkH8QQsg/CCHkH4QQ8g9CCPmXUEj01rNUQl2pmuZlRKmEvlZE76ZPJbSDamjeZJNK6BpF9PrBREJdZSrrSV7Wk0ho+rMw6yimnTTCossmYWsJhtMkQm/bF2FW2vSfYgphYadfMgmztkv+auz4Qm26NrsIs6yvnPUplXGF2ltX9a9bUZfNNUNd/SThi+IKq3poLlv5B3kiS8fmdy97AAAAAElFTkSuQmCC', // URL ikon Facebook
                        ),
                        iconSize: 10,
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                      IconButton(
                        icon: Image.network(
                          'data:image/png;base64,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', // URL ikon Google
                        ),
                        iconSize: 10,
                        onPressed: () {
                          // Handle Google login
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
