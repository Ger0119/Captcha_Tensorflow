??

??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0

p_re_lu_8/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape::? * 
shared_namep_re_lu_8/alpha
x
#p_re_lu_8/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_8/alpha*#
_output_shapes
::? *
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0
~
p_re_lu_9/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:K@* 
shared_namep_re_lu_9/alpha
w
#p_re_lu_9/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_9/alpha*"
_output_shapes
:K@*
dtype0
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_10/kernel
~
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_10/bias
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:?*
dtype0
?
p_re_lu_10/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!?*!
shared_namep_re_lu_10/alpha
z
$p_re_lu_10/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_10/alpha*#
_output_shapes
:!?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?@?*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
?@?*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
?6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?6B?6 B?6
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer-12
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
	alpha
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
w
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?
	.alpha
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
w
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?

9kernel
:bias
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?
	@alpha
#A_self_saveable_object_factories
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
w
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
w
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?

Pkernel
Qbias
#R_self_saveable_object_factories
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
w
#W_self_saveable_object_factories
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
w
#\_self_saveable_object_factories
]	variables
^trainable_variables
_regularization_losses
`	keras_api
 
 
 
N
0
1
2
'3
(4
.5
96
:7
@8
P9
Q10
N
0
1
2
'3
(4
.5
96
:7
@8
P9
Q10
 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEp_re_lu_8/alpha5layer_with_weights-1/alpha/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
 regularization_losses
 
 
 
 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
#	variables
$trainable_variables
%regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
ZX
VARIABLE_VALUEp_re_lu_9/alpha5layer_with_weights-3/alpha/.ATTRIBUTES/VARIABLE_VALUE
 

.0

.0
 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
 
 
 
 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

90
:1

90
:1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
[Y
VARIABLE_VALUEp_re_lu_10/alpha5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUE
 

@0

@0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12

?0
?1
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
serving_default_conv2d_8_inputPlaceholder*0
_output_shapes
:?????????<?*
dtype0*%
shape:?????????<?
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_8_inputconv2d_8/kernelconv2d_8/biasp_re_lu_8/alphaconv2d_9/kernelconv2d_9/biasp_re_lu_9/alphaconv2d_10/kernelconv2d_10/biasp_re_lu_10/alphadense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_2320
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#p_re_lu_8/alpha/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp#p_re_lu_9/alpha/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$p_re_lu_10/alpha/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_2865
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasp_re_lu_8/alphaconv2d_9/kernelconv2d_9/biasp_re_lu_9/alphaconv2d_10/kernelconv2d_10/biasp_re_lu_10/alphadense_4/kerneldense_4/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_2920??
?
_
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971

inputs
identityP
SoftmaxSoftmaxinputs*
T0*+
_output_shapes
:?????????>]
IdentityIdentitySoftmax:softmax:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>:S O
+
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
+__inference_sequential_4_layer_call_fn_2213
conv2d_8_input!
unknown: 
	unknown_0:  
	unknown_1::? #
	unknown_2: @
	unknown_3:@
	unknown_4:K@$
	unknown_5:@?
	unknown_6:	? 
	unknown_7:!?
	unknown_8:
?@?
	unknown_9:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_2161s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?
?
'__inference_conv2d_8_layer_call_fn_2517

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????:? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?

?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2707

inputs.
readvariableop_resource:!?
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:!?*
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:!?i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????!?d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????!?_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????!?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_p_re_lu_10_layer_call_fn_2695

inputs
unknown:!?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????!?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????!?: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
?
(__inference_p_re_lu_8_layer_call_fn_2534

inputs
unknown::? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1726x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????:? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2565

inputs.
readvariableop_resource::? 
identity??ReadVariableOpO
ReluReluinputs*
T0*0
_output_shapes
:?????????:? k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
::? *
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
::? O
Neg_1Neginputs*
T0*0
_output_shapes
:?????????:? T
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????:? d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????:? _
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????:? W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????:? : 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?	
?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2642

inputs-
readvariableop_resource:K@
identity??ReadVariableOpN
ReluReluinputs*
T0*/
_output_shapes
:?????????K@j
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:K@*
dtype0O
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:K@N
Neg_1Neginputs*
T0*/
_output_shapes
:?????????K@S
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????K@c
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@c
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????K@^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????K@W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????K@: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?

?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1726

inputs.
readvariableop_resource::? 
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
::? *
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
::? i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????:? _
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????:? W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2580

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_p_re_lu_10_layer_call_fn_2688

inputs
unknown:!?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1792x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????!?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2630

inputs-
readvariableop_resource:K@
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????j
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:K@*
dtype0O
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:K@i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????c
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@c
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????K@^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????K@W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2719

inputs.
readvariableop_resource:!?
identity??ReadVariableOpO
ReluReluinputs*
T0*0
_output_shapes
:?????????!?k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:!?*
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:!?O
Neg_1Neginputs*
T0*0
_output_shapes
:?????????!?T
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????!?d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????!?d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????!?_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????!?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????!?: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?	
?
A__inference_dense_4_layer_call_and_return_conditional_losses_2769

inputs2
matmul_readvariableop_resource:
?@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?

_
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :>?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????>\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_10_layer_call_and_return_conditional_losses_2681

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????!?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?
?
(__inference_p_re_lu_9_layer_call_fn_2618

inputs
unknown:K@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????K@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?

?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_2604

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????K@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????O : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????O 
 
_user_specified_nameinputs
?

?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1759

inputs-
readvariableop_resource:K@
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????j
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:K@*
dtype0O
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:K@i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????c
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@c
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????K@^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????K@W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_4_layer_call_fn_2347

inputs!
unknown: 
	unknown_0:  
	unknown_1::? #
	unknown_2: @
	unknown_3:@
	unknown_4:K@$
	unknown_5:@?
	unknown_6:	? 
	unknown_7:!?
	unknown_8:
?@?
	unknown_9:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_1974s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?

?
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????!?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?

?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1792

inputs.
readvariableop_resource:!?
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:!?*
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:!?i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????!?d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????!?_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????!?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????:? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?

?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2553

inputs.
readvariableop_resource::? 
identity??ReadVariableOpi
ReluReluinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
::? *
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
::? i
Neg_1Neginputs*
T0*J
_output_shapes8
6:4????????????????????????????????????n
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????:? _
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????:? W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_10_layer_call_fn_2671

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????!?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?5
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_1974

inputs'
conv2d_8_1827: 
conv2d_8_1829: %
p_re_lu_8_1844::? '
conv2d_9_1864: @
conv2d_9_1866:@$
p_re_lu_9_1881:K@)
conv2d_10_1901:@?
conv2d_10_1903:	?&
p_re_lu_10_1918:!? 
dense_4_1946:
?@?
dense_4_1948:	?
identity??!conv2d_10/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?"p_re_lu_10/StatefulPartitionedCall?!p_re_lu_8/StatefulPartitionedCall?!p_re_lu_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_1827conv2d_8_1829*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826?
!p_re_lu_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0p_re_lu_8_1844*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843?
max_pooling2d_8/PartitionedCallPartitionedCall*p_re_lu_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????O * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_1864conv2d_9_1866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863?
!p_re_lu_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0p_re_lu_9_1881*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880?
max_pooling2d_9/PartitionedCallPartitionedCall*p_re_lu_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_1901conv2d_10_1903*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900?
"p_re_lu_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0p_re_lu_10_1918*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917?
 max_pooling2d_10/PartitionedCallPartitionedCall+p_re_lu_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925?
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_1946dense_4_1948*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_1945?
reshape_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964?
softmax_4/PartitionedCallPartitionedCall"reshape_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971u
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall#^p_re_lu_10/StatefulPartitionedCall"^p_re_lu_8/StatefulPartitionedCall"^p_re_lu_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2H
"p_re_lu_10/StatefulPartitionedCall"p_re_lu_10/StatefulPartitionedCall2F
!p_re_lu_8/StatefulPartitionedCall!p_re_lu_8/StatefulPartitionedCall2F
!p_re_lu_9/StatefulPartitionedCall!p_re_lu_9/StatefulPartitionedCall:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?

?
"__inference_signature_wrapper_2320
conv2d_8_input!
unknown: 
	unknown_0:  
	unknown_1::? #
	unknown_2: @
	unknown_3:@
	unknown_4:K@$
	unknown_5:@?
	unknown_6:	? 
	unknown_7:!?
	unknown_8:
?@?
	unknown_9:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_1710s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?
_
C__inference_softmax_4_layer_call_and_return_conditional_losses_2797

inputs
identityP
SoftmaxSoftmaxinputs*
T0*+
_output_shapes
:?????????>]
IdentityIdentitySoftmax:softmax:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>:S O
+
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
D
(__inference_reshape_4_layer_call_fn_2774

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_10_layer_call_fn_2724

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1806?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_2750

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_dense_4_layer_call_and_return_conditional_losses_1945

inputs2
matmul_readvariableop_resource:
?@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
&__inference_dense_4_layer_call_fn_2759

inputs
unknown:
?@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_1945p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?=
?	
 __inference__traced_restore_2920
file_prefix:
 assignvariableop_conv2d_8_kernel: .
 assignvariableop_1_conv2d_8_bias: 9
"assignvariableop_2_p_re_lu_8_alpha::? <
"assignvariableop_3_conv2d_9_kernel: @.
 assignvariableop_4_conv2d_9_bias:@8
"assignvariableop_5_p_re_lu_9_alpha:K@>
#assignvariableop_6_conv2d_10_kernel:@?0
!assignvariableop_7_conv2d_10_bias:	?:
#assignvariableop_8_p_re_lu_10_alpha:!?5
!assignvariableop_9_dense_4_kernel:
?@?/
 assignvariableop_10_dense_4_bias:	?#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: 
identity_16??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_p_re_lu_8_alphaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_9_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv2d_9_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_p_re_lu_9_alphaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_p_re_lu_10_alphaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_4_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_4_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
f
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1773

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?J
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2508

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource: 8
!p_re_lu_8_readvariableop_resource::? A
'conv2d_9_conv2d_readvariableop_resource: @6
(conv2d_9_biasadd_readvariableop_resource:@7
!p_re_lu_9_readvariableop_resource:K@C
(conv2d_10_conv2d_readvariableop_resource:@?8
)conv2d_10_biasadd_readvariableop_resource:	?9
"p_re_lu_10_readvariableop_resource:!?:
&dense_4_matmul_readvariableop_resource:
?@?6
'dense_4_biasadd_readvariableop_resource:	?
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?p_re_lu_10/ReadVariableOp?p_re_lu_8/ReadVariableOp?p_re_lu_9/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? *
paddingVALID*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? l
p_re_lu_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? 
p_re_lu_8/ReadVariableOpReadVariableOp!p_re_lu_8_readvariableop_resource*#
_output_shapes
::? *
dtype0d
p_re_lu_8/NegNeg p_re_lu_8/ReadVariableOp:value:0*
T0*#
_output_shapes
::? l
p_re_lu_8/Neg_1Negconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? h
p_re_lu_8/Relu_1Relup_re_lu_8/Neg_1:y:0*
T0*0
_output_shapes
:?????????:? ?
p_re_lu_8/mulMulp_re_lu_8/Neg:y:0p_re_lu_8/Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? ?
p_re_lu_8/addAddV2p_re_lu_8/Relu:activations:0p_re_lu_8/mul:z:0*
T0*0
_output_shapes
:?????????:? ?
max_pooling2d_8/MaxPoolMaxPoolp_re_lu_8/add:z:0*/
_output_shapes
:?????????O *
ksize
*
paddingVALID*
strides
?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@*
paddingVALID*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@k
p_re_lu_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@~
p_re_lu_9/ReadVariableOpReadVariableOp!p_re_lu_9_readvariableop_resource*"
_output_shapes
:K@*
dtype0c
p_re_lu_9/NegNeg p_re_lu_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:K@k
p_re_lu_9/Neg_1Negconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@g
p_re_lu_9/Relu_1Relup_re_lu_9/Neg_1:y:0*
T0*/
_output_shapes
:?????????K@?
p_re_lu_9/mulMulp_re_lu_9/Neg:y:0p_re_lu_9/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@?
p_re_lu_9/addAddV2p_re_lu_9/Relu:activations:0p_re_lu_9/mul:z:0*
T0*/
_output_shapes
:?????????K@?
max_pooling2d_9/MaxPoolMaxPoolp_re_lu_9/add:z:0*/
_output_shapes
:?????????%@*
ksize
*
paddingVALID*
strides
?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?*
paddingVALID*
strides
?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?n
p_re_lu_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/ReadVariableOpReadVariableOp"p_re_lu_10_readvariableop_resource*#
_output_shapes
:!?*
dtype0f
p_re_lu_10/NegNeg!p_re_lu_10/ReadVariableOp:value:0*
T0*#
_output_shapes
:!?n
p_re_lu_10/Neg_1Negconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!?j
p_re_lu_10/Relu_1Relup_re_lu_10/Neg_1:y:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/mulMulp_re_lu_10/Neg:y:0p_re_lu_10/Relu_1:activations:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/addAddV2p_re_lu_10/Relu:activations:0p_re_lu_10/mul:z:0*
T0*0
_output_shapes
:?????????!??
max_pooling2d_10/MaxPoolMaxPoolp_re_lu_10/add:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
flatten_4/ReshapeReshape!max_pooling2d_10/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????@?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype0?
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
reshape_4/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :>?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_4/ReshapeReshapedense_4/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????>n
softmax_4/SoftmaxSoftmaxreshape_4/Reshape:output:0*
T0*+
_output_shapes
:?????????>n
IdentityIdentitysoftmax_4/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^p_re_lu_10/ReadVariableOp^p_re_lu_8/ReadVariableOp^p_re_lu_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp26
p_re_lu_10/ReadVariableOpp_re_lu_10/ReadVariableOp24
p_re_lu_8/ReadVariableOpp_re_lu_8/ReadVariableOp24
p_re_lu_9/ReadVariableOpp_re_lu_9/ReadVariableOp:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?
D
(__inference_flatten_4_layer_call_fn_2744

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_9_layer_call_fn_2652

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????%@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K@:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_10_layer_call_fn_2729

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1740

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?\
?

__inference__wrapped_model_1710
conv2d_8_inputN
4sequential_4_conv2d_8_conv2d_readvariableop_resource: C
5sequential_4_conv2d_8_biasadd_readvariableop_resource: E
.sequential_4_p_re_lu_8_readvariableop_resource::? N
4sequential_4_conv2d_9_conv2d_readvariableop_resource: @C
5sequential_4_conv2d_9_biasadd_readvariableop_resource:@D
.sequential_4_p_re_lu_9_readvariableop_resource:K@P
5sequential_4_conv2d_10_conv2d_readvariableop_resource:@?E
6sequential_4_conv2d_10_biasadd_readvariableop_resource:	?F
/sequential_4_p_re_lu_10_readvariableop_resource:!?G
3sequential_4_dense_4_matmul_readvariableop_resource:
?@?C
4sequential_4_dense_4_biasadd_readvariableop_resource:	?
identity??-sequential_4/conv2d_10/BiasAdd/ReadVariableOp?,sequential_4/conv2d_10/Conv2D/ReadVariableOp?,sequential_4/conv2d_8/BiasAdd/ReadVariableOp?+sequential_4/conv2d_8/Conv2D/ReadVariableOp?,sequential_4/conv2d_9/BiasAdd/ReadVariableOp?+sequential_4/conv2d_9/Conv2D/ReadVariableOp?+sequential_4/dense_4/BiasAdd/ReadVariableOp?*sequential_4/dense_4/MatMul/ReadVariableOp?&sequential_4/p_re_lu_10/ReadVariableOp?%sequential_4/p_re_lu_8/ReadVariableOp?%sequential_4/p_re_lu_9/ReadVariableOp?
+sequential_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
sequential_4/conv2d_8/Conv2DConv2Dconv2d_8_input3sequential_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? *
paddingVALID*
strides
?
,sequential_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_4/conv2d_8/BiasAddBiasAdd%sequential_4/conv2d_8/Conv2D:output:04sequential_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? ?
sequential_4/p_re_lu_8/ReluRelu&sequential_4/conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? ?
%sequential_4/p_re_lu_8/ReadVariableOpReadVariableOp.sequential_4_p_re_lu_8_readvariableop_resource*#
_output_shapes
::? *
dtype0~
sequential_4/p_re_lu_8/NegNeg-sequential_4/p_re_lu_8/ReadVariableOp:value:0*
T0*#
_output_shapes
::? ?
sequential_4/p_re_lu_8/Neg_1Neg&sequential_4/conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? ?
sequential_4/p_re_lu_8/Relu_1Relu sequential_4/p_re_lu_8/Neg_1:y:0*
T0*0
_output_shapes
:?????????:? ?
sequential_4/p_re_lu_8/mulMulsequential_4/p_re_lu_8/Neg:y:0+sequential_4/p_re_lu_8/Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? ?
sequential_4/p_re_lu_8/addAddV2)sequential_4/p_re_lu_8/Relu:activations:0sequential_4/p_re_lu_8/mul:z:0*
T0*0
_output_shapes
:?????????:? ?
$sequential_4/max_pooling2d_8/MaxPoolMaxPoolsequential_4/p_re_lu_8/add:z:0*/
_output_shapes
:?????????O *
ksize
*
paddingVALID*
strides
?
+sequential_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
sequential_4/conv2d_9/Conv2DConv2D-sequential_4/max_pooling2d_8/MaxPool:output:03sequential_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@*
paddingVALID*
strides
?
,sequential_4/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_4/conv2d_9/BiasAddBiasAdd%sequential_4/conv2d_9/Conv2D:output:04sequential_4/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@?
sequential_4/p_re_lu_9/ReluRelu&sequential_4/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@?
%sequential_4/p_re_lu_9/ReadVariableOpReadVariableOp.sequential_4_p_re_lu_9_readvariableop_resource*"
_output_shapes
:K@*
dtype0}
sequential_4/p_re_lu_9/NegNeg-sequential_4/p_re_lu_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:K@?
sequential_4/p_re_lu_9/Neg_1Neg&sequential_4/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@?
sequential_4/p_re_lu_9/Relu_1Relu sequential_4/p_re_lu_9/Neg_1:y:0*
T0*/
_output_shapes
:?????????K@?
sequential_4/p_re_lu_9/mulMulsequential_4/p_re_lu_9/Neg:y:0+sequential_4/p_re_lu_9/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@?
sequential_4/p_re_lu_9/addAddV2)sequential_4/p_re_lu_9/Relu:activations:0sequential_4/p_re_lu_9/mul:z:0*
T0*/
_output_shapes
:?????????K@?
$sequential_4/max_pooling2d_9/MaxPoolMaxPoolsequential_4/p_re_lu_9/add:z:0*/
_output_shapes
:?????????%@*
ksize
*
paddingVALID*
strides
?
,sequential_4/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_4/conv2d_10/Conv2DConv2D-sequential_4/max_pooling2d_9/MaxPool:output:04sequential_4/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?*
paddingVALID*
strides
?
-sequential_4/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/conv2d_10/BiasAddBiasAdd&sequential_4/conv2d_10/Conv2D:output:05sequential_4/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!??
sequential_4/p_re_lu_10/ReluRelu'sequential_4/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!??
&sequential_4/p_re_lu_10/ReadVariableOpReadVariableOp/sequential_4_p_re_lu_10_readvariableop_resource*#
_output_shapes
:!?*
dtype0?
sequential_4/p_re_lu_10/NegNeg.sequential_4/p_re_lu_10/ReadVariableOp:value:0*
T0*#
_output_shapes
:!??
sequential_4/p_re_lu_10/Neg_1Neg'sequential_4/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!??
sequential_4/p_re_lu_10/Relu_1Relu!sequential_4/p_re_lu_10/Neg_1:y:0*
T0*0
_output_shapes
:?????????!??
sequential_4/p_re_lu_10/mulMulsequential_4/p_re_lu_10/Neg:y:0,sequential_4/p_re_lu_10/Relu_1:activations:0*
T0*0
_output_shapes
:?????????!??
sequential_4/p_re_lu_10/addAddV2*sequential_4/p_re_lu_10/Relu:activations:0sequential_4/p_re_lu_10/mul:z:0*
T0*0
_output_shapes
:?????????!??
%sequential_4/max_pooling2d_10/MaxPoolMaxPoolsequential_4/p_re_lu_10/add:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
sequential_4/flatten_4/ReshapeReshape.sequential_4/max_pooling2d_10/MaxPool:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????@?
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype0?
sequential_4/dense_4/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
sequential_4/reshape_4/ShapeShape%sequential_4/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:t
*sequential_4/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/reshape_4/strided_sliceStridedSlice%sequential_4/reshape_4/Shape:output:03sequential_4/reshape_4/strided_slice/stack:output:05sequential_4/reshape_4/strided_slice/stack_1:output:05sequential_4/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_4/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_4/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :>?
$sequential_4/reshape_4/Reshape/shapePack-sequential_4/reshape_4/strided_slice:output:0/sequential_4/reshape_4/Reshape/shape/1:output:0/sequential_4/reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
sequential_4/reshape_4/ReshapeReshape%sequential_4/dense_4/BiasAdd:output:0-sequential_4/reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????>?
sequential_4/softmax_4/SoftmaxSoftmax'sequential_4/reshape_4/Reshape:output:0*
T0*+
_output_shapes
:?????????>{
IdentityIdentity(sequential_4/softmax_4/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp.^sequential_4/conv2d_10/BiasAdd/ReadVariableOp-^sequential_4/conv2d_10/Conv2D/ReadVariableOp-^sequential_4/conv2d_8/BiasAdd/ReadVariableOp,^sequential_4/conv2d_8/Conv2D/ReadVariableOp-^sequential_4/conv2d_9/BiasAdd/ReadVariableOp,^sequential_4/conv2d_9/Conv2D/ReadVariableOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp'^sequential_4/p_re_lu_10/ReadVariableOp&^sequential_4/p_re_lu_8/ReadVariableOp&^sequential_4/p_re_lu_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2^
-sequential_4/conv2d_10/BiasAdd/ReadVariableOp-sequential_4/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_10/Conv2D/ReadVariableOp,sequential_4/conv2d_10/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_8/BiasAdd/ReadVariableOp,sequential_4/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_8/Conv2D/ReadVariableOp+sequential_4/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_4/conv2d_9/BiasAdd/ReadVariableOp,sequential_4/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_4/conv2d_9/Conv2D/ReadVariableOp+sequential_4/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp2P
&sequential_4/p_re_lu_10/ReadVariableOp&sequential_4/p_re_lu_10/ReadVariableOp2N
%sequential_4/p_re_lu_8/ReadVariableOp%sequential_4/p_re_lu_8/ReadVariableOp2N
%sequential_4/p_re_lu_9/ReadVariableOp%sequential_4/p_re_lu_9/ReadVariableOp:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?
?
+__inference_sequential_4_layer_call_fn_2374

inputs!
unknown: 
	unknown_0:  
	unknown_1::? #
	unknown_2: @
	unknown_3:@
	unknown_4:K@$
	unknown_5:@?
	unknown_6:	? 
	unknown_7:!?
	unknown_8:
?@?
	unknown_9:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_2161s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917

inputs.
readvariableop_resource:!?
identity??ReadVariableOpO
ReluReluinputs*
T0*0
_output_shapes
:?????????!?k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:!?*
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:!?O
Neg_1Neginputs*
T0*0
_output_shapes
:?????????!?T
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????!?d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????!?d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????!?_
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????!?W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????!?: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2585

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????O *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????O "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:? :X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?5
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2252
conv2d_8_input'
conv2d_8_2216: 
conv2d_8_2218: %
p_re_lu_8_2221::? '
conv2d_9_2225: @
conv2d_9_2227:@$
p_re_lu_9_2230:K@)
conv2d_10_2234:@?
conv2d_10_2236:	?&
p_re_lu_10_2239:!? 
dense_4_2244:
?@?
dense_4_2246:	?
identity??!conv2d_10/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?"p_re_lu_10/StatefulPartitionedCall?!p_re_lu_8/StatefulPartitionedCall?!p_re_lu_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_2216conv2d_8_2218*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826?
!p_re_lu_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0p_re_lu_8_2221*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843?
max_pooling2d_8/PartitionedCallPartitionedCall*p_re_lu_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????O * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_2225conv2d_9_2227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863?
!p_re_lu_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0p_re_lu_9_2230*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880?
max_pooling2d_9/PartitionedCallPartitionedCall*p_re_lu_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_2234conv2d_10_2236*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900?
"p_re_lu_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0p_re_lu_10_2239*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917?
 max_pooling2d_10/PartitionedCallPartitionedCall+p_re_lu_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925?
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_2244dense_4_2246*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_1945?
reshape_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964?
softmax_4/PartitionedCallPartitionedCall"reshape_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971u
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall#^p_re_lu_10/StatefulPartitionedCall"^p_re_lu_8/StatefulPartitionedCall"^p_re_lu_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2H
"p_re_lu_10/StatefulPartitionedCall"p_re_lu_10/StatefulPartitionedCall2F
!p_re_lu_8/StatefulPartitionedCall!p_re_lu_8/StatefulPartitionedCall2F
!p_re_lu_9/StatefulPartitionedCall!p_re_lu_9/StatefulPartitionedCall:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?	
?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843

inputs.
readvariableop_resource::? 
identity??ReadVariableOpO
ReluReluinputs*
T0*0
_output_shapes
:?????????:? k
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
::? *
dtype0P
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
::? O
Neg_1Neginputs*
T0*0
_output_shapes
:?????????:? T
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????:? d
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? d
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????:? _
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????:? W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????:? : 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_8_layer_call_fn_2575

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????O * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????O "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:? :X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2739

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????!?:X T
0
_output_shapes
:?????????!?
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????O *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????O "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:? :X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_8_layer_call_fn_2570

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1740?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????%@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????%@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K@:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_9_layer_call_fn_2647

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1773?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2662

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????%@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????%@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????K@:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2734

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_conv2d_9_layer_call_fn_2594

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????O : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????O 
 
_user_specified_nameinputs
?

?
B__inference_conv2d_8_layer_call_and_return_conditional_losses_2527

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????:? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2657

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?5
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2291
conv2d_8_input'
conv2d_8_2255: 
conv2d_8_2257: %
p_re_lu_8_2260::? '
conv2d_9_2264: @
conv2d_9_2266:@$
p_re_lu_9_2269:K@)
conv2d_10_2273:@?
conv2d_10_2275:	?&
p_re_lu_10_2278:!? 
dense_4_2283:
?@?
dense_4_2285:	?
identity??!conv2d_10/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?"p_re_lu_10/StatefulPartitionedCall?!p_re_lu_8/StatefulPartitionedCall?!p_re_lu_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_2255conv2d_8_2257*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826?
!p_re_lu_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0p_re_lu_8_2260*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843?
max_pooling2d_8/PartitionedCallPartitionedCall*p_re_lu_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????O * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_2264conv2d_9_2266*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863?
!p_re_lu_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0p_re_lu_9_2269*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880?
max_pooling2d_9/PartitionedCallPartitionedCall*p_re_lu_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_2273conv2d_10_2275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900?
"p_re_lu_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0p_re_lu_10_2278*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917?
 max_pooling2d_10/PartitionedCallPartitionedCall+p_re_lu_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925?
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_2283dense_4_2285*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_1945?
reshape_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964?
softmax_4/PartitionedCallPartitionedCall"reshape_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971u
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall#^p_re_lu_10/StatefulPartitionedCall"^p_re_lu_8/StatefulPartitionedCall"^p_re_lu_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2H
"p_re_lu_10/StatefulPartitionedCall"p_re_lu_10/StatefulPartitionedCall2F
!p_re_lu_8/StatefulPartitionedCall!p_re_lu_8/StatefulPartitionedCall2F
!p_re_lu_9/StatefulPartitionedCall!p_re_lu_9/StatefulPartitionedCall:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?'
?
__inference__traced_save_2865
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_p_re_lu_8_alpha_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop.
*savev2_p_re_lu_9_alpha_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_p_re_lu_10_alpha_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_p_re_lu_8_alpha_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop*savev2_p_re_lu_9_alpha_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_p_re_lu_10_alpha_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : ::? : @:@:K@:@?:?:!?:
?@?:?: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :)%
#
_output_shapes
::? :,(
&
_output_shapes
: @: 

_output_shapes
:@:($
"
_output_shapes
:K@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:)	%
#
_output_shapes
:!?:&
"
 
_output_shapes
:
?@?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880

inputs-
readvariableop_resource:K@
identity??ReadVariableOpN
ReluReluinputs*
T0*/
_output_shapes
:?????????K@j
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:K@*
dtype0O
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:K@N
Neg_1Neginputs*
T0*/
_output_shapes
:?????????K@S
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????K@c
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@c
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????K@^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????K@W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????K@: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????K@
 
_user_specified_nameinputs
?J
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2441

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource: 8
!p_re_lu_8_readvariableop_resource::? A
'conv2d_9_conv2d_readvariableop_resource: @6
(conv2d_9_biasadd_readvariableop_resource:@7
!p_re_lu_9_readvariableop_resource:K@C
(conv2d_10_conv2d_readvariableop_resource:@?8
)conv2d_10_biasadd_readvariableop_resource:	?9
"p_re_lu_10_readvariableop_resource:!?:
&dense_4_matmul_readvariableop_resource:
?@?6
'dense_4_biasadd_readvariableop_resource:	?
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?p_re_lu_10/ReadVariableOp?p_re_lu_8/ReadVariableOp?p_re_lu_9/ReadVariableOp?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? *
paddingVALID*
strides
?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????:? l
p_re_lu_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? 
p_re_lu_8/ReadVariableOpReadVariableOp!p_re_lu_8_readvariableop_resource*#
_output_shapes
::? *
dtype0d
p_re_lu_8/NegNeg p_re_lu_8/ReadVariableOp:value:0*
T0*#
_output_shapes
::? l
p_re_lu_8/Neg_1Negconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:?????????:? h
p_re_lu_8/Relu_1Relup_re_lu_8/Neg_1:y:0*
T0*0
_output_shapes
:?????????:? ?
p_re_lu_8/mulMulp_re_lu_8/Neg:y:0p_re_lu_8/Relu_1:activations:0*
T0*0
_output_shapes
:?????????:? ?
p_re_lu_8/addAddV2p_re_lu_8/Relu:activations:0p_re_lu_8/mul:z:0*
T0*0
_output_shapes
:?????????:? ?
max_pooling2d_8/MaxPoolMaxPoolp_re_lu_8/add:z:0*/
_output_shapes
:?????????O *
ksize
*
paddingVALID*
strides
?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@*
paddingVALID*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@k
p_re_lu_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@~
p_re_lu_9/ReadVariableOpReadVariableOp!p_re_lu_9_readvariableop_resource*"
_output_shapes
:K@*
dtype0c
p_re_lu_9/NegNeg p_re_lu_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:K@k
p_re_lu_9/Neg_1Negconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????K@g
p_re_lu_9/Relu_1Relup_re_lu_9/Neg_1:y:0*
T0*/
_output_shapes
:?????????K@?
p_re_lu_9/mulMulp_re_lu_9/Neg:y:0p_re_lu_9/Relu_1:activations:0*
T0*/
_output_shapes
:?????????K@?
p_re_lu_9/addAddV2p_re_lu_9/Relu:activations:0p_re_lu_9/mul:z:0*
T0*/
_output_shapes
:?????????K@?
max_pooling2d_9/MaxPoolMaxPoolp_re_lu_9/add:z:0*/
_output_shapes
:?????????%@*
ksize
*
paddingVALID*
strides
?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?*
paddingVALID*
strides
?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????!?n
p_re_lu_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/ReadVariableOpReadVariableOp"p_re_lu_10_readvariableop_resource*#
_output_shapes
:!?*
dtype0f
p_re_lu_10/NegNeg!p_re_lu_10/ReadVariableOp:value:0*
T0*#
_output_shapes
:!?n
p_re_lu_10/Neg_1Negconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:?????????!?j
p_re_lu_10/Relu_1Relup_re_lu_10/Neg_1:y:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/mulMulp_re_lu_10/Neg:y:0p_re_lu_10/Relu_1:activations:0*
T0*0
_output_shapes
:?????????!??
p_re_lu_10/addAddV2p_re_lu_10/Relu:activations:0p_re_lu_10/mul:z:0*
T0*0
_output_shapes
:?????????!??
max_pooling2d_10/MaxPoolMaxPoolp_re_lu_10/add:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    ?
flatten_4/ReshapeReshape!max_pooling2d_10/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????@?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype0?
dense_4/MatMulMatMulflatten_4/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????W
reshape_4/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :>?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_4/ReshapeReshapedense_4/BiasAdd:output:0 reshape_4/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????>n
softmax_4/SoftmaxSoftmaxreshape_4/Reshape:output:0*
T0*+
_output_shapes
:?????????>n
IdentityIdentitysoftmax_4/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^p_re_lu_10/ReadVariableOp^p_re_lu_8/ReadVariableOp^p_re_lu_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp26
p_re_lu_10/ReadVariableOpp_re_lu_10/ReadVariableOp24
p_re_lu_8/ReadVariableOpp_re_lu_8/ReadVariableOp24
p_re_lu_9/ReadVariableOpp_re_lu_9/ReadVariableOp:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?

_
C__inference_reshape_4_layer_call_and_return_conditional_losses_2787

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :>?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????>\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1806

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
D
(__inference_softmax_4_layer_call_fn_2792

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>:S O
+
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
+__inference_sequential_4_layer_call_fn_1999
conv2d_8_input!
unknown: 
	unknown_0:  
	unknown_1::? #
	unknown_2: @
	unknown_3:@
	unknown_4:K@$
	unknown_5:@?
	unknown_6:	? 
	unknown_7:!?
	unknown_8:
?@?
	unknown_9:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_1974s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:?????????<?
(
_user_specified_nameconv2d_8_input
?

?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????K@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????K@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????O : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????O 
 
_user_specified_nameinputs
?
?
(__inference_p_re_lu_8_layer_call_fn_2541

inputs
unknown::? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????:? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????:? : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????:? 
 
_user_specified_nameinputs
?5
?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2161

inputs'
conv2d_8_2125: 
conv2d_8_2127: %
p_re_lu_8_2130::? '
conv2d_9_2134: @
conv2d_9_2136:@$
p_re_lu_9_2139:K@)
conv2d_10_2143:@?
conv2d_10_2145:	?&
p_re_lu_10_2148:!? 
dense_4_2153:
?@?
dense_4_2155:	?
identity??!conv2d_10/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?"p_re_lu_10/StatefulPartitionedCall?!p_re_lu_8/StatefulPartitionedCall?!p_re_lu_9/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_2125conv2d_8_2127*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_8_layer_call_and_return_conditional_losses_1826?
!p_re_lu_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0p_re_lu_8_2130*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????:? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_1843?
max_pooling2d_8/PartitionedCallPartitionedCall*p_re_lu_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????O * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1851?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_2134conv2d_9_2136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_9_layer_call_and_return_conditional_losses_1863?
!p_re_lu_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0p_re_lu_9_2139*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1880?
max_pooling2d_9/PartitionedCallPartitionedCall*p_re_lu_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1888?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_2143conv2d_10_2145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_1900?
"p_re_lu_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0p_re_lu_10_2148*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????!?*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_1917?
 max_pooling2d_10/PartitionedCallPartitionedCall+p_re_lu_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_1925?
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_1933?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_4_2153dense_4_2155*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_1945?
reshape_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_4_layer_call_and_return_conditional_losses_1964?
softmax_4/PartitionedCallPartitionedCall"reshape_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_softmax_4_layer_call_and_return_conditional_losses_1971u
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????>?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall#^p_re_lu_10/StatefulPartitionedCall"^p_re_lu_8/StatefulPartitionedCall"^p_re_lu_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????<?: : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2H
"p_re_lu_10/StatefulPartitionedCall"p_re_lu_10/StatefulPartitionedCall2F
!p_re_lu_8/StatefulPartitionedCall!p_re_lu_8/StatefulPartitionedCall2F
!p_re_lu_9/StatefulPartitionedCall!p_re_lu_9/StatefulPartitionedCall:X T
0
_output_shapes
:?????????<?
 
_user_specified_nameinputs
?
?
(__inference_p_re_lu_9_layer_call_fn_2611

inputs
unknown:K@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????K@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_1759w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????K@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4????????????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
R
conv2d_8_input@
 serving_default_conv2d_8_input:0?????????<?A
	softmax_44
StatefulPartitionedCall:0?????????>tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
layer-12
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	alpha
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	.alpha
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

9kernel
:bias
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	@alpha
#A_self_saveable_object_factories
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Pkernel
Qbias
#R_self_saveable_object_factories
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#W_self_saveable_object_factories
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#\_self_saveable_object_factories
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
n
0
1
2
'3
(4
.5
96
:7
@8
P9
Q10"
trackable_list_wrapper
n
0
1
2
'3
(4
.5
96
:7
@8
P9
Q10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_8/kernel
: 2conv2d_8/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$:? 2p_re_lu_8/alpha
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_9/kernel
:@2conv2d_9/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#K@2p_re_lu_9/alpha
 "
trackable_dict_wrapper
'
.0"
trackable_list_wrapper
'
.0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
0	variables
1trainable_variables
2regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5	variables
6trainable_variables
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_10/kernel
:?2conv2d_10/bias
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%!?2p_re_lu_10/alpha
 "
trackable_dict_wrapper
'
@0"
trackable_list_wrapper
'
@0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
?@?2dense_4/kernel
:?2dense_4/bias
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
+__inference_sequential_4_layer_call_fn_1999
+__inference_sequential_4_layer_call_fn_2347
+__inference_sequential_4_layer_call_fn_2374
+__inference_sequential_4_layer_call_fn_2213?
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
F__inference_sequential_4_layer_call_and_return_conditional_losses_2441
F__inference_sequential_4_layer_call_and_return_conditional_losses_2508
F__inference_sequential_4_layer_call_and_return_conditional_losses_2252
F__inference_sequential_4_layer_call_and_return_conditional_losses_2291?
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
?B?
__inference__wrapped_model_1710conv2d_8_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2d_8_layer_call_fn_2517?
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
B__inference_conv2d_8_layer_call_and_return_conditional_losses_2527?
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
(__inference_p_re_lu_8_layer_call_fn_2534
(__inference_p_re_lu_8_layer_call_fn_2541?
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
?2?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2553
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2565?
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
?2?
.__inference_max_pooling2d_8_layer_call_fn_2570
.__inference_max_pooling2d_8_layer_call_fn_2575?
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
?2?
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2580
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2585?
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
'__inference_conv2d_9_layer_call_fn_2594?
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
B__inference_conv2d_9_layer_call_and_return_conditional_losses_2604?
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
(__inference_p_re_lu_9_layer_call_fn_2611
(__inference_p_re_lu_9_layer_call_fn_2618?
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
?2?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2630
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2642?
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
?2?
.__inference_max_pooling2d_9_layer_call_fn_2647
.__inference_max_pooling2d_9_layer_call_fn_2652?
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
?2?
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2657
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2662?
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
(__inference_conv2d_10_layer_call_fn_2671?
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
C__inference_conv2d_10_layer_call_and_return_conditional_losses_2681?
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
)__inference_p_re_lu_10_layer_call_fn_2688
)__inference_p_re_lu_10_layer_call_fn_2695?
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
?2?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2707
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2719?
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
?2?
/__inference_max_pooling2d_10_layer_call_fn_2724
/__inference_max_pooling2d_10_layer_call_fn_2729?
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
?2?
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2734
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2739?
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
(__inference_flatten_4_layer_call_fn_2744?
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
C__inference_flatten_4_layer_call_and_return_conditional_losses_2750?
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
&__inference_dense_4_layer_call_fn_2759?
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
A__inference_dense_4_layer_call_and_return_conditional_losses_2769?
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
(__inference_reshape_4_layer_call_fn_2774?
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
C__inference_reshape_4_layer_call_and_return_conditional_losses_2787?
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
(__inference_softmax_4_layer_call_fn_2792?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_softmax_4_layer_call_and_return_conditional_losses_2797?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_2320conv2d_8_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_1710?'(.9:@PQ@?=
6?3
1?.
conv2d_8_input?????????<?
? "9?6
4
	softmax_4'?$
	softmax_4?????????>?
C__inference_conv2d_10_layer_call_and_return_conditional_losses_2681m9:7?4
-?*
(?%
inputs?????????%@
? ".?+
$?!
0?????????!?
? ?
(__inference_conv2d_10_layer_call_fn_2671`9:7?4
-?*
(?%
inputs?????????%@
? "!??????????!??
B__inference_conv2d_8_layer_call_and_return_conditional_losses_2527n8?5
.?+
)?&
inputs?????????<?
? ".?+
$?!
0?????????:? 
? ?
'__inference_conv2d_8_layer_call_fn_2517a8?5
.?+
)?&
inputs?????????<?
? "!??????????:? ?
B__inference_conv2d_9_layer_call_and_return_conditional_losses_2604l'(7?4
-?*
(?%
inputs?????????O 
? "-?*
#? 
0?????????K@
? ?
'__inference_conv2d_9_layer_call_fn_2594_'(7?4
-?*
(?%
inputs?????????O 
? " ??????????K@?
A__inference_dense_4_layer_call_and_return_conditional_losses_2769^PQ0?-
&?#
!?
inputs??????????@
? "&?#
?
0??????????
? {
&__inference_dense_4_layer_call_fn_2759QPQ0?-
&?#
!?
inputs??????????@
? "????????????
C__inference_flatten_4_layer_call_and_return_conditional_losses_2750b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????@
? ?
(__inference_flatten_4_layer_call_fn_2744U8?5
.?+
)?&
inputs??????????
? "???????????@?
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2734?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
J__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_2739j8?5
.?+
)?&
inputs?????????!?
? ".?+
$?!
0??????????
? ?
/__inference_max_pooling2d_10_layer_call_fn_2724?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
/__inference_max_pooling2d_10_layer_call_fn_2729]8?5
.?+
)?&
inputs?????????!?
? "!????????????
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2580?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_2585i8?5
.?+
)?&
inputs?????????:? 
? "-?*
#? 
0?????????O 
? ?
.__inference_max_pooling2d_8_layer_call_fn_2570?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
.__inference_max_pooling2d_8_layer_call_fn_2575\8?5
.?+
)?&
inputs?????????:? 
? " ??????????O ?
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2657?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_2662h7?4
-?*
(?%
inputs?????????K@
? "-?*
#? 
0?????????%@
? ?
.__inference_max_pooling2d_9_layer_call_fn_2647?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
.__inference_max_pooling2d_9_layer_call_fn_2652[7?4
-?*
(?%
inputs?????????K@
? " ??????????%@?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2707?@R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0?????????!?
? ?
D__inference_p_re_lu_10_layer_call_and_return_conditional_losses_2719m@8?5
.?+
)?&
inputs?????????!?
? ".?+
$?!
0?????????!?
? ?
)__inference_p_re_lu_10_layer_call_fn_2688z@R?O
H?E
C?@
inputs4????????????????????????????????????
? "!??????????!??
)__inference_p_re_lu_10_layer_call_fn_2695`@8?5
.?+
)?&
inputs?????????!?
? "!??????????!??
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2553?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0?????????:? 
? ?
C__inference_p_re_lu_8_layer_call_and_return_conditional_losses_2565m8?5
.?+
)?&
inputs?????????:? 
? ".?+
$?!
0?????????:? 
? ?
(__inference_p_re_lu_8_layer_call_fn_2534zR?O
H?E
C?@
inputs4????????????????????????????????????
? "!??????????:? ?
(__inference_p_re_lu_8_layer_call_fn_2541`8?5
.?+
)?&
inputs?????????:? 
? "!??????????:? ?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2630?.R?O
H?E
C?@
inputs4????????????????????????????????????
? "-?*
#? 
0?????????K@
? ?
C__inference_p_re_lu_9_layer_call_and_return_conditional_losses_2642k.7?4
-?*
(?%
inputs?????????K@
? "-?*
#? 
0?????????K@
? ?
(__inference_p_re_lu_9_layer_call_fn_2611y.R?O
H?E
C?@
inputs4????????????????????????????????????
? " ??????????K@?
(__inference_p_re_lu_9_layer_call_fn_2618^.7?4
-?*
(?%
inputs?????????K@
? " ??????????K@?
C__inference_reshape_4_layer_call_and_return_conditional_losses_2787]0?-
&?#
!?
inputs??????????
? ")?&
?
0?????????>
? |
(__inference_reshape_4_layer_call_fn_2774P0?-
&?#
!?
inputs??????????
? "??????????>?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2252?'(.9:@PQH?E
>?;
1?.
conv2d_8_input?????????<?
p 

 
? ")?&
?
0?????????>
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2291?'(.9:@PQH?E
>?;
1?.
conv2d_8_input?????????<?
p

 
? ")?&
?
0?????????>
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2441z'(.9:@PQ@?=
6?3
)?&
inputs?????????<?
p 

 
? ")?&
?
0?????????>
? ?
F__inference_sequential_4_layer_call_and_return_conditional_losses_2508z'(.9:@PQ@?=
6?3
)?&
inputs?????????<?
p

 
? ")?&
?
0?????????>
? ?
+__inference_sequential_4_layer_call_fn_1999u'(.9:@PQH?E
>?;
1?.
conv2d_8_input?????????<?
p 

 
? "??????????>?
+__inference_sequential_4_layer_call_fn_2213u'(.9:@PQH?E
>?;
1?.
conv2d_8_input?????????<?
p

 
? "??????????>?
+__inference_sequential_4_layer_call_fn_2347m'(.9:@PQ@?=
6?3
)?&
inputs?????????<?
p 

 
? "??????????>?
+__inference_sequential_4_layer_call_fn_2374m'(.9:@PQ@?=
6?3
)?&
inputs?????????<?
p

 
? "??????????>?
"__inference_signature_wrapper_2320?'(.9:@PQR?O
? 
H?E
C
conv2d_8_input1?.
conv2d_8_input?????????<?"9?6
4
	softmax_4'?$
	softmax_4?????????>?
C__inference_softmax_4_layer_call_and_return_conditional_losses_2797d7?4
-?*
$?!
inputs?????????>

 
? ")?&
?
0?????????>
? ?
(__inference_softmax_4_layer_call_fn_2792W7?4
-?*
$?!
inputs?????????>

 
? "??????????>