﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PIS_lab_10_Web.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.SAA_SERVICESoap")]
    public interface SAA_SERVICESoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Add", ReplyAction="*")]
        int Add(int x, int y);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Sub", ReplyAction="*")]
        int Sub(int x, int y);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Mul", ReplyAction="*")]
        int Mul(int x, int y);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetSessionValue", ReplyAction="*")]
        int GetSessionValue();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SetSessionValue", ReplyAction="*")]
        void SetSessionValue(int value);
        
        // CODEGEN: Generating message contract since element name GetHistoryResult from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetHistory", ReplyAction="*")]
        PIS_lab_10_Web.ServiceReference1.GetHistoryResponse GetHistory(PIS_lab_10_Web.ServiceReference1.GetHistoryRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetHistoryRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetHistory", Namespace="http://tempuri.org/", Order=0)]
        public PIS_lab_10_Web.ServiceReference1.GetHistoryRequestBody Body;
        
        public GetHistoryRequest() {
        }
        
        public GetHistoryRequest(PIS_lab_10_Web.ServiceReference1.GetHistoryRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class GetHistoryRequestBody {
        
        public GetHistoryRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetHistoryResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetHistoryResponse", Namespace="http://tempuri.org/", Order=0)]
        public PIS_lab_10_Web.ServiceReference1.GetHistoryResponseBody Body;
        
        public GetHistoryResponse() {
        }
        
        public GetHistoryResponse(PIS_lab_10_Web.ServiceReference1.GetHistoryResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class GetHistoryResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string GetHistoryResult;
        
        public GetHistoryResponseBody() {
        }
        
        public GetHistoryResponseBody(string GetHistoryResult) {
            this.GetHistoryResult = GetHistoryResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface SAA_SERVICESoapChannel : PIS_lab_10_Web.ServiceReference1.SAA_SERVICESoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SAA_SERVICESoapClient : System.ServiceModel.ClientBase<PIS_lab_10_Web.ServiceReference1.SAA_SERVICESoap>, PIS_lab_10_Web.ServiceReference1.SAA_SERVICESoap {
        
        public SAA_SERVICESoapClient() {
        }
        
        public SAA_SERVICESoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public SAA_SERVICESoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SAA_SERVICESoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SAA_SERVICESoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int Add(int x, int y) {
            return base.Channel.Add(x, y);
        }
        
        public int Sub(int x, int y) {
            return base.Channel.Sub(x, y);
        }
        
        public int Mul(int x, int y) {
            return base.Channel.Mul(x, y);
        }
        
        public int GetSessionValue() {
            return base.Channel.GetSessionValue();
        }
        
        public void SetSessionValue(int value) {
            base.Channel.SetSessionValue(value);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        PIS_lab_10_Web.ServiceReference1.GetHistoryResponse PIS_lab_10_Web.ServiceReference1.SAA_SERVICESoap.GetHistory(PIS_lab_10_Web.ServiceReference1.GetHistoryRequest request) {
            return base.Channel.GetHistory(request);
        }
        
        public string GetHistory() {
            PIS_lab_10_Web.ServiceReference1.GetHistoryRequest inValue = new PIS_lab_10_Web.ServiceReference1.GetHistoryRequest();
            inValue.Body = new PIS_lab_10_Web.ServiceReference1.GetHistoryRequestBody();
            PIS_lab_10_Web.ServiceReference1.GetHistoryResponse retVal = ((PIS_lab_10_Web.ServiceReference1.SAA_SERVICESoap)(this)).GetHistory(inValue);
            return retVal.Body.GetHistoryResult;
        }
    }
}
