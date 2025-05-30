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
using System.Windows.Shapes;

namespace BroniNedviz_Makarova.Windows
{
    /// <summary>
    /// Логика взаимодействия для Desktop.xaml
    /// </summary>
    public partial class Desktop : Window
    {
        public Desktop()
        {
            InitializeComponent();
            DtGridUsers.ItemsSource = ApplicationData.AppConnect.BroniNedviz_MakarovaEntities.GetContext().Users.ToList();
        }

        private void BtnEditUser_Click(object sender, RoutedEventArgs e)
        {
            var DesktopWindow = Window.GetWindow(this);
            EditUser edit = new EditUser();
            edit.Show();
            DesktopWindow.Close();
        }

        private void BtnAddUser_Click(object sender, RoutedEventArgs e)
        {
            var DesktopWindow = Window.GetWindow(this);
            AddUser add = new AddUser();
            add.Show();
            DesktopWindow.Close();
        }
    }
}
