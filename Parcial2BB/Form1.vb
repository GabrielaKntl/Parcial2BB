Imports System.Data.SqlClient

Public Class Form1
    Dim connectionString As String = "Data Source=BATSEBA\SQLEXPRESS01;Initial Catalog=BDParcial2BrendayBatseba;Integrated Security=True;"
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarDepartamentos()
        CargarMunicipios()
    End Sub

    Private Sub CargarDepartamentos()
        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Dim query As String = "SELECT Departamentoid, Nombre FROM DEPARTAMENTO"
            Dim adapter As New SqlDataAdapter(query, connection)
            Dim dataSet As New DataSet()

            adapter.Fill(dataSet, "DEPARTAMENTO")

            cboDepartamento.DataSource = dataSet.Tables("DEPARTAMENTO")
            cboDepartamento.DisplayMember = "Nombre"
            cboDepartamento.ValueMember = "Departamentoid"
        End Using
    End Sub

    Private Sub CargarMunicipios()
        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Dim query As String = "SELECT Municipioid, Nombre FROM MUNICIPIO"
            Dim adapter As New SqlDataAdapter(query, connection)
            Dim dataSet As New DataSet()

            adapter.Fill(dataSet, "MUNICIPIO")

            cboMunicipio.DataSource = dataSet.Tables("MUNICIPIO")
            cboMunicipio.DisplayMember = "Nombre"
            cboMunicipio.ValueMember = "Municipioid"
        End Using
    End Sub

    Private Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Dim query As String = "INSERT INTO CLIENTE (Nombre, Apellido, Departamentoid, Municipioid) VALUES (@Nombre, @Apellido, @Departamentoid, @Municipioid)"

            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Nombre", txtNombre.Text)
                command.Parameters.AddWithValue("@Apellido", txtApellido.Text)
                command.Parameters.AddWithValue("@Departamentoid", cboDepartamento.SelectedValue)
                command.Parameters.AddWithValue("@Municipioid", cboMunicipio.SelectedValue)

                command.ExecuteNonQuery()
            End Using
        End Using

        ' Muestra un mensaje de éxito.
        MessageBox.Show("Los datos se han insertado con éxito.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information)
    End Sub
End Class