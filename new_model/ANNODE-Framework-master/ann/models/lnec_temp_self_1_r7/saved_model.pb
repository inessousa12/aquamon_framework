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
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

:
*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:*
dtype0
z
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:*
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
:*
dtype0
z
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_53/kernel
s
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes

:*
dtype0
r
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_53/bias
k
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
_output_shapes
:*
dtype0
~
dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namedense_51/kernel/m
w
%dense_51/kernel/m/Read/ReadVariableOpReadVariableOpdense_51/kernel/m*
_output_shapes

:
*
dtype0
v
dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_51/bias/m
o
#dense_51/bias/m/Read/ReadVariableOpReadVariableOpdense_51/bias/m*
_output_shapes
:*
dtype0
~
dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_52/kernel/m
w
%dense_52/kernel/m/Read/ReadVariableOpReadVariableOpdense_52/kernel/m*
_output_shapes

:*
dtype0
v
dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_52/bias/m
o
#dense_52/bias/m/Read/ReadVariableOpReadVariableOpdense_52/bias/m*
_output_shapes
:*
dtype0
~
dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_53/kernel/m
w
%dense_53/kernel/m/Read/ReadVariableOpReadVariableOpdense_53/kernel/m*
_output_shapes

:*
dtype0
v
dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_53/bias/m
o
#dense_53/bias/m/Read/ReadVariableOpReadVariableOpdense_53/bias/m*
_output_shapes
:*
dtype0
~
dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namedense_51/kernel/v
w
%dense_51/kernel/v/Read/ReadVariableOpReadVariableOpdense_51/kernel/v*
_output_shapes

:
*
dtype0
v
dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_51/bias/v
o
#dense_51/bias/v/Read/ReadVariableOpReadVariableOpdense_51/bias/v*
_output_shapes
:*
dtype0
~
dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_52/kernel/v
w
%dense_52/kernel/v/Read/ReadVariableOpReadVariableOpdense_52/kernel/v*
_output_shapes

:*
dtype0
v
dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_52/bias/v
o
#dense_52/bias/v/Read/ReadVariableOpReadVariableOpdense_52/bias/v*
_output_shapes
:*
dtype0
~
dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_53/kernel/v
w
%dense_53/kernel/v/Read/ReadVariableOpReadVariableOpdense_53/kernel/v*
_output_shapes

:*
dtype0
v
dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_53/bias/v
o
#dense_53/bias/v/Read/ReadVariableOpReadVariableOpdense_53/bias/v*
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
VARIABLE_VALUEdense_51/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_52/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_53/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_53/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_51/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_51/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_52/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_52/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_53/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_53/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_51/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_51/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_52/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_52/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_53/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_53/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_17_inputPlaceholder*'
_output_shapes
:?????????
*
dtype0*
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_17_inputdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/bias*
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
%__inference_signature_wrapper_3092127
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOp%dense_51/kernel/m/Read/ReadVariableOp#dense_51/bias/m/Read/ReadVariableOp%dense_52/kernel/m/Read/ReadVariableOp#dense_52/bias/m/Read/ReadVariableOp%dense_53/kernel/m/Read/ReadVariableOp#dense_53/bias/m/Read/ReadVariableOp%dense_51/kernel/v/Read/ReadVariableOp#dense_51/bias/v/Read/ReadVariableOp%dense_52/kernel/v/Read/ReadVariableOp#dense_52/bias/v/Read/ReadVariableOp%dense_53/kernel/v/Read/ReadVariableOp#dense_53/bias/v/Read/ReadVariableOpConst*
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
 __inference__traced_save_3092343
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/biasdense_51/kernel/mdense_51/bias/mdense_52/kernel/mdense_52/bias/mdense_53/kernel/mdense_53/bias/mdense_51/kernel/vdense_51/bias/vdense_52/kernel/vdense_52/bias/vdense_53/kernel/vdense_53/bias/v*
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
#__inference__traced_restore_3092409??
?	
?
E__inference_dense_52_layer_call_and_return_conditional_losses_3092015

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
/__inference_sequential_17_layer_call_fn_3092090
flatten_17_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_17_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
J__inference_sequential_17_layer_call_and_return_conditional_losses_30920812
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
_user_specified_nameflatten_17_input
?/
?
 __inference__traced_save_3092343
file_prefix.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop0
,savev2_dense_51_kernel_m_read_readvariableop.
*savev2_dense_51_bias_m_read_readvariableop0
,savev2_dense_52_kernel_m_read_readvariableop.
*savev2_dense_52_bias_m_read_readvariableop0
,savev2_dense_53_kernel_m_read_readvariableop.
*savev2_dense_53_bias_m_read_readvariableop0
,savev2_dense_51_kernel_v_read_readvariableop.
*savev2_dense_51_bias_v_read_readvariableop0
,savev2_dense_52_kernel_v_read_readvariableop.
*savev2_dense_52_bias_v_read_readvariableop0
,savev2_dense_53_kernel_v_read_readvariableop.
*savev2_dense_53_bias_v_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_64c0101c3dd448c098cdb2d24c749213/part2
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop,savev2_dense_51_kernel_m_read_readvariableop*savev2_dense_51_bias_m_read_readvariableop,savev2_dense_52_kernel_m_read_readvariableop*savev2_dense_52_bias_m_read_readvariableop,savev2_dense_53_kernel_m_read_readvariableop*savev2_dense_53_bias_m_read_readvariableop,savev2_dense_51_kernel_v_read_readvariableop*savev2_dense_51_bias_v_read_readvariableop,savev2_dense_52_kernel_v_read_readvariableop*savev2_dense_52_bias_v_read_readvariableop,savev2_dense_53_kernel_v_read_readvariableop*savev2_dense_53_bias_v_read_readvariableop"/device:CPU:0*
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
?	
?
E__inference_dense_51_layer_call_and_return_conditional_losses_3091992

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
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092153

inputs+
'dense_51_matmul_readvariableop_resource,
(dense_51_biasadd_readvariableop_resource+
'dense_52_matmul_readvariableop_resource,
(dense_52_biasadd_readvariableop_resource+
'dense_53_matmul_readvariableop_resource,
(dense_53_biasadd_readvariableop_resource
identity??dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOpu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
flatten_17/Const?
flatten_17/ReshapeReshapeinputsflatten_17/Const:output:0*
T0*'
_output_shapes
:?????????
2
flatten_17/Reshape?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMulMatMulflatten_17/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/BiasAdds
dense_51/TanhTanhdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_51/Tanh?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMuldense_51/Tanh:y:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/BiasAdds
dense_52/TanhTanhdense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_52/Tanh?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMulMatMuldense_52/Tanh:y:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/BiasAdd?
IdentityIdentitydense_53/BiasAdd:output:0 ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_3092207

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
?	
?
/__inference_sequential_17_layer_call_fn_3092190

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
J__inference_sequential_17_layer_call_and_return_conditional_losses_30920812
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
?
?
*__inference_dense_51_layer_call_fn_3092230

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
E__inference_dense_51_layer_call_and_return_conditional_losses_30919922
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
 
_user_specified_nameinputs
?
?
E__inference_dense_53_layer_call_and_return_conditional_losses_3092258

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
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092050
flatten_17_input+
'dense_51_statefulpartitionedcall_args_1+
'dense_51_statefulpartitionedcall_args_2+
'dense_52_statefulpartitionedcall_args_1+
'dense_52_statefulpartitionedcall_args_2+
'dense_53_statefulpartitionedcall_args_1+
'dense_53_statefulpartitionedcall_args_2
identity?? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
flatten_17/PartitionedCallPartitionedCallflatten_17_input*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_30919732
flatten_17/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0'dense_51_statefulpartitionedcall_args_1'dense_51_statefulpartitionedcall_args_2*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_30919922"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0'dense_52_statefulpartitionedcall_args_1'dense_52_statefulpartitionedcall_args_2*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_30920152"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0'dense_53_statefulpartitionedcall_args_1'dense_53_statefulpartitionedcall_args_2*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_30920372"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_17_input
?
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092106

inputs+
'dense_51_statefulpartitionedcall_args_1+
'dense_51_statefulpartitionedcall_args_2+
'dense_52_statefulpartitionedcall_args_1+
'dense_52_statefulpartitionedcall_args_2+
'dense_53_statefulpartitionedcall_args_1+
'dense_53_statefulpartitionedcall_args_2
identity?? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
flatten_17/PartitionedCallPartitionedCallinputs*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_30919732
flatten_17/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0'dense_51_statefulpartitionedcall_args_1'dense_51_statefulpartitionedcall_args_2*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_30919922"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0'dense_52_statefulpartitionedcall_args_1'dense_52_statefulpartitionedcall_args_2*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_30920152"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0'dense_53_statefulpartitionedcall_args_1'dense_53_statefulpartitionedcall_args_2*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_30920372"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092064
flatten_17_input+
'dense_51_statefulpartitionedcall_args_1+
'dense_51_statefulpartitionedcall_args_2+
'dense_52_statefulpartitionedcall_args_1+
'dense_52_statefulpartitionedcall_args_2+
'dense_53_statefulpartitionedcall_args_1+
'dense_53_statefulpartitionedcall_args_2
identity?? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
flatten_17/PartitionedCallPartitionedCallflatten_17_input*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_30919732
flatten_17/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0'dense_51_statefulpartitionedcall_args_1'dense_51_statefulpartitionedcall_args_2*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_30919922"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0'dense_52_statefulpartitionedcall_args_1'dense_52_statefulpartitionedcall_args_2*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_30920152"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0'dense_53_statefulpartitionedcall_args_1'dense_53_statefulpartitionedcall_args_2*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_30920372"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_17_input
?	
?
E__inference_dense_52_layer_call_and_return_conditional_losses_3092241

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
*__inference_dense_53_layer_call_fn_3092265

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
E__inference_dense_53_layer_call_and_return_conditional_losses_30920372
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
?'
?
"__inference__wrapped_model_3091963
flatten_17_input9
5sequential_17_dense_51_matmul_readvariableop_resource:
6sequential_17_dense_51_biasadd_readvariableop_resource9
5sequential_17_dense_52_matmul_readvariableop_resource:
6sequential_17_dense_52_biasadd_readvariableop_resource9
5sequential_17_dense_53_matmul_readvariableop_resource:
6sequential_17_dense_53_biasadd_readvariableop_resource
identity??-sequential_17/dense_51/BiasAdd/ReadVariableOp?,sequential_17/dense_51/MatMul/ReadVariableOp?-sequential_17/dense_52/BiasAdd/ReadVariableOp?,sequential_17/dense_52/MatMul/ReadVariableOp?-sequential_17/dense_53/BiasAdd/ReadVariableOp?,sequential_17/dense_53/MatMul/ReadVariableOp?
sequential_17/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2 
sequential_17/flatten_17/Const?
 sequential_17/flatten_17/ReshapeReshapeflatten_17_input'sequential_17/flatten_17/Const:output:0*
T0*'
_output_shapes
:?????????
2"
 sequential_17/flatten_17/Reshape?
,sequential_17/dense_51/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02.
,sequential_17/dense_51/MatMul/ReadVariableOp?
sequential_17/dense_51/MatMulMatMul)sequential_17/flatten_17/Reshape:output:04sequential_17/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_51/MatMul?
-sequential_17/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_51/BiasAdd/ReadVariableOp?
sequential_17/dense_51/BiasAddBiasAdd'sequential_17/dense_51/MatMul:product:05sequential_17/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_51/BiasAdd?
sequential_17/dense_51/TanhTanh'sequential_17/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_51/Tanh?
,sequential_17/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_52_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_17/dense_52/MatMul/ReadVariableOp?
sequential_17/dense_52/MatMulMatMulsequential_17/dense_51/Tanh:y:04sequential_17/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_52/MatMul?
-sequential_17/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_52/BiasAdd/ReadVariableOp?
sequential_17/dense_52/BiasAddBiasAdd'sequential_17/dense_52/MatMul:product:05sequential_17/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_52/BiasAdd?
sequential_17/dense_52/TanhTanh'sequential_17/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_52/Tanh?
,sequential_17/dense_53/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_53_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_17/dense_53/MatMul/ReadVariableOp?
sequential_17/dense_53/MatMulMatMulsequential_17/dense_52/Tanh:y:04sequential_17/dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_53/MatMul?
-sequential_17/dense_53/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_53/BiasAdd/ReadVariableOp?
sequential_17/dense_53/BiasAddBiasAdd'sequential_17/dense_53/MatMul:product:05sequential_17/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_53/BiasAdd?
IdentityIdentity'sequential_17/dense_53/BiasAdd:output:0.^sequential_17/dense_51/BiasAdd/ReadVariableOp-^sequential_17/dense_51/MatMul/ReadVariableOp.^sequential_17/dense_52/BiasAdd/ReadVariableOp-^sequential_17/dense_52/MatMul/ReadVariableOp.^sequential_17/dense_53/BiasAdd/ReadVariableOp-^sequential_17/dense_53/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2^
-sequential_17/dense_51/BiasAdd/ReadVariableOp-sequential_17/dense_51/BiasAdd/ReadVariableOp2\
,sequential_17/dense_51/MatMul/ReadVariableOp,sequential_17/dense_51/MatMul/ReadVariableOp2^
-sequential_17/dense_52/BiasAdd/ReadVariableOp-sequential_17/dense_52/BiasAdd/ReadVariableOp2\
,sequential_17/dense_52/MatMul/ReadVariableOp,sequential_17/dense_52/MatMul/ReadVariableOp2^
-sequential_17/dense_53/BiasAdd/ReadVariableOp-sequential_17/dense_53/BiasAdd/ReadVariableOp2\
,sequential_17/dense_53/MatMul/ReadVariableOp,sequential_17/dense_53/MatMul/ReadVariableOp:0 ,
*
_user_specified_nameflatten_17_input
?
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092179

inputs+
'dense_51_matmul_readvariableop_resource,
(dense_51_biasadd_readvariableop_resource+
'dense_52_matmul_readvariableop_resource,
(dense_52_biasadd_readvariableop_resource+
'dense_53_matmul_readvariableop_resource,
(dense_53_biasadd_readvariableop_resource
identity??dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOpu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????
   2
flatten_17/Const?
flatten_17/ReshapeReshapeinputsflatten_17/Const:output:0*
T0*'
_output_shapes
:?????????
2
flatten_17/Reshape?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMulMatMulflatten_17/Reshape:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/BiasAdds
dense_51/TanhTanhdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_51/Tanh?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMulMatMuldense_51/Tanh:y:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_52/BiasAdds
dense_52/TanhTanhdense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_52/Tanh?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMulMatMuldense_52/Tanh:y:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_53/BiasAdd?
IdentityIdentitydense_53/BiasAdd:output:0 ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
*__inference_dense_52_layer_call_fn_3092248

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
E__inference_dense_52_layer_call_and_return_conditional_losses_30920152
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
?
/__inference_sequential_17_layer_call_fn_3092115
flatten_17_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_17_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
J__inference_sequential_17_layer_call_and_return_conditional_losses_30921062
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
_user_specified_nameflatten_17_input
?	
?
/__inference_sequential_17_layer_call_fn_3092201

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
J__inference_sequential_17_layer_call_and_return_conditional_losses_30921062
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
?
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092081

inputs+
'dense_51_statefulpartitionedcall_args_1+
'dense_51_statefulpartitionedcall_args_2+
'dense_52_statefulpartitionedcall_args_1+
'dense_52_statefulpartitionedcall_args_2+
'dense_53_statefulpartitionedcall_args_1+
'dense_53_statefulpartitionedcall_args_2
identity?? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
flatten_17/PartitionedCallPartitionedCallinputs*
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_30919732
flatten_17/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0'dense_51_statefulpartitionedcall_args_1'dense_51_statefulpartitionedcall_args_2*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_30919922"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0'dense_52_statefulpartitionedcall_args_1'dense_52_statefulpartitionedcall_args_2*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_30920152"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0'dense_53_statefulpartitionedcall_args_1'dense_53_statefulpartitionedcall_args_2*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_30920372"
 dense_53/StatefulPartitionedCall?
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????
::::::2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
E__inference_dense_51_layer_call_and_return_conditional_losses_3092223

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
%__inference_signature_wrapper_3092127
flatten_17_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_17_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
"__inference__wrapped_model_30919632
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
_user_specified_nameflatten_17_input
?O
?	
#__inference__traced_restore_3092409
file_prefix$
 assignvariableop_dense_51_kernel$
 assignvariableop_1_dense_51_bias&
"assignvariableop_2_dense_52_kernel$
 assignvariableop_3_dense_52_bias&
"assignvariableop_4_dense_53_kernel$
 assignvariableop_5_dense_53_bias(
$assignvariableop_6_dense_51_kernel_m&
"assignvariableop_7_dense_51_bias_m(
$assignvariableop_8_dense_52_kernel_m&
"assignvariableop_9_dense_52_bias_m)
%assignvariableop_10_dense_53_kernel_m'
#assignvariableop_11_dense_53_bias_m)
%assignvariableop_12_dense_51_kernel_v'
#assignvariableop_13_dense_51_bias_v)
%assignvariableop_14_dense_52_kernel_v'
#assignvariableop_15_dense_52_bias_v)
%assignvariableop_16_dense_53_kernel_v'
#assignvariableop_17_dense_53_bias_v
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
AssignVariableOpAssignVariableOp assignvariableop_dense_51_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_51_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_52_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_52_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_53_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_53_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_51_kernel_mIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_51_bias_mIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_52_kernel_mIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_52_bias_mIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dense_53_kernel_mIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_53_bias_mIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_dense_51_kernel_vIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_51_bias_vIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_dense_52_kernel_vIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_52_bias_vIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_53_kernel_vIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_53_bias_vIdentity_17:output:0*
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
?
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_3091973

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
E__inference_dense_53_layer_call_and_return_conditional_losses_3092037

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
,__inference_flatten_17_layer_call_fn_3092212

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
G__inference_flatten_17_layer_call_and_return_conditional_losses_30919732
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
flatten_17_input9
"serving_default_flatten_17_input:0?????????
<
dense_530
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
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_17", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_52", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_17", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_52", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "flatten_17_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 10], "config": {"batch_input_shape": [null, 10], "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_17_input"}}
?
	variables
regularization_losses
trainable_variables
	keras_api
*E&call_and_return_all_conditional_losses
F__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 10], "config": {"name": "flatten_17", "trainable": true, "batch_input_shape": [null, 10], "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*G&call_and_return_all_conditional_losses
H__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*I&call_and_return_all_conditional_losses
J__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_52", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
?

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
*K&call_and_return_all_conditional_losses
L__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_53", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}}
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
2dense_51/kernel
:2dense_51/bias
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
!:2dense_52/kernel
:2dense_52/bias
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
!:2dense_53/kernel
:2dense_53/bias
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
2dense_51/kernel/m
:2dense_51/bias/m
!:2dense_52/kernel/m
:2dense_52/bias/m
!:2dense_53/kernel/m
:2dense_53/bias/m
!:
2dense_51/kernel/v
:2dense_51/bias/v
!:2dense_52/kernel/v
:2dense_52/bias/v
!:2dense_53/kernel/v
:2dense_53/bias/v
?2?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092064
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092179
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092153
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092050?
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
"__inference__wrapped_model_3091963?
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
flatten_17_input?????????

?2?
/__inference_sequential_17_layer_call_fn_3092090
/__inference_sequential_17_layer_call_fn_3092190
/__inference_sequential_17_layer_call_fn_3092115
/__inference_sequential_17_layer_call_fn_3092201?
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
G__inference_flatten_17_layer_call_and_return_conditional_losses_3092207?
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
,__inference_flatten_17_layer_call_fn_3092212?
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
E__inference_dense_51_layer_call_and_return_conditional_losses_3092223?
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
*__inference_dense_51_layer_call_fn_3092230?
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
E__inference_dense_52_layer_call_and_return_conditional_losses_3092241?
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
*__inference_dense_52_layer_call_fn_3092248?
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
E__inference_dense_53_layer_call_and_return_conditional_losses_3092258?
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
*__inference_dense_53_layer_call_fn_3092265?
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
%__inference_signature_wrapper_3092127flatten_17_input?
"__inference__wrapped_model_3091963x9?6
/?,
*?'
flatten_17_input?????????

? "3?0
.
dense_53"?
dense_53??????????
E__inference_dense_51_layer_call_and_return_conditional_losses_3092223\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_51_layer_call_fn_3092230O/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_dense_52_layer_call_and_return_conditional_losses_3092241\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_52_layer_call_fn_3092248O/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dense_53_layer_call_and_return_conditional_losses_3092258\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_53_layer_call_fn_3092265O/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_flatten_17_layer_call_and_return_conditional_losses_3092207X/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
,__inference_flatten_17_layer_call_fn_3092212K/?,
%?"
 ?
inputs?????????

? "??????????
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092050rA?>
7?4
*?'
flatten_17_input?????????

p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092064rA?>
7?4
*?'
flatten_17_input?????????

p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092153h7?4
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
J__inference_sequential_17_layer_call_and_return_conditional_losses_3092179h7?4
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
/__inference_sequential_17_layer_call_fn_3092090eA?>
7?4
*?'
flatten_17_input?????????

p

 
? "???????????
/__inference_sequential_17_layer_call_fn_3092115eA?>
7?4
*?'
flatten_17_input?????????

p 

 
? "???????????
/__inference_sequential_17_layer_call_fn_3092190[7?4
-?*
 ?
inputs?????????

p

 
? "???????????
/__inference_sequential_17_layer_call_fn_3092201[7?4
-?*
 ?
inputs?????????

p 

 
? "???????????
%__inference_signature_wrapper_3092127?M?J
? 
C?@
>
flatten_17_input*?'
flatten_17_input?????????
"3?0
.
dense_53"?
dense_53?????????