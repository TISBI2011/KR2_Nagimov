using System;
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
using MikhailDelaet.Model;

namespace MikhailDelaet.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddWorkerPage.xaml
    /// </summary>
    public partial class AddWorkerPage : Page
        
    {
        Sotrudnik contextSotrudnik;
        public AddWorkerPage()
        {
            InitializeComponent();
            CBOtdel.ItemsSource = App.DB.Otdel.ToList();
            CBPlatform.ItemsSource = App.DB.Platforma.ToList();
            contextSotrudnik = new Sotrudnik();
            DataContext = contextSotrudnik;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            App.DB.Sotrudnik.Add(contextSotrudnik);
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }
        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
                NavigationService.GoBack();
        }
    }
}
