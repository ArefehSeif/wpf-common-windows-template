using Microsoft.Win32;
using System.Text;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CH02.CommonWindowsTemplate
{

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        //============================================================
        private void onLoadFileClicked(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Title = "Select a File";
            openFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*";

            if (openFileDialog.ShowDialog() == true)
            {
                // load and show content of text file
                string fileContent = File.ReadAllText(openFileDialog.FileName);
                FilePreview.Text = fileContent;

                // Store filename (excluding full path) in ListBox
                FileList.Items.Add(openFileDialog.FileName);
            }
        }

        private void onDeleteFileClicked(object sender, RoutedEventArgs e)
        {
            if (FileList.SelectedItem != null)
            {
                FileList.Items.Remove(FileList.SelectedItem);
                FilePreview.Text = ""; // Clear preview when deleted
            }
            else
            {
                MessageBox.Show("Please select a file to delete.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void onSaveFileClicked(object sender, RoutedEventArgs e)
        {
            if (FileList.SelectedItem != null)
            {
                string filePath = FileList.SelectedItem.ToString();

                try
                {
                    File.WriteAllText(filePath, FilePreview.Text);
                    MessageBox.Show("File saved successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error saving file: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a file before saving.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void onFileListSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FileList.SelectedItem != null)
            {
                string selectedFilePath = FileList.SelectedItem.ToString(); // Get full file path
                FilePreview.Text = File.ReadAllText(selectedFilePath); // Load file content
            }
        }


    }
}