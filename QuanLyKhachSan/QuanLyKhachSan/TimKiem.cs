using QuanLyKhachSan.Model;
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
    public partial class TimKiem : Form
    {
        QuanLyKhachSanEntities3 db = new QuanLyKhachSanEntities3();
        IEnumerable<PhieuTT> tt;
        IEnumerable<KhachHang> kh;
        IEnumerable<Model.DichVu> dv;
        IEnumerable<Model.Phong> phong;
        public TimKiem()
        {
            InitializeComponent();
        }

        private void btnTimKiemKH_Click(object sender, EventArgs e)
        {
            string tenkh = textBox1.Text;
            string cmnd = textBox2.Text;
            string sdt = textBox3.Text;
            string qt = textBox4.Text;
            DateTime ngayden = dateTimePicker1.Value;
            DateTime ngaydi = dateTimePicker2.Value;
            if (string.IsNullOrEmpty(tenkh))
            {
                tenkh = null;
            }
            if (string.IsNullOrEmpty(cmnd))
            {
                cmnd = null;
            }
            if (string.IsNullOrEmpty(sdt))
            {
                sdt = null;
            }
            if (string.IsNullOrEmpty(qt))
            {
                qt = null;
            }
            kh = db.KhachHangs.Where(x => x.TenKH.Contains(tenkh) || x.CMND.Contains(cmnd) || x.QuocTich.Contains(qt) ||
            x.SDT.Contains(sdt));
            if (dateTimePicker1.Checked)
            {

                kh = from p in kh
                     join a in db.MaPhieuDKs on p.MaKH equals a.MaKH
                     where a.NgayDen.Value.Date == ngayden.Date
                     select p;
            }
            if (dateTimePicker2.Checked)
            {
                var kha = from p in kh
                          join a in db.MaPhieuDKs on p.MaKH equals a.MaKH

                          select
                          new
                          {
                              p.MaKH,
                              p.TenKH,
                              p.GioiTinh,
                              p.SDT,
                              p.QuocTich,
                              p.CMND,
                              a.NgayDen,
                              a.NgayDi
                          };
                kha = kha.Where(p => p.NgayDi != null);
                kha = kha.Where(p => p.NgayDi.Value.Date == ngaydi.Date);
                dataGridView1.DataSource = kha.ToList();
                return;
            }
            dataGridView1.DataSource = kh.ToList();
        }

        private void btnTimKiemDV_Click(object sender, EventArgs e)
        {
            int a;
            if(textBox5.Text!="")
            {
                dv = from d in db.DichVus where d.TenDV == textBox5.Text select d;
            }
            if(textBox6.Text!="")
            {
                int.TryParse(textBox6.Text, out a);
                dv = from d in db.DichVus where d.GiaDV == a select d;
            }
            dataGridView2.DataSource = dv.ToList();
        }

        private void TimKiem_Load(object sender, EventArgs e)
        {
            var loaiphong = db.LoaiPhongs.Select(p => p.TenLP).ToList();
            for (int i = 0; i < loaiphong.Count(); i++)
            {
                string l1 = loaiphong.ElementAt(i);
                comboBox1.Items.Add(l1);

            }
            var kieuphong = db.KieuPhongs.Select(p => p.TenKP).ToList();
            for (int j = 0; j < kieuphong.Count(); j++)
            {

                comboBox2.Items.Add(kieuphong.ElementAt(j));
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int v;
            phong = from a in db.Phongs select a;
            if (textBox7.Text!="")
            {
                phong = from a in phong where a.TenPhong.Contains(textBox7.Text) select a;
            }
            if(int.TryParse(textBox10.Text, out v))
            {
                phong = from m in phong where m.GiaPhong.Gia == v select m;
            }
            if(comboBox1.Text!="")
            {
                string malp = comboBox1.Text.TrimEnd();
                phong = from m in phong
                        join k in db.GiaPhongs on m.MaPhong equals k.MaPhong
                        join h in db.LoaiPhongs on k.MaLP equals h.MaLP
                        where h.TenLP.TrimEnd() == malp
                        select m;

            }
            if (comboBox2.Text != "")
            {
                string malp = comboBox2.Text.TrimEnd();
                phong = from m in phong
                        join k in db.GiaPhongs on m.MaPhong equals k.MaPhong
                        join h in db.KieuPhongs on k.MaKP equals h.MaKP
                        where h.TenKP.TrimEnd() == malp
                        select m;

            }
            dataGridView3.DataSource = phong.ToList();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            phong = null;
            comboBox1.Refresh();
            comboBox2.Refresh();
            textBox7.Clear();
            textBox10.Clear();
            dataGridView3.ClearSelection();
        }
    }
    
}
