Ϥ
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
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:
*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:*
dtype0
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:*
dtype0
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:*
dtype0
~
dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namedense_57/kernel/m
w
%dense_57/kernel/m/Read/ReadVariableOpReadVariableOpdense_57/kernel/m*
_output_shapes

:
*
dtype0
v
dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_57/bias/m
o
#dense_57/bias/m/Read/ReadVariableOpReadVariableOpdense_57/bias/m*
_output_shapes
:*
dtype0
~
dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_58/kernel/m
w
%dense_58/kernel/m/Read/ReadVariableOpReadVariableOpdense_58/kernel/m*
_output_shapes

:*
dtype0
v
dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_58/bias/m
o
#dense_58/bias/m/Read/ReadVariableOpReadVariableOpdense_58/bias/m*
_output_shapes
:*
dtype0
~
dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_59/kernel/m
w
%dense_59/kernel/m/Read/ReadVariableOpReadVariableOpdense_59/kernel/m*
_output_shapes

:*
dtype0
v
dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_59/bias/m
o
#dense_59/bias/m/Read/ReadVariableOpReadVariableOpdense_59/bias/m*
_output_shapes
:*
dtype0
~
dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namedense_57/kernel/v
w
%dense_57/kernel/v/Read/ReadVariableOpReadVariableOpdense_57/kernel/v*
_output_shapes

:
*
dtype0
v
dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_57/bias/v
o
#dense_57/bias/v/Read/ReadVariableOpReadVariableOpdense_57/bias/v*
_output_shapes
:*
dtype0
~
dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_58/kernel/v
w
%dense_58/kernel/v/Read/ReadVariableOpReadVariableOpdense_58/kernel/v*
_output_shapes

:*
dtype0
v
dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_58/bias/v
o
#dense_58/bias/v/Read/ReadVariableOpReadVariableOpdense_58/bias/v*
_output_shapes
:*
dtype0
~
dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_59/kernel/v
w
%dense_59/kernel/v/Read/ReadVariableOpReadVariableOpdense_59/kernel/v*
_output_shapes

:*
dtype0
v
dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_59/bias/v
o
#dense_59/bias/v/Read/ReadVariableOpReadVariableOpdense_59/bias/v*
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
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
 
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
lm6m7m8m9m:m;v<v=v>v?v@vA
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
"layer_regularization_losses
	variables
#non_trainable_variables

$layers
regularization_losses
%metrics
	trainable_variables
 
 
 
 
?
&layer_regularization_losses
	variables
'non_trainable_variables

(layers
regularization_losses
)metrics
trainable_variables
[Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
*layer_regularization_losses
	variables
+non_trainable_variables

,layers
regularization_losses
-metrics
trainable_variables
[Y
VARIABLE_VALUEdense_58/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
.layer_regularization_losses
	variables
/non_trainable_variables

0layers
regularization_losses
1metrics
trainable_variables
[Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
2layer_regularization_losses
	variables
3non_trainable_variables

4layers
regularization_losses
5metrics
 trainable_variables
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
VARIABLE_VALUEdense_57/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_57/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_58/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_58/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_59/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_59/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_57/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_57/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_58/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_58/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_59/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_59/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_19_inputPlaceholder*'
_output_shapes
:?????????
*
dtype0*
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_19_inputdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*.
f)R'
%__inference_signature_wrapper_3093985
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOp%dense_57/kernel/m/Read/ReadVariableOp#dense_57/bias/m/Read/ReadVariableOp%dense_58/kernel/m/Read/ReadVariableOp#dense_58/bias/m/Read/ReadVariableOp%dense_59/kernel/m/Read/ReadVariableOp#dense_59/bias/m/Read/ReadVariableOp%dense_57/kernel/v/Read/ReadVariableOp#dense_57/bias/v/Read/ReadVariableOp%dense_58/kernel/v/Read/ReadVariableOp#dense_58/bias/v/Read/ReadVariableOp%dense_59/kernel/v/Read/ReadVariableOp#dense_59/bias/v/Read/ReadVariableOpConst*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*)
f$R"
 __inference__traced_save_3094201
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/biasdense_57/kernel/mdense_57/bias/mdense_58/kernel/mdense_58/bias/mdense_59/kernel/mdense_59/bias/mdense_57/kernel/vdense_57/bias/vdense_58/kernel/vdense_58/bias/vdense_59/kernel/vdense_59/bias/v*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*,
f'R%
#__inference__traced_restore_3094267??
?'
?
"__inference__wrapped_model_3093821
flatten_19_input9
5sequential_19_dense_57_matmul_readvariableop_resource:
6sequential_19_dense_57_biasadd_readvariableop_resource9
5sequential_19_dense_58_matmul_readvariableop_resource:
6sequential_19_dense_58_biasadd_readvariableop_resource9
5sequential_19_dense_59_matmul_readvariableop_resource:
6sequential_19_dense_59_biasadd_readvariableop_resource
identity??-sequential_19/dense_57/BiasAdd/ReadVariableOp?,sequential_19/dense_57/MatMul/ReadVariableOp?-sequential_19/dense_58/BiasAdd/ReadVariableOp?,sequential_19/dense_58/MatMul/ReadVariableOp?-sequential_19/dense_59/BiasAdd/ReadVariableOp?,sequential_19/dense_59/MatMul/ReadVariableOp?
sequential_19/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2 
sequential_19/flatten_19/Const?
 sequential_19/flatten_19/ReshapeReshapeflatten_19_input'sequential_19/flatten_19/Const:output:0*
T0*'
_output_shapes
:?????????
2"
 sequential_19/flatten_19/Reshape?
,sequential_19/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02.
,sequential_19/dense_57/MatMul/ReadVariableOp?
sequential_19/dense_57/MatMulMatMul)sequential_19/flatten_19/Reshape:output:04sequential_19/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_57/MatMul?
-sequential_19/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_57/BiasAdd/ReadVariableOp?
sequential_19/dense_57/BiasAddBiasAdd'sequential_19/dense_57/MatMul:product:05sequential_19/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_57/BiasAdd?
sequential_19/dense_57/TanhTanh'sequential_19/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_57/Tanh?
,sequential_19/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_19/dense_58/MatMul/ReadVariableOp?
sequential_19/dense_58/MatMulMatMulsequential_19/dense_57/Tanh:y:04sequential_19/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_58/MatMul?
-sequential_19/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_58/BiasAdd/ReadVariableOp?
sequential_19/dense_58/BiasAddBiasAdd'sequential_19/dense_58/MatMul:product:05sequential_19/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_58/BiasAdd?
sequential_19/dense_58/TanhTanh'sequential_19/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_58/Tanh?
,sequential_19/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_19/dense_59/MatMul/ReadVariableOp?
sequential_19/dense_59/MatMulMatMulsequential_19/dense_58/Tanh:y:04sequential_19/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_19/dense_59/MatMul?
-sequential_19/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_19/dense_59/BiasAdd/ReadVariableOp?
sequential_19/dense_59/BiasAddBiasAdd'sequential_19/dense_59/MatMul:product:05sequential_19/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_19/dense_59/BiasAdd?
IdentityIdentity'sequential_19/dense_59/BiasAdd:output:0.^sequential_19/dense_57/BiasAdd/ReadVariableOp-^sequential_19/dense_57/MatMul/ReadVariableOp.^sequential_19/dense_58/BiasAdd/ReadVariableOp-^sequential_19/dense_58/MatMul/ReadVariableOp.^sequential_19/dense_59/BiasAdd/ReadVariableOp-^sequential_19/dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2^
-sequential_19/dense_57/BiasAdd/ReadVariableOp-sequential_19/dense_57/BiasAdd/ReadVariableOp2\
,sequential_19/dense_57/MatMul/ReadVariableOp,sequential_19/dense_57/MatMul/ReadVariableOp2^
-sequential_19/dense_58/BiasAdd/ReadVariableOp-sequential_19/dense_58/BiasAdd/ReadVariableOp2\
,sequential_19/dense_58/MatMul/ReadVariableOp,sequential_19/dense_58/MatMul/ReadVariableOp2^
-sequential_19/dense_59/BiasAdd/ReadVariableOp-sequential_19/dense_59/BiasAdd/ReadVariableOp2\
,sequential_19/dense_59/MatMul/ReadVariableOp,sequential_19/dense_59/MatMul/ReadVariableOp:0 ,
*
_user_specified_nameflatten_19_input
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094011

inputs+
'dense_57_matmul_readvariableop_resource,
(dense_57_biasadd_readvariableop_resource+
'dense_58_matmul_readvariableop_resource,
(dense_58_biasadd_readvariableop_resource+
'dense_59_matmul_readvariableop_resource,
(dense_59_biasadd_readvariableop_resource
identity??dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOpu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
flatten_19/Const?
flatten_19/ReshapeReshapeinputsflatten_19/Const:output:0*
T0*'
_output_shapes
:?????????
2
flatten_19/Reshape?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMulflatten_19/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_57/BiasAdds
dense_57/TanhTanhdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_57/Tanh?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Tanh:y:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_58/BiasAdds
dense_58/TanhTanhdense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_58/Tanh?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMuldense_58/Tanh:y:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/BiasAdd?
IdentityIdentitydense_59/BiasAdd:output:0 ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093964

inputs+
'dense_57_statefulpartitionedcall_args_1+
'dense_57_statefulpartitionedcall_args_2+
'dense_58_statefulpartitionedcall_args_1+
'dense_58_statefulpartitionedcall_args_2+
'dense_59_statefulpartitionedcall_args_1+
'dense_59_statefulpartitionedcall_args_2
identity?? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
flatten_19/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_30938312
flatten_19/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0'dense_57_statefulpartitionedcall_args_1'dense_57_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_30938502"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0'dense_58_statefulpartitionedcall_args_1'dense_58_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_30938732"
 dense_58/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0'dense_59_statefulpartitionedcall_args_1'dense_59_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_30938952"
 dense_59/StatefulPartitionedCall?
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
/__inference_sequential_19_layer_call_fn_3094059

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
:?????????**
config_proto

CPU

GPU 2J 8*S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_30939642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
E__inference_dense_57_layer_call_and_return_conditional_losses_3093850

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_3094065

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????
2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:& "
 
_user_specified_nameinputs
?
?
E__inference_dense_59_layer_call_and_return_conditional_losses_3094116

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
?
E__inference_dense_58_layer_call_and_return_conditional_losses_3094099

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
*__inference_dense_58_layer_call_fn_3094106

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
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_30938732
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
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093922
flatten_19_input+
'dense_57_statefulpartitionedcall_args_1+
'dense_57_statefulpartitionedcall_args_2+
'dense_58_statefulpartitionedcall_args_1+
'dense_58_statefulpartitionedcall_args_2+
'dense_59_statefulpartitionedcall_args_1+
'dense_59_statefulpartitionedcall_args_2
identity?? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
flatten_19/PartitionedCallPartitionedCallflatten_19_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_30938312
flatten_19/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0'dense_57_statefulpartitionedcall_args_1'dense_57_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_30938502"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0'dense_58_statefulpartitionedcall_args_1'dense_58_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_30938732"
 dense_58/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0'dense_59_statefulpartitionedcall_args_1'dense_59_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_30938952"
 dense_59/StatefulPartitionedCall?
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_19_input
?/
?
 __inference__traced_save_3094201
file_prefix.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop0
,savev2_dense_57_kernel_m_read_readvariableop.
*savev2_dense_57_bias_m_read_readvariableop0
,savev2_dense_58_kernel_m_read_readvariableop.
*savev2_dense_58_bias_m_read_readvariableop0
,savev2_dense_59_kernel_m_read_readvariableop.
*savev2_dense_59_bias_m_read_readvariableop0
,savev2_dense_57_kernel_v_read_readvariableop.
*savev2_dense_57_bias_v_read_readvariableop0
,savev2_dense_58_kernel_v_read_readvariableop.
*savev2_dense_58_bias_v_read_readvariableop0
,savev2_dense_59_kernel_v_read_readvariableop.
*savev2_dense_59_bias_v_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_6ba287d215a64202a2849cb9cac5acfd/part2
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop,savev2_dense_57_kernel_m_read_readvariableop*savev2_dense_57_bias_m_read_readvariableop,savev2_dense_58_kernel_m_read_readvariableop*savev2_dense_58_bias_m_read_readvariableop,savev2_dense_59_kernel_m_read_readvariableop*savev2_dense_59_bias_m_read_readvariableop,savev2_dense_57_kernel_v_read_readvariableop*savev2_dense_57_bias_v_read_readvariableop,savev2_dense_58_kernel_v_read_readvariableop*savev2_dense_58_bias_v_read_readvariableop,savev2_dense_59_kernel_v_read_readvariableop*savev2_dense_59_bias_v_read_readvariableop"/device:CPU:0*
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
?: :
::::::
::::::
:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix
?O
?	
#__inference__traced_restore_3094267
file_prefix$
 assignvariableop_dense_57_kernel$
 assignvariableop_1_dense_57_bias&
"assignvariableop_2_dense_58_kernel$
 assignvariableop_3_dense_58_bias&
"assignvariableop_4_dense_59_kernel$
 assignvariableop_5_dense_59_bias(
$assignvariableop_6_dense_57_kernel_m&
"assignvariableop_7_dense_57_bias_m(
$assignvariableop_8_dense_58_kernel_m&
"assignvariableop_9_dense_58_bias_m)
%assignvariableop_10_dense_59_kernel_m'
#assignvariableop_11_dense_59_bias_m)
%assignvariableop_12_dense_57_kernel_v'
#assignvariableop_13_dense_57_bias_v)
%assignvariableop_14_dense_58_kernel_v'
#assignvariableop_15_dense_58_bias_v)
%assignvariableop_16_dense_59_kernel_v'
#assignvariableop_17_dense_59_bias_v
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
AssignVariableOpAssignVariableOp assignvariableop_dense_57_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_57_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_58_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_58_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_59_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_59_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_57_kernel_mIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_57_bias_mIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_58_kernel_mIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_58_bias_mIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dense_59_kernel_mIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_59_bias_mIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_dense_57_kernel_vIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_57_bias_vIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_dense_58_kernel_vIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_58_bias_vIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_59_kernel_vIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_59_bias_vIdentity_17:output:0*
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
?	
?
%__inference_signature_wrapper_3093985
flatten_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*+
f&R$
"__inference__wrapped_model_30938212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_19_input
?
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_3093831

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????
2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:& "
 
_user_specified_nameinputs
?
?
*__inference_dense_59_layer_call_fn_3094123

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
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_30938952
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
/__inference_sequential_19_layer_call_fn_3093948
flatten_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_30939392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_19_input
?	
?
E__inference_dense_57_layer_call_and_return_conditional_losses_3094081

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?	
?
/__inference_sequential_19_layer_call_fn_3094048

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
:?????????**
config_proto

CPU

GPU 2J 8*S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_30939392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
/__inference_sequential_19_layer_call_fn_3093973
flatten_19_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_19_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tin
	2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_30939642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_19_input
?
?
E__inference_dense_59_layer_call_and_return_conditional_losses_3093895

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
?
H
,__inference_flatten_19_layer_call_fn_3094070

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_30938312
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????
:& "
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093939

inputs+
'dense_57_statefulpartitionedcall_args_1+
'dense_57_statefulpartitionedcall_args_2+
'dense_58_statefulpartitionedcall_args_1+
'dense_58_statefulpartitionedcall_args_2+
'dense_59_statefulpartitionedcall_args_1+
'dense_59_statefulpartitionedcall_args_2
identity?? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
flatten_19/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_30938312
flatten_19/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0'dense_57_statefulpartitionedcall_args_1'dense_57_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_30938502"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0'dense_58_statefulpartitionedcall_args_1'dense_58_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_30938732"
 dense_58/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0'dense_59_statefulpartitionedcall_args_1'dense_59_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_30938952"
 dense_59/StatefulPartitionedCall?
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
E__inference_dense_58_layer_call_and_return_conditional_losses_3093873

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
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094037

inputs+
'dense_57_matmul_readvariableop_resource,
(dense_57_biasadd_readvariableop_resource+
'dense_58_matmul_readvariableop_resource,
(dense_58_biasadd_readvariableop_resource+
'dense_59_matmul_readvariableop_resource,
(dense_59_biasadd_readvariableop_resource
identity??dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOpu
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
flatten_19/Const?
flatten_19/ReshapeReshapeinputsflatten_19/Const:output:0*
T0*'
_output_shapes
:?????????
2
flatten_19/Reshape?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMulflatten_19/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_57/BiasAdds
dense_57/TanhTanhdense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_57/Tanh?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Tanh:y:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_58/BiasAdds
dense_58/TanhTanhdense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_58/Tanh?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMuldense_58/Tanh:y:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/BiasAdd?
IdentityIdentitydense_59/BiasAdd:output:0 ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093908
flatten_19_input+
'dense_57_statefulpartitionedcall_args_1+
'dense_57_statefulpartitionedcall_args_2+
'dense_58_statefulpartitionedcall_args_1+
'dense_58_statefulpartitionedcall_args_2+
'dense_59_statefulpartitionedcall_args_1+
'dense_59_statefulpartitionedcall_args_2
identity?? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
flatten_19/PartitionedCallPartitionedCallflatten_19_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_30938312
flatten_19/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0'dense_57_statefulpartitionedcall_args_1'dense_57_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_30938502"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0'dense_58_statefulpartitionedcall_args_1'dense_58_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_30938732"
 dense_58/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0'dense_59_statefulpartitionedcall_args_1'dense_59_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_30938952"
 dense_59/StatefulPartitionedCall?
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_19_input
?
?
*__inference_dense_57_layer_call_fn_3094088

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
:?????????**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_30938502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
flatten_19_input9
"serving_default_flatten_19_input:0?????????
<
dense_590
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
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
*B&call_and_return_all_conditional_losses
C_default_save_signature
D__call__"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_19", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_19", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_19", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "flatten_19_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 10], "config": {"batch_input_shape": [null, 10], "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_19_input"}}
?
	variables
regularization_losses
trainable_variables
	keras_api
*E&call_and_return_all_conditional_losses
F__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 10], "config": {"name": "flatten_19", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*G&call_and_return_all_conditional_losses
H__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*I&call_and_return_all_conditional_losses
J__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
?

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
*K&call_and_return_all_conditional_losses
L__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}}
m6m7m8m9m:m;v<v=v>v?v@vA"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
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
?
"layer_regularization_losses
	variables
#non_trainable_variables

$layers
regularization_losses
%metrics
	trainable_variables
D__call__
C_default_save_signature
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
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
&layer_regularization_losses
	variables
'non_trainable_variables

(layers
regularization_losses
)metrics
trainable_variables
F__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_57/kernel
:2dense_57/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
*layer_regularization_losses
	variables
+non_trainable_variables

,layers
regularization_losses
-metrics
trainable_variables
H__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
!:2dense_58/kernel
:2dense_58/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
.layer_regularization_losses
	variables
/non_trainable_variables

0layers
regularization_losses
1metrics
trainable_variables
J__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
!:2dense_59/kernel
:2dense_59/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
2layer_regularization_losses
	variables
3non_trainable_variables

4layers
regularization_losses
5metrics
 trainable_variables
L__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
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
!:
2dense_57/kernel/m
:2dense_57/bias/m
!:2dense_58/kernel/m
:2dense_58/bias/m
!:2dense_59/kernel/m
:2dense_59/bias/m
!:
2dense_57/kernel/v
:2dense_57/bias/v
!:2dense_58/kernel/v
:2dense_58/bias/v
!:2dense_59/kernel/v
:2dense_59/bias/v
?2?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094011
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093922
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094037
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093908?
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
"__inference__wrapped_model_3093821?
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
annotations? */?,
*?'
flatten_19_input?????????

?2?
/__inference_sequential_19_layer_call_fn_3093948
/__inference_sequential_19_layer_call_fn_3094059
/__inference_sequential_19_layer_call_fn_3094048
/__inference_sequential_19_layer_call_fn_3093973?
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
G__inference_flatten_19_layer_call_and_return_conditional_losses_3094065?
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
,__inference_flatten_19_layer_call_fn_3094070?
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3094081?
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
*__inference_dense_57_layer_call_fn_3094088?
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3094099?
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
*__inference_dense_58_layer_call_fn_3094106?
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
E__inference_dense_59_layer_call_and_return_conditional_losses_3094116?
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
*__inference_dense_59_layer_call_fn_3094123?
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
=B;
%__inference_signature_wrapper_3093985flatten_19_input?
"__inference__wrapped_model_3093821x9?6
/?,
*?'
flatten_19_input?????????

? "3?0
.
dense_59"?
dense_59??????????
E__inference_dense_57_layer_call_and_return_conditional_losses_3094081\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_57_layer_call_fn_3094088O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_dense_58_layer_call_and_return_conditional_losses_3094099\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_58_layer_call_fn_3094106O/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_59_layer_call_and_return_conditional_losses_3094116\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_59_layer_call_fn_3094123O/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_flatten_19_layer_call_and_return_conditional_losses_3094065X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
,__inference_flatten_19_layer_call_fn_3094070K/?,
%?"
 ?
inputs?????????

? "??????????
?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093908rA?>
7?4
*?'
flatten_19_input?????????

p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3093922rA?>
7?4
*?'
flatten_19_input?????????

p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094011h7?4
-?*
 ?
inputs?????????

p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_19_layer_call_and_return_conditional_losses_3094037h7?4
-?*
 ?
inputs?????????

p 

 
? "%?"
?
0?????????
? ?
/__inference_sequential_19_layer_call_fn_3093948eA?>
7?4
*?'
flatten_19_input?????????

p

 
? "???????????
/__inference_sequential_19_layer_call_fn_3093973eA?>
7?4
*?'
flatten_19_input?????????

p 

 
? "???????????
/__inference_sequential_19_layer_call_fn_3094048[7?4
-?*
 ?
inputs?????????

p

 
? "???????????
/__inference_sequential_19_layer_call_fn_3094059[7?4
-?*
 ?
inputs?????????

p 

 
? "???????????
%__inference_signature_wrapper_3093985?M?J
? 
C?@
>
flatten_19_input*?'
flatten_19_input?????????
"3?0
.
dense_59"?
dense_59?????????