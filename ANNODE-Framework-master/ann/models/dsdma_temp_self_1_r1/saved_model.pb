ѡ
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108??
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:<*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
~
dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*"
shared_namedense_18/kernel/m
w
%dense_18/kernel/m/Read/ReadVariableOpReadVariableOpdense_18/kernel/m*
_output_shapes

:<*
dtype0
v
dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_18/bias/m
o
#dense_18/bias/m/Read/ReadVariableOpReadVariableOpdense_18/bias/m*
_output_shapes
:*
dtype0
~
dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_19/kernel/m
w
%dense_19/kernel/m/Read/ReadVariableOpReadVariableOpdense_19/kernel/m*
_output_shapes

:*
dtype0
v
dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_19/bias/m
o
#dense_19/bias/m/Read/ReadVariableOpReadVariableOpdense_19/bias/m*
_output_shapes
:*
dtype0
~
dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_20/kernel/m
w
%dense_20/kernel/m/Read/ReadVariableOpReadVariableOpdense_20/kernel/m*
_output_shapes

:*
dtype0
v
dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_20/bias/m
o
#dense_20/bias/m/Read/ReadVariableOpReadVariableOpdense_20/bias/m*
_output_shapes
:*
dtype0
~
dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*"
shared_namedense_18/kernel/v
w
%dense_18/kernel/v/Read/ReadVariableOpReadVariableOpdense_18/kernel/v*
_output_shapes

:<*
dtype0
v
dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_18/bias/v
o
#dense_18/bias/v/Read/ReadVariableOpReadVariableOpdense_18/bias/v*
_output_shapes
:*
dtype0
~
dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_19/kernel/v
w
%dense_19/kernel/v/Read/ReadVariableOpReadVariableOpdense_19/kernel/v*
_output_shapes

:*
dtype0
v
dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_19/bias/v
o
#dense_19/bias/v/Read/ReadVariableOpReadVariableOpdense_19/bias/v*
_output_shapes
:*
dtype0
~
dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_20/kernel/v
w
%dense_20/kernel/v/Read/ReadVariableOpReadVariableOpdense_20/kernel/v*
_output_shapes

:*
dtype0
v
dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_20/bias/v
o
#dense_20/bias/v/Read/ReadVariableOpReadVariableOpdense_20/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
 
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
lm6m7m8m9m:m;v<v=v>v?v@vA
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
?
regularization_losses
"metrics
trainable_variables
#layer_regularization_losses

$layers
		variables
%non_trainable_variables
 
 
 
 
?
regularization_losses

&layers
trainable_variables
'metrics
(layer_regularization_losses
	variables
)non_trainable_variables
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

*layers
trainable_variables
+metrics
,layer_regularization_losses
	variables
-non_trainable_variables
[Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

.layers
trainable_variables
/metrics
0layer_regularization_losses
	variables
1non_trainable_variables
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses

2layers
trainable_variables
3metrics
4layer_regularization_losses
 	variables
5non_trainable_variables
 
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
yw
VARIABLE_VALUEdense_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_19/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_19/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_20/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_20/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_19/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_19/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_20/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_20/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_flatten_6_inputPlaceholder*'
_output_shapes
:?????????<*
dtype0*
shape:?????????<
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_6_inputdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*+
f&R$
"__inference_signature_wrapper_2243
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp%dense_18/kernel/m/Read/ReadVariableOp#dense_18/bias/m/Read/ReadVariableOp%dense_19/kernel/m/Read/ReadVariableOp#dense_19/bias/m/Read/ReadVariableOp%dense_20/kernel/m/Read/ReadVariableOp#dense_20/bias/m/Read/ReadVariableOp%dense_18/kernel/v/Read/ReadVariableOp#dense_18/bias/v/Read/ReadVariableOp%dense_19/kernel/v/Read/ReadVariableOp#dense_19/bias/v/Read/ReadVariableOp%dense_20/kernel/v/Read/ReadVariableOp#dense_20/bias/v/Read/ReadVariableOpConst*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: *-
config_proto

CPU

GPU2*0J 8*&
f!R
__inference__traced_save_2459
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_18/kernel/mdense_18/bias/mdense_19/kernel/mdense_19/bias/mdense_20/kernel/mdense_20/bias/mdense_18/kernel/vdense_18/bias/vdense_19/kernel/vdense_19/bias/vdense_20/kernel/vdense_20/bias/v*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: *-
config_proto

CPU

GPU2*0J 8*)
f$R"
 __inference__traced_restore_2525??
?'
?
__inference__wrapped_model_2079
flatten_6_input8
4sequential_6_dense_18_matmul_readvariableop_resource9
5sequential_6_dense_18_biasadd_readvariableop_resource8
4sequential_6_dense_19_matmul_readvariableop_resource9
5sequential_6_dense_19_biasadd_readvariableop_resource8
4sequential_6_dense_20_matmul_readvariableop_resource9
5sequential_6_dense_20_biasadd_readvariableop_resource
identity??,sequential_6/dense_18/BiasAdd/ReadVariableOp?+sequential_6/dense_18/MatMul/ReadVariableOp?,sequential_6/dense_19/BiasAdd/ReadVariableOp?+sequential_6/dense_19/MatMul/ReadVariableOp?,sequential_6/dense_20/BiasAdd/ReadVariableOp?+sequential_6/dense_20/MatMul/ReadVariableOp?
sequential_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<   2
sequential_6/flatten_6/Const?
sequential_6/flatten_6/ReshapeReshapeflatten_6_input%sequential_6/flatten_6/Const:output:0*
T0*'
_output_shapes
:?????????<2 
sequential_6/flatten_6/Reshape?
+sequential_6/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_18_matmul_readvariableop_resource*
_output_shapes

:<*
dtype02-
+sequential_6/dense_18/MatMul/ReadVariableOp?
sequential_6/dense_18/MatMulMatMul'sequential_6/flatten_6/Reshape:output:03sequential_6/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_18/MatMul?
,sequential_6/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_18/BiasAdd/ReadVariableOp?
sequential_6/dense_18/BiasAddBiasAdd&sequential_6/dense_18/MatMul:product:04sequential_6/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_18/BiasAdd?
sequential_6/dense_18/TanhTanh&sequential_6/dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_18/Tanh?
+sequential_6/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_6/dense_19/MatMul/ReadVariableOp?
sequential_6/dense_19/MatMulMatMulsequential_6/dense_18/Tanh:y:03sequential_6/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_19/MatMul?
,sequential_6/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_19/BiasAdd/ReadVariableOp?
sequential_6/dense_19/BiasAddBiasAdd&sequential_6/dense_19/MatMul:product:04sequential_6/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_19/BiasAdd?
sequential_6/dense_19/TanhTanh&sequential_6/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_19/Tanh?
+sequential_6/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_6/dense_20/MatMul/ReadVariableOp?
sequential_6/dense_20/MatMulMatMulsequential_6/dense_19/Tanh:y:03sequential_6/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_20/MatMul?
,sequential_6/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_20/BiasAdd/ReadVariableOp?
sequential_6/dense_20/BiasAddBiasAdd&sequential_6/dense_20/MatMul:product:04sequential_6/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_20/BiasAdd?
IdentityIdentity&sequential_6/dense_20/BiasAdd:output:0-^sequential_6/dense_18/BiasAdd/ReadVariableOp,^sequential_6/dense_18/MatMul/ReadVariableOp-^sequential_6/dense_19/BiasAdd/ReadVariableOp,^sequential_6/dense_19/MatMul/ReadVariableOp-^sequential_6/dense_20/BiasAdd/ReadVariableOp,^sequential_6/dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2\
,sequential_6/dense_18/BiasAdd/ReadVariableOp,sequential_6/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_18/MatMul/ReadVariableOp+sequential_6/dense_18/MatMul/ReadVariableOp2\
,sequential_6/dense_19/BiasAdd/ReadVariableOp,sequential_6/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_19/MatMul/ReadVariableOp+sequential_6/dense_19/MatMul/ReadVariableOp2\
,sequential_6/dense_20/BiasAdd/ReadVariableOp,sequential_6/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_20/MatMul/ReadVariableOp+sequential_6/dense_20/MatMul/ReadVariableOp:/ +
)
_user_specified_nameflatten_6_input
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2166
flatten_6_input+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall? dense_20/StatefulPartitionedCall?
flatten_6/PartitionedCallPartitionedCallflatten_6_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????<*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_flatten_6_layer_call_and_return_conditional_losses_20892
flatten_6/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_18_layer_call_and_return_conditional_losses_21082"
 dense_18/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_21312"
 dense_19/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_21532"
 dense_20/StatefulPartitionedCall?
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:/ +
)
_user_specified_nameflatten_6_input
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2197

inputs+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall? dense_20/StatefulPartitionedCall?
flatten_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????<*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_flatten_6_layer_call_and_return_conditional_losses_20892
flatten_6/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_18_layer_call_and_return_conditional_losses_21082"
 dense_18/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_21312"
 dense_19/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_21532"
 dense_20/StatefulPartitionedCall?
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2269

inputs+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity??dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOps
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<   2
flatten_6/Const?
flatten_6/ReshapeReshapeinputsflatten_6/Const:output:0*
T0*'
_output_shapes
:?????????<2
flatten_6/Reshape?
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:<*
dtype02 
dense_18/MatMul/ReadVariableOp?
dense_18/MatMulMatMulflatten_6/Reshape:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/MatMul?
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/BiasAdds
dense_18/TanhTanhdense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_18/Tanh?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMuldense_18/Tanh:y:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdds
dense_19/TanhTanhdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Tanh?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMuldense_19/Tanh:y:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_20/BiasAdd?
IdentityIdentitydense_20/BiasAdd:output:0 ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
'__inference_dense_19_layer_call_fn_2364

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_21312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
B__inference_dense_19_layer_call_and_return_conditional_losses_2131

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?	
?
+__inference_sequential_6_layer_call_fn_2206
flatten_6_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_6_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_21972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::22
StatefulPartitionedCallStatefulPartitionedCall:/ +
)
_user_specified_nameflatten_6_input
?
D
(__inference_flatten_6_layer_call_fn_2328

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????<*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_flatten_6_layer_call_and_return_conditional_losses_20892
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????<:& "
 
_user_specified_nameinputs
?	
?
+__inference_sequential_6_layer_call_fn_2306

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_21972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?O
?	
 __inference__traced_restore_2525
file_prefix$
 assignvariableop_dense_18_kernel$
 assignvariableop_1_dense_18_bias&
"assignvariableop_2_dense_19_kernel$
 assignvariableop_3_dense_19_bias&
"assignvariableop_4_dense_20_kernel$
 assignvariableop_5_dense_20_bias(
$assignvariableop_6_dense_18_kernel_m&
"assignvariableop_7_dense_18_bias_m(
$assignvariableop_8_dense_19_kernel_m&
"assignvariableop_9_dense_19_bias_m)
%assignvariableop_10_dense_20_kernel_m'
#assignvariableop_11_dense_20_bias_m)
%assignvariableop_12_dense_18_kernel_v'
#assignvariableop_13_dense_18_bias_v)
%assignvariableop_14_dense_19_kernel_v'
#assignvariableop_15_dense_19_bias_v)
%assignvariableop_16_dense_20_kernel_v'
#assignvariableop_17_dense_20_bias_v
identity_19??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_19_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_19_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_20_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_20_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_18_kernel_mIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_18_bias_mIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_19_kernel_mIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_19_bias_mIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dense_20_kernel_mIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_20_bias_mIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_dense_18_kernel_vIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_18_bias_vIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_dense_19_kernel_vIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_19_bias_vIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_20_kernel_vIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_20_bias_vIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names?
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_18?
Identity_19IdentityIdentity_18:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_19"#
identity_19Identity_19:output:0*]
_input_shapesL
J: ::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix
?
?
B__inference_dense_20_layer_call_and_return_conditional_losses_2374

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2180
flatten_6_input+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall? dense_20/StatefulPartitionedCall?
flatten_6/PartitionedCallPartitionedCallflatten_6_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????<*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_flatten_6_layer_call_and_return_conditional_losses_20892
flatten_6/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_18_layer_call_and_return_conditional_losses_21082"
 dense_18/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_21312"
 dense_19/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_21532"
 dense_20/StatefulPartitionedCall?
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:/ +
)
_user_specified_nameflatten_6_input
?	
?
B__inference_dense_18_layer_call_and_return_conditional_losses_2339

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
_
C__inference_flatten_6_layer_call_and_return_conditional_losses_2089

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????<   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????<2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????<:& "
 
_user_specified_nameinputs
?
_
C__inference_flatten_6_layer_call_and_return_conditional_losses_2323

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????<   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????<2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????<:& "
 
_user_specified_nameinputs
?	
?
B__inference_dense_18_layer_call_and_return_conditional_losses_2108

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2222

inputs+
'dense_18_statefulpartitionedcall_args_1+
'dense_18_statefulpartitionedcall_args_2+
'dense_19_statefulpartitionedcall_args_1+
'dense_19_statefulpartitionedcall_args_2+
'dense_20_statefulpartitionedcall_args_1+
'dense_20_statefulpartitionedcall_args_2
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall? dense_20/StatefulPartitionedCall?
flatten_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????<*-
config_proto

CPU

GPU2*0J 8*L
fGRE
C__inference_flatten_6_layer_call_and_return_conditional_losses_20892
flatten_6/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0'dense_18_statefulpartitionedcall_args_1'dense_18_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_18_layer_call_and_return_conditional_losses_21082"
 dense_18/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0'dense_19_statefulpartitionedcall_args_1'dense_19_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_19_layer_call_and_return_conditional_losses_21312"
 dense_19/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0'dense_20_statefulpartitionedcall_args_1'dense_20_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_21532"
 dense_20/StatefulPartitionedCall?
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
+__inference_sequential_6_layer_call_fn_2231
flatten_6_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_6_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_22222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::22
StatefulPartitionedCallStatefulPartitionedCall:/ +
)
_user_specified_nameflatten_6_input
?	
?
B__inference_dense_19_layer_call_and_return_conditional_losses_2357

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
'__inference_dense_20_layer_call_fn_2381

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_20_layer_call_and_return_conditional_losses_21532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
+__inference_sequential_6_layer_call_fn_2317

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_22222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
B__inference_dense_20_layer_call_and_return_conditional_losses_2153

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2295

inputs+
'dense_18_matmul_readvariableop_resource,
(dense_18_biasadd_readvariableop_resource+
'dense_19_matmul_readvariableop_resource,
(dense_19_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource
identity??dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOps
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"????<   2
flatten_6/Const?
flatten_6/ReshapeReshapeinputsflatten_6/Const:output:0*
T0*'
_output_shapes
:?????????<2
flatten_6/Reshape?
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:<*
dtype02 
dense_18/MatMul/ReadVariableOp?
dense_18/MatMulMatMulflatten_6/Reshape:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/MatMul?
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/BiasAdds
dense_18/TanhTanhdense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_18/Tanh?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMuldense_18/Tanh:y:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdds
dense_19/TanhTanhdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Tanh?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMuldense_19/Tanh:y:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_20/BiasAdd?
IdentityIdentitydense_20/BiasAdd:output:0 ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?	
?
"__inference_signature_wrapper_2243
flatten_6_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_6_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*(
f#R!
__inference__wrapped_model_20792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????<::::::22
StatefulPartitionedCallStatefulPartitionedCall:/ +
)
_user_specified_nameflatten_6_input
?
?
'__inference_dense_18_layer_call_fn_2346

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????*-
config_proto

CPU

GPU2*0J 8*K
fFRD
B__inference_dense_18_layer_call_and_return_conditional_losses_21082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????<::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?/
?
__inference__traced_save_2459
file_prefix.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop0
,savev2_dense_18_kernel_m_read_readvariableop.
*savev2_dense_18_bias_m_read_readvariableop0
,savev2_dense_19_kernel_m_read_readvariableop.
*savev2_dense_19_bias_m_read_readvariableop0
,savev2_dense_20_kernel_m_read_readvariableop.
*savev2_dense_20_bias_m_read_readvariableop0
,savev2_dense_18_kernel_v_read_readvariableop.
*savev2_dense_18_bias_v_read_readvariableop0
,savev2_dense_19_kernel_v_read_readvariableop.
*savev2_dense_19_bias_v_read_readvariableop0
,savev2_dense_20_kernel_v_read_readvariableop.
*savev2_dense_20_bias_v_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_8e406c191fdf47d097559a758c3eeed3/part2
StringJoin/inputs_1?

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop,savev2_dense_18_kernel_m_read_readvariableop*savev2_dense_18_bias_m_read_readvariableop,savev2_dense_19_kernel_m_read_readvariableop*savev2_dense_19_bias_m_read_readvariableop,savev2_dense_20_kernel_m_read_readvariableop*savev2_dense_20_bias_m_read_readvariableop,savev2_dense_18_kernel_v_read_readvariableop*savev2_dense_18_bias_v_read_readvariableop,savev2_dense_19_kernel_v_read_readvariableop*savev2_dense_19_bias_v_read_readvariableop,savev2_dense_20_kernel_v_read_readvariableop*savev2_dense_20_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 * 
dtypes
22
SaveV2?
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1?
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names?
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity?

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :<::::::<::::::<:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
flatten_6_input8
!serving_default_flatten_6_input:0?????????<<
dense_200
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
? 
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
B__call__
*C&call_and_return_all_conditional_losses
D_default_save_signature"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_6", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "batch_input_shape": [null, 60], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "batch_input_shape": [null, 60], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "flatten_6_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 60], "config": {"batch_input_shape": [null, 60], "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_6_input"}}
?
regularization_losses
trainable_variables
	variables
	keras_api
E__call__
*F&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 60], "config": {"name": "flatten_6", "trainable": true, "batch_input_shape": [null, 60], "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
G__call__
*H&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_18", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 60}}}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_19", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
?

kernel
bias
regularization_losses
trainable_variables
 	variables
!	keras_api
K__call__
*L&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}}
m6m7m8m9m:m;v<v=v>v?v@vA"
	optimizer
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
regularization_losses
"metrics
trainable_variables
#layer_regularization_losses

$layers
		variables
%non_trainable_variables
B__call__
D_default_save_signature
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses

&layers
trainable_variables
'metrics
(layer_regularization_losses
	variables
)non_trainable_variables
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
!:<2dense_18/kernel
:2dense_18/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

*layers
trainable_variables
+metrics
,layer_regularization_losses
	variables
-non_trainable_variables
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
!:2dense_19/kernel
:2dense_19/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

.layers
trainable_variables
/metrics
0layer_regularization_losses
	variables
1non_trainable_variables
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
!:2dense_20/kernel
:2dense_20/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses

2layers
trainable_variables
3metrics
4layer_regularization_losses
 	variables
5non_trainable_variables
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
!:<2dense_18/kernel/m
:2dense_18/bias/m
!:2dense_19/kernel/m
:2dense_19/bias/m
!:2dense_20/kernel/m
:2dense_20/bias/m
!:<2dense_18/kernel/v
:2dense_18/bias/v
!:2dense_19/kernel/v
:2dense_19/bias/v
!:2dense_20/kernel/v
:2dense_20/bias/v
?2?
+__inference_sequential_6_layer_call_fn_2231
+__inference_sequential_6_layer_call_fn_2306
+__inference_sequential_6_layer_call_fn_2206
+__inference_sequential_6_layer_call_fn_2317?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2180
F__inference_sequential_6_layer_call_and_return_conditional_losses_2166
F__inference_sequential_6_layer_call_and_return_conditional_losses_2295
F__inference_sequential_6_layer_call_and_return_conditional_losses_2269?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_2079?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
flatten_6_input?????????<
?2?
(__inference_flatten_6_layer_call_fn_2328?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_6_layer_call_and_return_conditional_losses_2323?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_18_layer_call_fn_2346?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_18_layer_call_and_return_conditional_losses_2339?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_19_layer_call_fn_2364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_19_layer_call_and_return_conditional_losses_2357?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_20_layer_call_fn_2381?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_20_layer_call_and_return_conditional_losses_2374?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
9B7
"__inference_signature_wrapper_2243flatten_6_input?
__inference__wrapped_model_2079w8?5
.?+
)?&
flatten_6_input?????????<
? "3?0
.
dense_20"?
dense_20??????????
B__inference_dense_18_layer_call_and_return_conditional_losses_2339\/?,
%?"
 ?
inputs?????????<
? "%?"
?
0?????????
? z
'__inference_dense_18_layer_call_fn_2346O/?,
%?"
 ?
inputs?????????<
? "???????????
B__inference_dense_19_layer_call_and_return_conditional_losses_2357\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_19_layer_call_fn_2364O/?,
%?"
 ?
inputs?????????
? "???????????
B__inference_dense_20_layer_call_and_return_conditional_losses_2374\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_20_layer_call_fn_2381O/?,
%?"
 ?
inputs?????????
? "???????????
C__inference_flatten_6_layer_call_and_return_conditional_losses_2323X/?,
%?"
 ?
inputs?????????<
? "%?"
?
0?????????<
? w
(__inference_flatten_6_layer_call_fn_2328K/?,
%?"
 ?
inputs?????????<
? "??????????<?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2166q@?=
6?3
)?&
flatten_6_input?????????<
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2180q@?=
6?3
)?&
flatten_6_input?????????<
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2269h7?4
-?*
 ?
inputs?????????<
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_6_layer_call_and_return_conditional_losses_2295h7?4
-?*
 ?
inputs?????????<
p 

 
? "%?"
?
0?????????
? ?
+__inference_sequential_6_layer_call_fn_2206d@?=
6?3
)?&
flatten_6_input?????????<
p

 
? "???????????
+__inference_sequential_6_layer_call_fn_2231d@?=
6?3
)?&
flatten_6_input?????????<
p 

 
? "???????????
+__inference_sequential_6_layer_call_fn_2306[7?4
-?*
 ?
inputs?????????<
p

 
? "???????????
+__inference_sequential_6_layer_call_fn_2317[7?4
-?*
 ?
inputs?????????<
p 

 
? "???????????
"__inference_signature_wrapper_2243?K?H
? 
A?>
<
flatten_6_input)?&
flatten_6_input?????????<"3?0
.
dense_20"?
dense_20?????????