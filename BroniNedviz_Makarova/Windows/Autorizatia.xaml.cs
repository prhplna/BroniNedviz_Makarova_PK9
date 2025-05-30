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
    /// Логика взаимодействия для Autorizatia.xaml
    /// </summary>
    public partial class Autorizatia : Window
    {
        public Autorizatia()
        {
            InitializeComponent();
        }

        private void BtnLogIn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var userObj = ApplicationData.AppConnect.ModelOdb.Users.FirstOrDefault(X => X.Login == TxtBxLogin.Text && X.Password == BoxPassw.Password);
                if (userObj == null)
                {
                    MessageBox.Show("Вы ввели неверный пароль или логин. Пожалуйста проверьте еще раз введенные данные", "Ошибка авторизации!",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    switch (userObj.UserID)
                    {
                        case 1:
                            MessageBox.Show("Вы успешно авторизировались!",
                                "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                            break;
                    }
                }
            }
            catch (Exception Ex)
            {
                MessageBox.Show("Ошибка" + Ex.Message.ToString() + "Критическая ошибка приложения!",
                              "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            var AutorWindow = Window.GetWindow(this);
            ChangedPass change = new ChangedPass();
            change.Show();
            AutorWindow.Close();
        }
    }
}
