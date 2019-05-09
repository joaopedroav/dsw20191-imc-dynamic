<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Calculadora de IMC</title>
      <link rel="shortcut icon" type="image/x-icon" href="images/imc.jpg" />
      <link href='http://fonts.googleapis.com/css?family=Roboto:100,300' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link rel="stylesheet" href="css/style.css">
   </head>
   <body>
       <div class="modal-dialog">
            <div class="form-block background-container">
                <div class="row">
                    <div class="col-md-12 text-thin text-muted">
                        <h1>Índice de Massa Corporal</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-style">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" type="number" name="peso" placeholder="Peso (quilogramas)" min="0" step="0.01" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="number" name="altura" placeholder="Altura (metros)" min="0" max="2.5" step="0.01" />
                                </div>
                                <button class="btn btn-sm btn-success">Calcular</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <%
                            String pesoString = request.getParameter("peso");
                            String alturaString = request.getParameter("altura");
                            if (pesoString != null && alturaString != null) {
                                float peso = Float.parseFloat(pesoString);
                                float altura = Float.parseFloat(alturaString);
                                float imc = peso / (altura * altura);
                                String status = "";
                                if (imc < 18.5) {
                                    status = "Abaixo do peso";
                                } else if ((imc >= 18.5) && (imc <= 24.9)) {
                                    status = "Peso normal";
                                } else if ((imc > 24.9) && (imc <= 29.9)) {
                                    status = "Sobrepeso";
                                } else if ((imc > 29.9) && (imc <= 34.9)) {
                                    status = "Obesidade grau 1";
                                } else if ((imc > 34.9) && (imc <= 39.9)) {
                                    status = "Obesidade grau 2";
                                } else {
                                    status = "Obesidade grau 3";
                            }
                                String imcStr = String.format("%.2f", imc);
                                out.println("<h4>" + imcStr + " - " + status + "</h4>");
                            }
                        %>
                    </div>
                </div>
                
            </div>
       </div>
   </body>
<html>