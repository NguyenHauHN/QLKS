using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhachSan
{
    public partial class FormLogin : Form
    {
        QuanLyKhachSan.Model.QuanLyKhachSanEntities3 db = new Model.QuanLyKhachSanEntities3();
        public FormLogin()
        {
           
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            txtPassword.Focus();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            MainForm main = new MainForm();
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            var user = db.users.FirstOrDefault(x => x.username == username && x.pass == password);
            if (user != null)
            {
                this.Hide();
                main.ShowDialog();
            }
            else
            {
                MessageBox.Show("Sai username hoặc mật khẩu.");
            }
        }
    }
}
