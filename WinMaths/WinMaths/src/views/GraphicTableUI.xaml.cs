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
using WinMaths.src.bean;
using WinMaths.src.viewModels;

namespace WinMaths.src.views
{
    /// <summary>
    /// Lógica de interacción para GraphicTableUI.xaml
    /// </summary>
    public partial class GraphicTableUI : Page
    {
        private ViewModel viewModel;

        public GraphicTableUI(ViewModel vM)
        {
            InitializeComponent();

            this.viewModel = vM;

            TableGrid.ItemsSource = viewModel.GetCollectionOfGraphicsVM(); // Puede que se esté recargando cada vez que se instancia el pages todo el rato y esté mal
            TableGrid.SelectedCellsChanged += TableGrid_SelectedCellsChanged;

            // Gestión del Botón Dibujar
            DrawGraphicButton.Click += DrawGraphicButton_Click;
            DrawGraphicButton.IsEnabled = false;

            // Gestión del Botón Modificar
            ModifyGraphicButton.Click += ModifyGraphicButton_Click;
            ModifyGraphicButton.IsEnabled = false;

            // Gestión del Botón Eliminar
            DeleteGraphicButton.Click += DeleteGraphicButton_Click;
            DeleteGraphicButton.IsEnabled = false;
        }

        private void TableGrid_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            if (TableGrid.SelectedIndex != -1) {
                DrawGraphicButton.IsEnabled = true;
                ModifyGraphicButton.IsEnabled = true;
                DeleteGraphicButton.IsEnabled = true;
            } else {
                DrawGraphicButton.IsEnabled = false;
                ModifyGraphicButton.IsEnabled = false;
                DeleteGraphicButton.IsEnabled = false;
            }
        }

        /*
        public void SetViewModel(ViewModel vM)
        {
            this.viewModel = vM;
            TableGrid.ItemsSource = viewModel.GetCollectionOfGraphicsVM(); // Puede que se esté recargando cada vez que se instancia el pages todo el rato y esté mal
            viewModel.GraphicUpdated += ViewModel_GraphicUpdated;
        }
        */

        private void DrawGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            List<Graphic> selectedGraphicList = TableGrid.SelectedItems.Cast<Graphic>().ToList();
            if (selectedGraphicList != null)
                viewModel.DrawGraphicVM(selectedGraphicList);
        }

        private void ModifyGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            ModificationsWindow modificationsWindow = new ModificationsWindow(this.viewModel);
            modificationsWindow.ShowDialog(); // Modal
            modificationsWindow.SetGraphicParameters((Graphic)TableGrid.SelectedItem);//<------------------------------------- Si selecciona varias filas que le de una ventana con un mensaje de error
        }

        private void DeleteGraphicButton_Click(object sender, RoutedEventArgs e)
        {
            List<Graphic> selectedGraphicList = TableGrid.SelectedItems.Cast<Graphic>().ToList();
            if (selectedGraphicList != null)
                viewModel.DeleteGraphicVM(selectedGraphicList);
        }
    }
}