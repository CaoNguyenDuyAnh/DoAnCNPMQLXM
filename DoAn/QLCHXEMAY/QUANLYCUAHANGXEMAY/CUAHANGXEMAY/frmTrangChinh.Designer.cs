﻿
namespace CUAHANGXEMAY
{
    partial class frmTrangChinh
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.panel1 = new System.Windows.Forms.Panel();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.panel2 = new System.Windows.Forms.Panel();
            this.chartControl1 = new DevExpress.XtraCharts.ChartControl();
            this.btnXeMay = new System.Windows.Forms.ToolStripButton();
            this.btnNhanVien = new System.Windows.Forms.ToolStripButton();
            this.btnKhachHang = new System.Windows.Forms.ToolStripButton();
            this.btnBanHang = new System.Windows.Forms.ToolStripButton();
            this.btnBaoCao = new System.Windows.Forms.ToolStripButton();
            this.btnDangXuat = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).BeginInit();
            this.SuspendLayout();
            // 
            // toolStrip1
            // 
            this.toolStrip1.AutoSize = false;
            this.toolStrip1.BackColor = System.Drawing.Color.PeachPuff;
            this.toolStrip1.Dock = System.Windows.Forms.DockStyle.Left;
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(32, 32);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnXeMay,
            this.btnNhanVien,
            this.btnKhachHang,
            this.btnBanHang,
            this.btnBaoCao,
            this.btnDangXuat});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Padding = new System.Windows.Forms.Padding(0, 0, 4, 0);
            this.toolStrip1.Size = new System.Drawing.Size(232, 786);
            this.toolStrip1.TabIndex = 0;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.PeachPuff;
            this.panel1.Controls.Add(this.labelControl1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(232, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1323, 61);
            this.panel1.TabIndex = 2;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.ForeColor = System.Drawing.Color.Black;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseForeColor = true;
            this.labelControl1.Location = new System.Drawing.Point(315, 8);
            this.labelControl1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(895, 39);
            this.labelControl1.TabIndex = 3;
            this.labelControl1.Text = "TOP 10 SẢN PHẨM BÁN CHẠY TÍNH ĐẾN THỜI ĐIỂM HIỆN TẠI";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.chartControl1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(232, 61);
            this.panel2.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1323, 725);
            this.panel2.TabIndex = 3;
            // 
            // chartControl1
            // 
            this.chartControl1.BackColor = System.Drawing.Color.White;
            this.chartControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartControl1.Location = new System.Drawing.Point(0, 0);
            this.chartControl1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.chartControl1.Name = "chartControl1";
            this.chartControl1.SeriesSerializable = new DevExpress.XtraCharts.Series[0];
            this.chartControl1.Size = new System.Drawing.Size(1323, 725);
            this.chartControl1.TabIndex = 2;
            // 
            // btnXeMay
            // 
            this.btnXeMay.AutoSize = false;
            this.btnXeMay.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXeMay.Image = global::CUAHANGXEMAY.Properties.Resources._9579709;
            this.btnXeMay.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnXeMay.Name = "btnXeMay";
            this.btnXeMay.Size = new System.Drawing.Size(130, 80);
            this.btnXeMay.Text = "Xe máy";
            this.btnXeMay.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnXeMay.Click += new System.EventHandler(this.btnXeMay_Click);
            // 
            // btnNhanVien
            // 
            this.btnNhanVien.AutoSize = false;
            this.btnNhanVien.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNhanVien.Image = global::CUAHANGXEMAY.Properties.Resources._771208;
            this.btnNhanVien.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnNhanVien.Name = "btnNhanVien";
            this.btnNhanVien.Size = new System.Drawing.Size(130, 80);
            this.btnNhanVien.Text = "Nhân viên";
            this.btnNhanVien.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnNhanVien.Click += new System.EventHandler(this.btnNhanVien_Click);
            // 
            // btnKhachHang
            // 
            this.btnKhachHang.AutoSize = false;
            this.btnKhachHang.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKhachHang.Image = global::CUAHANGXEMAY.Properties.Resources._6738165;
            this.btnKhachHang.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnKhachHang.Name = "btnKhachHang";
            this.btnKhachHang.Size = new System.Drawing.Size(130, 80);
            this.btnKhachHang.Text = "Khách hàng";
            this.btnKhachHang.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnKhachHang.Click += new System.EventHandler(this.btnKhachHang_Click);
            // 
            // btnBanHang
            // 
            this.btnBanHang.AutoSize = false;
            this.btnBanHang.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBanHang.Image = global::CUAHANGXEMAY.Properties.Resources._9126264;
            this.btnBanHang.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnBanHang.Name = "btnBanHang";
            this.btnBanHang.Size = new System.Drawing.Size(130, 80);
            this.btnBanHang.Text = "Bán hàng";
            this.btnBanHang.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnBanHang.Click += new System.EventHandler(this.btnBanHang_Click);
            // 
            // btnBaoCao
            // 
            this.btnBaoCao.AutoSize = false;
            this.btnBaoCao.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBaoCao.Image = global::CUAHANGXEMAY.Properties.Resources._2970268;
            this.btnBaoCao.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnBaoCao.Name = "btnBaoCao";
            this.btnBaoCao.Size = new System.Drawing.Size(130, 80);
            this.btnBaoCao.Text = "Báo cáo";
            this.btnBaoCao.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnBaoCao.Click += new System.EventHandler(this.btnBaoCao_Click);
            // 
            // btnDangXuat
            // 
            this.btnDangXuat.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.btnDangXuat.AutoSize = false;
            this.btnDangXuat.Font = new System.Drawing.Font("Times New Roman", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangXuat.Image = global::CUAHANGXEMAY.Properties.Resources._2179357;
            this.btnDangXuat.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnDangXuat.Name = "btnDangXuat";
            this.btnDangXuat.Size = new System.Drawing.Size(130, 80);
            this.btnDangXuat.Text = "Đăng xuất";
            this.btnDangXuat.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnDangXuat.Click += new System.EventHandler(this.btnDangXuat_Click);
            // 
            // frmTrangChinh
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 23F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1555, 786);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.toolStrip1);
            this.Font = new System.Drawing.Font("Times New Roman", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IconOptions.Image = global::CUAHANGXEMAY.Properties.Resources._4666276;
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "frmTrangChinh";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PHẦN MỀM QUẢN LÝ CỬA HÀNG XE MÁY DUY MẠNH";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmTrangChinh_FormClosed);
            this.Load += new System.EventHandler(this.frmTrangChinh_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton btnXeMay;
        private System.Windows.Forms.ToolStripButton btnKhachHang;
        private System.Windows.Forms.ToolStripButton btnNhanVien;
        private System.Windows.Forms.ToolStripButton btnBanHang;
        private System.Windows.Forms.ToolStripButton btnBaoCao;
        private System.Windows.Forms.ToolStripButton btnDangXuat;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.Panel panel2;
        private DevExpress.XtraCharts.ChartControl chartControl1;
    }
}