/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package j48.algoritmo;


import weka.classifiers.lazy.IBk;
import weka.classifiers.trees.J48;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils.DataSource;

/**
 *
 * @author DUVAN
 */
public class J48Algoritmo {
    
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        //System.out.println(decisionJ48( 6 , 148 , 72 , 35 , 0 , 33.6 , 0.627 , 50 ));
    }
    
    public static double decisionJ48(double Pregnancies, double Glucose, double BloodPressure, double SkinThickness, double Insulin, double BMI, double DiabetesPedigreeFunction, double Age) throws Exception{
        //Carga el fichero del dataset e inicializa la fuente de datos
        DataSource source = new DataSource("j48/algoritmo/diabetes.arff");
        //Devuelve el conjunto de datos completo
        Instances dataset = source.getDataSet();
        //Indica a las instancias cual es la clase(decision), el último atributo (play)
        dataset.setClassIndex(dataset.numAttributes()-1);
        
        //Crea nuevo objeto J48
        IBk tree = new IBk();
        
        //Genera el clasificador a partir de las instancias del dataset
        tree.buildClassifier(dataset);
        System.out.println(tree.toString());
        
        //Clasifica una nueva instancia
        Instance instance = new DenseInstance(8);
        //Establece la referencia al conjunto de datos
        instance.setDataset(dataset);
        
                
        //Establece el valor de cada atributo según su índice
        instance.setValue(0, Pregnancies);
        instance.setValue(1, Glucose);
        instance.setValue(2, BloodPressure);
        instance.setValue(3, SkinThickness);
        instance.setValue(4, Insulin);
        instance.setValue(5, BMI);
        instance.setValue(6, DiabetesPedigreeFunction);
        instance.setValue(7, Age);
        
        //Clasifica la nueva instancia dada
        double result = (double) tree.classifyInstance(instance);
        
        System.out.println("Resultado de clasificar la nueva instancia: " + result);
        String msj = "";
        if (result == 0) {
            msj = "NO TIENES DIABETES - ESTAS ES SANO! ";
        } else if (result == 1) {
            msj = "OH, TIENES DIABETES! TE VAS A MORIR ";
        }
        System.out.println("Resultado de clasificar la nueva instancia: " + msj);

        //Devuelve 0 = yes || 1 = no;
        return result;
    }  

}
