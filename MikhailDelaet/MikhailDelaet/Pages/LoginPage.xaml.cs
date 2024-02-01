﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MikhailDelaet.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void BLogin_Click(object sender, RoutedEventArgs e)
        {
            string login = TBLogin.Text;
            string password = TBPassword.Text;
            var logged = App.DB.User.FirstOrDefault(x => x.Login == login && x.Password == password);
            
            if(logged == null || password != TBPassword.Text)
            {
                MessageBox.Show("Неправильный логин или пароль");
                return;
            }
            
            App.loggedUser = logged;
            NavigationService.Navigate(new MainPage());
            
        }

        private void BRegistration_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrationPage());
        }
    }
}
