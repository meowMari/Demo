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
using Test.ConBase;

namespace Test.Pageses
{
    /// <summary>
    /// Логика взаимодействия для ServiceListPage.xaml
    /// </summary>
    public partial class ServiceListPage : Page
    {
        public ServiceListPage()
        {
            InitializeComponent();
        }
        
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {

                //вывод данных
                ProductList.ItemsSource = ConDb.db.ServicePrice.Take(100).ToList();
                ResultTxb.Text = ProductList.Items.Count + "/" + ConDb.db.ServicePrice.Count().ToString();


            }
            catch (Exception except)

            {
                MessageBox.Show(except.Message, "Eror", MessageBoxButton.OK);

            }
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        private void TxbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ProductList.ItemsSource = ConDb.db.ServicePrice.Where(x => x.Service.Contains(TxbSearch.Text)).Take(15).ToList();
                ResultTxb.Text = ProductList.Items.Count + "/" + ConDb.db.ServicePrice.Where(x => x.Service.Contains(TxbSearch.Text)).Count().ToString();


            }
            catch (Exception)
            {
                throw;

            }

        }
    }
}
