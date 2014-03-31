import java.io.File;
import com.declarativa.interprolog.*;
import py4j.GatewayServer;

public class JavaCallsProlog {
    public static String[] testResultsFromProlog(String goal){
        XSBSubprocessEngine engine = new XSBSubprocessEngine("/usr/bin/XSB/config/i686-pc-linux-gnu/bin/xsb",false,true);
        File f = new File("prolog/test2.pl");
        //engine.consultRelative("test2.pl",null);
        engine.consultAbsolute(f);
        // Notice that 'ListModel' is referred in both deterministicGoal arguments:
        String solutionVars = (engine.deterministicGoal(goal,"[ListModel]")[0]).toString();
        String[] arr = solutionVars.replace("[", "").replace("]", "").split("[,]");
        return arr;
    }
    
    public String[] dynamicResultsFromProlog(String goal){
        XSBSubprocessEngine engine = new XSBSubprocessEngine("/usr/bin/XSB/config/i686-pc-linux-gnu/bin/xsb",false,true);
        File f = new File("prolog/test2.pl");
        //engine.consultRelative("test2.pl",null);
        engine.consultAbsolute(f);
        // Notice that 'ListModel' is referred in both deterministicGoal arguments:
        String solutionVars = (engine.deterministicGoal(goal,"[ListModel]")[0]).toString();
        String[] arr = solutionVars.replace("[", "").replace("]", "").split("[,]");
        return arr;
    }

    public static void main(String[] args) {
        /*
        String goal = "nonDeterministicGoal(X,grandfather(abraham,X),ListModel)"; 
        String[] arr = testResultsFromProlog(goal);
        for(String s : arr){
            System.out.println(s);
        } 
        */
        JavaCallsProlog app = new JavaCallsProlog();
        // app is now the gateway.entry_point
        GatewayServer server = new GatewayServer(app);
        server.start();
    }
}
