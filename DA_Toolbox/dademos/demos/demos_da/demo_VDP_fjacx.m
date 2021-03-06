function Jac = demo_VDP_fjacx(x,k,u,~,Ts)
%TEMPLATE_DNL_AN_FJACX function handle template for the Jacobian of f
%                      with respect to X for model of class ss_DNL_AN
%
%  - Input variable(s) -
%  X: current state vector
%  K: the step number
%  U: input vector
%  ~: process noise w (does not apply here)
%  TS: the sample time
%
%  - Output variable(s) -
%  FJACX: Jacobian of f with respect to X
%
%  - Construction -
%  FJACX = TEMPLATE_DNL_AN_FJACX(X,K,U,~,TS) returns Jacobian of f with respect
%  to X at step K, with input U and sample time TS
%
      alpha=0.2;

      Jac = [1 Ts;
             Ts*((-2*alpha*x(2)*(1 - x(1)))-1)   1+Ts*(alpha * (1 - x(1)^2))];

end