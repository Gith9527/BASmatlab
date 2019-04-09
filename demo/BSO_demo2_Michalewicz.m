clear
clc
%% parameters description
help BSOoptim

%% set three parameters at least: objective function handle, lower bound and upper bound
% set initial step-size,sensing length and random seed
options = BASoptimset;
options.step1 = 4;
options.d1 = 2;
options.n = 200;
options.vmax = 2;
options.vmin = -2;
options.seed = 1;
options.lambda = 0.4;

fit = BSOoptim(@Michalewicz,[],[-6,0],[-1,2],[-3.9149,0.4089;-2.3984,1.7562],options);

fit.par
fit.fitness

figure(1),clf(1),
plot(fit.data(:,1),fit.data(:,end),'r-o')
hold on
plot(fit.data(:,1),fit.best,'b-.')
xlabel('iteration')
ylabel('minimum value')
hold off

