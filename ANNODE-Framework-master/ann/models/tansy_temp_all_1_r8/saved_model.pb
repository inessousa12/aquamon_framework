??
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
shapeshape?"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108??
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:x*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:*
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes
:*
dtype0
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:*
dtype0
?
dense_54/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*$
shared_namedense_54/kernel/rms
{
'dense_54/kernel/rms/Read/ReadVariableOpReadVariableOpdense_54/kernel/rms*
_output_shapes

:x*
dtype0
z
dense_54/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_54/bias/rms
s
%dense_54/bias/rms/Read/ReadVariableOpReadVariableOpdense_54/bias/rms*
_output_shapes
:*
dtype0
?
dense_55/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_55/kernel/rms
{
'dense_55/kernel/rms/Read/ReadVariableOpReadVariableOpdense_55/kernel/rms*
_output_shapes

:*
dtype0
z
dense_55/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_55/bias/rms
s
%dense_55/bias/rms/Read/ReadVariableOpReadVariableOpdense_55/bias/rms*
_output_shapes
:*
dtype0
?
dense_56/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namedense_56/kernel/rms
{
'dense_56/kernel/rms/Read/ReadVariableOpReadVariableOpdense_56/kernel/rms*
_output_shapes

:*
dtype0
z
dense_56/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_56/bias/rms
s
%dense_56/bias/rms/Read/ReadVariableOpReadVariableOpdense_56/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
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
trainable_variables
	regularization_losses

	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
B	rms6	rms7	rms8	rms9	rms:	rms;
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
 
?
"non_trainable_variables
	variables

#layers
$metrics
trainable_variables
%layer_regularization_losses
	regularization_losses
 
 
 
 
?
&non_trainable_variables
	variables

'layers
(metrics
trainable_variables
)layer_regularization_losses
regularization_losses
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
*non_trainable_variables
	variables

+layers
,metrics
trainable_variables
-layer_regularization_losses
regularization_losses
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
.non_trainable_variables
	variables

/layers
0metrics
trainable_variables
1layer_regularization_losses
regularization_losses
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
2non_trainable_variables
	variables

3layers
4metrics
trainable_variables
5layer_regularization_losses
 regularization_losses
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
 
}{
VARIABLE_VALUEdense_54/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_54/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEdense_55/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_55/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEdense_56/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_56/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_18_inputPlaceholder*'
_output_shapes
:?????????x*
dtype0*
shape:?????????x
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_18_inputdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/bias*
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
GPU2*0J 8*/
f*R(
&__inference_signature_wrapper_36654783
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp'dense_54/kernel/rms/Read/ReadVariableOp%dense_54/bias/rms/Read/ReadVariableOp'dense_55/kernel/rms/Read/ReadVariableOp%dense_55/bias/rms/Read/ReadVariableOp'dense_56/kernel/rms/Read/ReadVariableOp%dense_56/bias/rms/Read/ReadVariableOpConst*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: *-
config_proto

CPU

GPU2*0J 8**
f%R#
!__inference__traced_save_36654981
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/biasdense_54/kernel/rmsdense_54/bias/rmsdense_55/kernel/rmsdense_55/bias/rmsdense_56/kernel/rmsdense_56/bias/rms*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: *-
config_proto

CPU

GPU2*0J 8*-
f(R&
$__inference__traced_restore_36655029??
?'
?
!__inference__traced_save_36654981
file_prefix.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop2
.savev2_dense_54_kernel_rms_read_readvariableop0
,savev2_dense_54_bias_rms_read_readvariableop2
.savev2_dense_55_kernel_rms_read_readvariableop0
,savev2_dense_55_bias_rms_read_readvariableop2
.savev2_dense_56_kernel_rms_read_readvariableop0
,savev2_dense_56_bias_rms_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_82ea8c3d327e49cfa3cb702c9b504763/part2
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop.savev2_dense_54_kernel_rms_read_readvariableop,savev2_dense_54_bias_rms_read_readvariableop.savev2_dense_55_kernel_rms_read_readvariableop,savev2_dense_55_bias_rms_read_readvariableop.savev2_dense_56_kernel_rms_read_readvariableop,savev2_dense_56_bias_rms_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*w
_input_shapesf
d: :x::::::x:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix
?	
?
0__inference_sequential_18_layer_call_fn_36654857

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
GPU2*0J 8*T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_366547622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
I
-__inference_flatten_18_layer_call_fn_36654868

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????x*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_366546292
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????x:& "
 
_user_specified_nameinputs
?	
?
0__inference_sequential_18_layer_call_fn_36654771
flatten_18_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_18_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
GPU2*0J 8*T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_366547622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_18_input
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654737

inputs+
'dense_54_statefulpartitionedcall_args_1+
'dense_54_statefulpartitionedcall_args_2+
'dense_55_statefulpartitionedcall_args_1+
'dense_55_statefulpartitionedcall_args_2+
'dense_56_statefulpartitionedcall_args_1+
'dense_56_statefulpartitionedcall_args_2
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
flatten_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????x*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_366546292
flatten_18/PartitionedCall?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0'dense_54_statefulpartitionedcall_args_1'dense_54_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_54_layer_call_and_return_conditional_losses_366546482"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0'dense_55_statefulpartitionedcall_args_1'dense_55_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_366546712"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0'dense_56_statefulpartitionedcall_args_1'dense_56_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_366546932"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?	
?
F__inference_dense_54_layer_call_and_return_conditional_losses_36654648

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
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
:?????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654706
flatten_18_input+
'dense_54_statefulpartitionedcall_args_1+
'dense_54_statefulpartitionedcall_args_2+
'dense_55_statefulpartitionedcall_args_1+
'dense_55_statefulpartitionedcall_args_2+
'dense_56_statefulpartitionedcall_args_1+
'dense_56_statefulpartitionedcall_args_2
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
flatten_18/PartitionedCallPartitionedCallflatten_18_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????x*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_366546292
flatten_18/PartitionedCall?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0'dense_54_statefulpartitionedcall_args_1'dense_54_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_54_layer_call_and_return_conditional_losses_366546482"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0'dense_55_statefulpartitionedcall_args_1'dense_55_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_366546712"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0'dense_56_statefulpartitionedcall_args_1'dense_56_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_366546932"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_18_input
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654762

inputs+
'dense_54_statefulpartitionedcall_args_1+
'dense_54_statefulpartitionedcall_args_2+
'dense_55_statefulpartitionedcall_args_1+
'dense_55_statefulpartitionedcall_args_2+
'dense_56_statefulpartitionedcall_args_1+
'dense_56_statefulpartitionedcall_args_2
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
flatten_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????x*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_366546292
flatten_18/PartitionedCall?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0'dense_54_statefulpartitionedcall_args_1'dense_54_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_54_layer_call_and_return_conditional_losses_366546482"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0'dense_55_statefulpartitionedcall_args_1'dense_55_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_366546712"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0'dense_56_statefulpartitionedcall_args_1'dense_56_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_366546932"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
d
H__inference_flatten_18_layer_call_and_return_conditional_losses_36654863

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????x2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????x:& "
 
_user_specified_nameinputs
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654835

inputs+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource+
'dense_55_matmul_readvariableop_resource,
(dense_55_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOpu
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
flatten_18/Const?
flatten_18/ReshapeReshapeinputsflatten_18/Const:output:0*
T0*'
_output_shapes
:?????????x2
flatten_18/Reshape?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulflatten_18/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_54/BiasAdds
dense_54/TanhTanhdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_54/Tanh?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Tanh:y:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_55/BiasAdds
dense_55/TanhTanhdense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_55/Tanh?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Tanh:y:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd?
IdentityIdentitydense_56/BiasAdd:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?	
?
F__inference_dense_55_layer_call_and_return_conditional_losses_36654897

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
?
?
F__inference_dense_56_layer_call_and_return_conditional_losses_36654914

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
F__inference_dense_55_layer_call_and_return_conditional_losses_36654671

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
0__inference_sequential_18_layer_call_fn_36654746
flatten_18_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_18_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
GPU2*0J 8*T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_366547372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_18_input
?
d
H__inference_flatten_18_layer_call_and_return_conditional_losses_36654629

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????x2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????x2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????x:& "
 
_user_specified_nameinputs
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654809

inputs+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource+
'dense_55_matmul_readvariableop_resource,
(dense_55_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOpu
flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2
flatten_18/Const?
flatten_18/ReshapeReshapeinputsflatten_18/Const:output:0*
T0*'
_output_shapes
:?????????x2
flatten_18/Reshape?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulflatten_18/Reshape:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_54/BiasAdds
dense_54/TanhTanhdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_54/Tanh?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Tanh:y:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_55/BiasAdds
dense_55/TanhTanhdense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_55/Tanh?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Tanh:y:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd?
IdentityIdentitydense_56/BiasAdd:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?	
?
0__inference_sequential_18_layer_call_fn_36654846

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
GPU2*0J 8*T
fORM
K__inference_sequential_18_layer_call_and_return_conditional_losses_366547372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654720
flatten_18_input+
'dense_54_statefulpartitionedcall_args_1+
'dense_54_statefulpartitionedcall_args_2+
'dense_55_statefulpartitionedcall_args_1+
'dense_55_statefulpartitionedcall_args_2+
'dense_56_statefulpartitionedcall_args_1+
'dense_56_statefulpartitionedcall_args_2
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?
flatten_18/PartitionedCallPartitionedCallflatten_18_input*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*'
_output_shapes
:?????????x*-
config_proto

CPU

GPU2*0J 8*Q
fLRJ
H__inference_flatten_18_layer_call_and_return_conditional_losses_366546292
flatten_18/PartitionedCall?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0'dense_54_statefulpartitionedcall_args_1'dense_54_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_54_layer_call_and_return_conditional_losses_366546482"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0'dense_55_statefulpartitionedcall_args_1'dense_55_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_366546712"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0'dense_56_statefulpartitionedcall_args_1'dense_56_statefulpartitionedcall_args_2*
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
GPU2*0J 8*O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_366546932"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_18_input
?
?
+__inference_dense_55_layer_call_fn_36654904

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
GPU2*0J 8*O
fJRH
F__inference_dense_55_layer_call_and_return_conditional_losses_366546712
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
?
?
+__inference_dense_56_layer_call_fn_36654921

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
GPU2*0J 8*O
fJRH
F__inference_dense_56_layer_call_and_return_conditional_losses_366546932
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
?
F__inference_dense_54_layer_call_and_return_conditional_losses_36654879

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
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
:?????????x::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs
?8
?
$__inference__traced_restore_36655029
file_prefix$
 assignvariableop_dense_54_kernel$
 assignvariableop_1_dense_54_bias&
"assignvariableop_2_dense_55_kernel$
 assignvariableop_3_dense_55_bias&
"assignvariableop_4_dense_56_kernel$
 assignvariableop_5_dense_56_bias*
&assignvariableop_6_dense_54_kernel_rms(
$assignvariableop_7_dense_54_bias_rms*
&assignvariableop_8_dense_55_kernel_rms(
$assignvariableop_9_dense_55_bias_rms+
'assignvariableop_10_dense_56_kernel_rms)
%assignvariableop_11_dense_56_bias_rms
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_54_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_54_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_55_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_55_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_56_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_56_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_dense_54_kernel_rmsIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dense_54_bias_rmsIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_dense_55_kernel_rmsIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_dense_55_bias_rmsIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_dense_56_kernel_rmsIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp%assignvariableop_11_dense_56_bias_rmsIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11?
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
NoOp?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12?
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*E
_input_shapes4
2: ::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
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
?
?
+__inference_dense_54_layer_call_fn_36654886

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
GPU2*0J 8*O
fJRH
F__inference_dense_54_layer_call_and_return_conditional_losses_366546482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????x::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?'
?
#__inference__wrapped_model_36654619
flatten_18_input9
5sequential_18_dense_54_matmul_readvariableop_resource:
6sequential_18_dense_54_biasadd_readvariableop_resource9
5sequential_18_dense_55_matmul_readvariableop_resource:
6sequential_18_dense_55_biasadd_readvariableop_resource9
5sequential_18_dense_56_matmul_readvariableop_resource:
6sequential_18_dense_56_biasadd_readvariableop_resource
identity??-sequential_18/dense_54/BiasAdd/ReadVariableOp?,sequential_18/dense_54/MatMul/ReadVariableOp?-sequential_18/dense_55/BiasAdd/ReadVariableOp?,sequential_18/dense_55/MatMul/ReadVariableOp?-sequential_18/dense_56/BiasAdd/ReadVariableOp?,sequential_18/dense_56/MatMul/ReadVariableOp?
sequential_18/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"????x   2 
sequential_18/flatten_18/Const?
 sequential_18/flatten_18/ReshapeReshapeflatten_18_input'sequential_18/flatten_18/Const:output:0*
T0*'
_output_shapes
:?????????x2"
 sequential_18/flatten_18/Reshape?
,sequential_18/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_54_matmul_readvariableop_resource*
_output_shapes

:x*
dtype02.
,sequential_18/dense_54/MatMul/ReadVariableOp?
sequential_18/dense_54/MatMulMatMul)sequential_18/flatten_18/Reshape:output:04sequential_18/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_54/MatMul?
-sequential_18/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_54/BiasAdd/ReadVariableOp?
sequential_18/dense_54/BiasAddBiasAdd'sequential_18/dense_54/MatMul:product:05sequential_18/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_18/dense_54/BiasAdd?
sequential_18/dense_54/TanhTanh'sequential_18/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_54/Tanh?
,sequential_18/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_55_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_18/dense_55/MatMul/ReadVariableOp?
sequential_18/dense_55/MatMulMatMulsequential_18/dense_54/Tanh:y:04sequential_18/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_55/MatMul?
-sequential_18/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_55/BiasAdd/ReadVariableOp?
sequential_18/dense_55/BiasAddBiasAdd'sequential_18/dense_55/MatMul:product:05sequential_18/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_18/dense_55/BiasAdd?
sequential_18/dense_55/TanhTanh'sequential_18/dense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_55/Tanh?
,sequential_18/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_56_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_18/dense_56/MatMul/ReadVariableOp?
sequential_18/dense_56/MatMulMatMulsequential_18/dense_55/Tanh:y:04sequential_18/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_56/MatMul?
-sequential_18/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_56/BiasAdd/ReadVariableOp?
sequential_18/dense_56/BiasAddBiasAdd'sequential_18/dense_56/MatMul:product:05sequential_18/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_18/dense_56/BiasAdd?
IdentityIdentity'sequential_18/dense_56/BiasAdd:output:0.^sequential_18/dense_54/BiasAdd/ReadVariableOp-^sequential_18/dense_54/MatMul/ReadVariableOp.^sequential_18/dense_55/BiasAdd/ReadVariableOp-^sequential_18/dense_55/MatMul/ReadVariableOp.^sequential_18/dense_56/BiasAdd/ReadVariableOp-^sequential_18/dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::2^
-sequential_18/dense_54/BiasAdd/ReadVariableOp-sequential_18/dense_54/BiasAdd/ReadVariableOp2\
,sequential_18/dense_54/MatMul/ReadVariableOp,sequential_18/dense_54/MatMul/ReadVariableOp2^
-sequential_18/dense_55/BiasAdd/ReadVariableOp-sequential_18/dense_55/BiasAdd/ReadVariableOp2\
,sequential_18/dense_55/MatMul/ReadVariableOp,sequential_18/dense_55/MatMul/ReadVariableOp2^
-sequential_18/dense_56/BiasAdd/ReadVariableOp-sequential_18/dense_56/BiasAdd/ReadVariableOp2\
,sequential_18/dense_56/MatMul/ReadVariableOp,sequential_18/dense_56/MatMul/ReadVariableOp:0 ,
*
_user_specified_nameflatten_18_input
?
?
F__inference_dense_56_layer_call_and_return_conditional_losses_36654693

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
?
&__inference_signature_wrapper_36654783
flatten_18_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_18_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
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
GPU2*0J 8*,
f'R%
#__inference__wrapped_model_366546192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????x::::::22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_nameflatten_18_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
flatten_18_input9
"serving_default_flatten_18_input:0?????????x<
dense_560
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
trainable_variables
	regularization_losses

	keras_api

signatures
<__call__
=_default_save_signature
*>&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential_18", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_18", "trainable": true, "batch_input_shape": [null, 120], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "is_graph_network": true, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_18", "layers": [{"class_name": "Flatten", "config": {"name": "flatten_18", "trainable": true, "batch_input_shape": [null, 120], "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.001, "decay": 0.0, "rho": 0.9, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "flatten_18_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": [null, 120], "config": {"batch_input_shape": [null, 120], "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_18_input"}}
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
*@&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 120], "config": {"name": "flatten_18", "trainable": true, "batch_input_shape": [null, 120], "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
A__call__
*B&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 20, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 120}}}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
C__call__
*D&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 15, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.05, "seed": 0}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
E__call__
*F&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}}
U	rms6	rms7	rms8	rms9	rms:	rms;"
	optimizer
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
 "
trackable_list_wrapper
?
"non_trainable_variables
	variables

#layers
$metrics
trainable_variables
%layer_regularization_losses
	regularization_losses
<__call__
=_default_save_signature
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
,
Gserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
&non_trainable_variables
	variables

'layers
(metrics
trainable_variables
)layer_regularization_losses
regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
!:x2dense_54/kernel
:2dense_54/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables
	variables

+layers
,metrics
trainable_variables
-layer_regularization_losses
regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
!:2dense_55/kernel
:2dense_55/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables
	variables

/layers
0metrics
trainable_variables
1layer_regularization_losses
regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
!:2dense_56/kernel
:2dense_56/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2non_trainable_variables
	variables

3layers
4metrics
trainable_variables
5layer_regularization_losses
 regularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
#:!x2dense_54/kernel/rms
:2dense_54/bias/rms
#:!2dense_55/kernel/rms
:2dense_55/bias/rms
#:!2dense_56/kernel/rms
:2dense_56/bias/rms
?2?
0__inference_sequential_18_layer_call_fn_36654857
0__inference_sequential_18_layer_call_fn_36654846
0__inference_sequential_18_layer_call_fn_36654746
0__inference_sequential_18_layer_call_fn_36654771?
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
#__inference__wrapped_model_36654619?
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
flatten_18_input?????????x
?2?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654835
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654720
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654809
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654706?
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
-__inference_flatten_18_layer_call_fn_36654868?
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
H__inference_flatten_18_layer_call_and_return_conditional_losses_36654863?
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
+__inference_dense_54_layer_call_fn_36654886?
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
F__inference_dense_54_layer_call_and_return_conditional_losses_36654879?
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
+__inference_dense_55_layer_call_fn_36654904?
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
F__inference_dense_55_layer_call_and_return_conditional_losses_36654897?
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
+__inference_dense_56_layer_call_fn_36654921?
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
F__inference_dense_56_layer_call_and_return_conditional_losses_36654914?
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
>B<
&__inference_signature_wrapper_36654783flatten_18_input?
#__inference__wrapped_model_36654619x9?6
/?,
*?'
flatten_18_input?????????x
? "3?0
.
dense_56"?
dense_56??????????
F__inference_dense_54_layer_call_and_return_conditional_losses_36654879\/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????
? ~
+__inference_dense_54_layer_call_fn_36654886O/?,
%?"
 ?
inputs?????????x
? "???????????
F__inference_dense_55_layer_call_and_return_conditional_losses_36654897\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_55_layer_call_fn_36654904O/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dense_56_layer_call_and_return_conditional_losses_36654914\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_56_layer_call_fn_36654921O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_flatten_18_layer_call_and_return_conditional_losses_36654863X/?,
%?"
 ?
inputs?????????x
? "%?"
?
0?????????x
? |
-__inference_flatten_18_layer_call_fn_36654868K/?,
%?"
 ?
inputs?????????x
? "??????????x?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654706rA?>
7?4
*?'
flatten_18_input?????????x
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654720rA?>
7?4
*?'
flatten_18_input?????????x
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654809h7?4
-?*
 ?
inputs?????????x
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_18_layer_call_and_return_conditional_losses_36654835h7?4
-?*
 ?
inputs?????????x
p 

 
? "%?"
?
0?????????
? ?
0__inference_sequential_18_layer_call_fn_36654746eA?>
7?4
*?'
flatten_18_input?????????x
p

 
? "???????????
0__inference_sequential_18_layer_call_fn_36654771eA?>
7?4
*?'
flatten_18_input?????????x
p 

 
? "???????????
0__inference_sequential_18_layer_call_fn_36654846[7?4
-?*
 ?
inputs?????????x
p

 
? "???????????
0__inference_sequential_18_layer_call_fn_36654857[7?4
-?*
 ?
inputs?????????x
p 

 
? "???????????
&__inference_signature_wrapper_36654783?M?J
? 
C?@
>
flatten_18_input*?'
flatten_18_input?????????x"3?0
.
dense_56"?
dense_56?????????