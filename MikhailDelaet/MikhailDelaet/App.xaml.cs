using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using MikhailDelaet.Model;

namespace MikhailDelaet
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static KR2_NagimovEntities DB = new KR2_NagimovEntities();
        public static User loggedUser;
    }
}
