Ћ│.
З╔
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
џ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.9.12v2.9.0-18-gd8ce9f9c3018х ,
Ї
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*+
shared_nameAdam/lstm/lstm_cell/bias/v
є
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:а*
dtype0
ф
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Б
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
╚а*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dа*-
shared_nameAdam/lstm/lstm_cell/kernel/v
ј
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	dа*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
Ѓ
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	╚*
dtype0
Њ
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*,
shared_nameAdam/embedding/embeddings/v
ї
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	љNd*
dtype0
Ї
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*+
shared_nameAdam/lstm/lstm_cell/bias/m
є
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:а*
dtype0
ф
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Б
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
╚а*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dа*-
shared_nameAdam/lstm/lstm_cell/kernel/m
ј
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	dа*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
Ѓ
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	╚*
dtype0
Њ
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*,
shared_nameAdam/embedding/embeddings/m
ї
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	љNd*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:а*
dtype0
ю
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚а*0
shared_name!lstm/lstm_cell/recurrent_kernel
Ћ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
╚а*
dtype0
Є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dа*&
shared_namelstm/lstm_cell/kernel
ђ
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	dа*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╚*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	╚*
dtype0
Ё
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	љNd*
dtype0

NoOpNoOp
¤4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*і4
valueђ4B§3 BШ3
┴
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
д
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
%1
&2
'3
#4
$5*
.
0
%1
&2
'3
#4
$5*
* 
░
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
-trace_0
.trace_1
/trace_2
0trace_3* 
6
1trace_0
2trace_1
3trace_2
4trace_3* 
* 
░
5iter

6beta_1

7beta_2
	8decay
9learning_ratemo#mp$mq%mr&ms'mtvu#vv$vw%vx&vy'vz*

:serving_default* 

0*

0*
* 
Њ
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

@trace_0* 

Atrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1
'2*

%0
&1
'2*
* 
Ъ

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
с
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

%kernel
&recurrent_kernel
'bias*
* 

#0
$1*

#0
$1*
* 
Њ
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1
'2*

%0
&1
'2*
* 
Њ
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
H
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs*
* 
* 
* 
* 
* 

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
їЁ
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
їЁ
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ
serving_default_embedding_inputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
┬
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_26954
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ђ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_29773
Я
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*'
Tin 
2*
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_29864╬■+
│L
а
&__forward_gpu_lstm_with_fallback_28788

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_b574490a-f352-4ca6-95b7-279b582f9845*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_28613_28789*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
╦<
Я
__inference__traced_save_29773
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: §
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*д
valueюBЎB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B н
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*┘
_input_shapesК
─: :	љNd:	╚::	dа:
╚а:а: : : : : : : : : :	љNd:	╚::	dа:
╚а:а:	љNd:	╚::	dа:
╚а:а: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	љNd:%!

_output_shapes
:	╚: 

_output_shapes
::%!

_output_shapes
:	dа:&"
 
_output_shapes
:
╚а:!

_output_shapes	
:а:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :
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
: :%!

_output_shapes
:	љNd:%!

_output_shapes
:	╚: 

_output_shapes
::%!

_output_shapes
:	dа:&"
 
_output_shapes
:
╚а:!

_output_shapes	
:а:%!

_output_shapes
:	љNd:%!

_output_shapes
:	╚: 

_output_shapes
::%!

_output_shapes
:	dа:&"
 
_output_shapes
:
╚а:!

_output_shapes	
:а:

_output_shapes
: 
љ	
╝
while_cond_26444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_26444___redundant_placeholder03
/while_while_cond_26444___redundant_placeholder13
/while_while_cond_26444___redundant_placeholder23
/while_while_cond_26444___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
џ

Ы
@__inference_dense_layer_call_and_return_conditional_losses_26330

inputs1
matmul_readvariableop_resource:	╚-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
«
║
?__inference_lstm_layer_call_and_return_conditional_losses_25853

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_25580j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
▓+
┘
E__inference_sequential_layer_call_and_return_conditional_losses_27430

inputs3
 embedding_embedding_lookup_26992:	љNd4
!lstm_read_readvariableop_resource:	dа7
#lstm_read_1_readvariableop_resource:
╚а2
#lstm_read_2_readvariableop_resource:	а7
$dense_matmul_readvariableop_resource:	╚3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         р
embedding/embedding_lookupResourceGather embedding_embedding_lookup_26992embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/26992*+
_output_shapes
:         d*
dtype0┐
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/26992*+
_output_shapes
:         dЋ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         dh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ѓ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	dа*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dађ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚а{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:а*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ач
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_27150Ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0ї
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
З┬
с
9__inference___backward_gpu_lstm_with_fallback_25675_25851
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:                  ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:«
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesѓ
 :         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:                  ╚::                  d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_3c8377a4-4b7b-430e-a7c8-2309353bf771*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_25850*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:;7
5
_output_shapes#
!:                  ╚:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ю
║
?__inference_lstm_layer_call_and_return_conditional_losses_29649

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_29376j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
█;
┐
__inference_standard_lstm_28089

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_28003*
condR
while_cond_28002*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ccc7a811-0767-4d10-ba6f-97e22f8ac9bc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
└;
┐
__inference_standard_lstm_29376

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_29290*
condR
while_cond_29289*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_15ef1fa5-e6f6-4faf-9b33-9c4c7ad23fff*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ь)
╬
while_body_28861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
ю
║
?__inference_lstm_layer_call_and_return_conditional_losses_26311

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_26038j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Љ	
ќ
*__inference_sequential_layer_call_fn_26352
embedding_input
unknown:	љNd
	unknown_0:	dа
	unknown_1:
╚а
	unknown_2:	а
	unknown_3:	╚
	unknown_4:
identityѕбStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input
ўL
а
&__forward_gpu_lstm_with_fallback_27862

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_882d2986-df67-4196-91e4-4b72924742ae*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_27687_27863*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
└;
┐
__inference_standard_lstm_26531

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_26445*
condR
while_cond_26444*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2b6f4c39-b0e2-433b-8c02-65c5c6cee7ca*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ь)
╬
while_body_25952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
ь)
╬
while_body_28003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
│L
а
&__forward_gpu_lstm_with_fallback_25410

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_6294d7ec-6237-4d9b-97cf-8e0c691af7aa*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_25235_25411*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
З┬
с
9__inference___backward_gpu_lstm_with_fallback_28184_28360
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:                  ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:«
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesѓ
 :         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:                  ╚::                  d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_ccc7a811-0767-4d10-ba6f-97e22f8ac9bc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_28359*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:;7
5
_output_shapes#
!:                  ╚:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
й
Њ
%__inference_dense_layer_call_fn_29658

inputs
unknown:	╚
	unknown_0:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
З┬
с
9__inference___backward_gpu_lstm_with_fallback_25235_25411
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:                  ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:«
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesѓ
 :         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:                  ╚::                  d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_6294d7ec-6237-4d9b-97cf-8e0c691af7aa*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_25410*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:;7
5
_output_shapes#
!:                  ╚:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
љ	
╝
while_cond_27505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_27505___redundant_placeholder03
/while_while_cond_27505___redundant_placeholder13
/while_while_cond_27505___redundant_placeholder23
/while_while_cond_27505___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
│L
а
&__forward_gpu_lstm_with_fallback_28359

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ccc7a811-0767-4d10-ba6f-97e22f8ac9bc*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_28184_28360*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
г┬
с
9__inference___backward_gpu_lstm_with_fallback_29471_29647
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_15ef1fa5-e6f6-4faf-9b33-9c4c7ad23fff*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_29646*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ш
Ї
*__inference_sequential_layer_call_fn_26988

inputs
unknown:	љNd
	unknown_0:	dа
	unknown_1:
╚а
	unknown_2:	а
	unknown_3:	╚
	unknown_4:
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ўL
а
&__forward_gpu_lstm_with_fallback_26801

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2b6f4c39-b0e2-433b-8c02-65c5c6cee7ca*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_26626_26802*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_28431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_28431___redundant_placeholder03
/while_while_cond_28431___redundant_placeholder13
/while_while_cond_28431___redundant_placeholder23
/while_while_cond_28431___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ь)
╬
while_body_28432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
Х
╝
?__inference_lstm_layer_call_and_return_conditional_losses_28362
inputs_0/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:аи
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_28089j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ўL
а
&__forward_gpu_lstm_with_fallback_29646

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_15ef1fa5-e6f6-4faf-9b33-9c4c7ad23fff*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_29471_29647*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
Т@
╦
(__inference_gpu_lstm_with_fallback_26132

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ecf0bb90-299c-473a-838a-11c4cedd1b8d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
З┬
с
9__inference___backward_gpu_lstm_with_fallback_28613_28789
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Б
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:                  ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:«
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┘
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:а{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesѓ
 :         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:                  ╚::                  d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_b574490a-f352-4ca6-95b7-279b582f9845*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_28788*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:;7
5
_output_shapes#
!:                  ╚:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
іA
╦
(__inference_gpu_lstm_with_fallback_28183

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀о
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ccc7a811-0767-4d10-ba6f-97e22f8ac9bc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
Ю	
А
D__inference_embedding_layer_call_and_return_conditional_losses_25879

inputs)
embedding_lookup_25873:	љNd
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╣
embedding_lookupResourceGatherembedding_lookup_25873Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/25873*+
_output_shapes
:         d*
dtype0А
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/25873*+
_output_shapes
:         dЂ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
с3
┴
 __inference__wrapped_model_24980
embedding_input>
+sequential_embedding_embedding_lookup_24542:	љNd?
,sequential_lstm_read_readvariableop_resource:	dаB
.sequential_lstm_read_1_readvariableop_resource:
╚а=
.sequential_lstm_read_2_readvariableop_resource:	аB
/sequential_dense_matmul_readvariableop_resource:	╚>
0sequential_dense_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб%sequential/embedding/embedding_lookupб#sequential/lstm/Read/ReadVariableOpб%sequential/lstm/Read_1/ReadVariableOpб%sequential/lstm/Read_2/ReadVariableOps
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:         Ї
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_24542sequential/embedding/Cast:y:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/24542*+
_output_shapes
:         d*
dtype0Я
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/24542*+
_output_shapes
:         dФ
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         d~
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚Б
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚c
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚Д
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚Љ
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	dа*
dtype0{
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаќ
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0ђ
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аЉ
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:а*
dtype0{
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:а╚
sequential/lstm/PartitionedCallPartitionedCall9sequential/embedding/embedding_lookup/Identity_1:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_24700Ќ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0Г
sequential/dense/MatMulMatMul(sequential/lstm/PartitionedCall:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ћ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         k
IdentityIdentitysequential/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         и
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input
х
ђ
E__inference_sequential_layer_call_and_return_conditional_losses_26859

inputs"
embedding_26843:	љNd

lstm_26846:	dа

lstm_26848:
╚а

lstm_26850:	а
dense_26853:	╚
dense_26855:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallР
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_26843*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_25879љ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_26846
lstm_26848
lstm_26850*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26804ђ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_26853dense_26855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26330u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ь)
╬
while_body_27064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
Т@
╦
(__inference_gpu_lstm_with_fallback_26625

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2b6f4c39-b0e2-433b-8c02-65c5c6cee7ca*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
б
~
)__inference_embedding_layer_call_fn_27879

inputs
unknown:	љNd
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_25879s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ю
║
?__inference_lstm_layer_call_and_return_conditional_losses_29220

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_28947j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
љ	
╝
while_cond_25493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_25493___redundant_placeholder03
/while_while_cond_25493___redundant_placeholder13
/while_while_cond_25493___redundant_placeholder23
/while_while_cond_25493___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
і
┤
$__inference_lstm_layer_call_fn_27911
inputs_0
unknown:	dа
	unknown_0:
╚а
	unknown_1:	а
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_25853p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
г┬
с
9__inference___backward_gpu_lstm_with_fallback_27687_27863
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_882d2986-df67-4196-91e4-4b72924742ae*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_27862*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
█;
┐
__inference_standard_lstm_28518

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_28432*
condR
while_cond_28431*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_b574490a-f352-4ca6-95b7-279b582f9845*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
Т@
╦
(__inference_gpu_lstm_with_fallback_24794

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_d3fdb7b5-d7f0-4c9a-b17e-d0dad52dda66*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
іA
╦
(__inference_gpu_lstm_with_fallback_28612

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀о
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_b574490a-f352-4ca6-95b7-279b582f9845*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_29289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_29289___redundant_placeholder03
/while_while_cond_29289___redundant_placeholder13
/while_while_cond_29289___redundant_placeholder23
/while_while_cond_29289___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
г┬
с
9__inference___backward_gpu_lstm_with_fallback_26626_26802
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_2b6f4c39-b0e2-433b-8c02-65c5c6cee7ca*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_26801*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ь)
╬
while_body_24614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
г┬
с
9__inference___backward_gpu_lstm_with_fallback_26133_26309
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_ecf0bb90-299c-473a-838a-11c4cedd1b8d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_26308*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ш
Ї
*__inference_sequential_layer_call_fn_26971

inputs
unknown:	љNd
	unknown_0:	dа
	unknown_1:
╚а
	unknown_2:	а
	unknown_3:	╚
	unknown_4:
identityѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ь)
╬
while_body_26445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
█;
┐
__inference_standard_lstm_25580

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_25494*
condR
while_cond_25493*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_3c8377a4-4b7b-430e-a7c8-2309353bf771*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
і
┤
$__inference_lstm_layer_call_fn_27900
inputs_0
unknown:	dа
	unknown_0:
╚а
	unknown_1:	а
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_25413p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
юm
Т
!__inference__traced_restore_29864
file_prefix8
%assignvariableop_embedding_embeddings:	љNd2
assignvariableop_1_dense_kernel:	╚+
assignvariableop_2_dense_bias:;
(assignvariableop_3_lstm_lstm_cell_kernel:	dаF
2assignvariableop_4_lstm_lstm_cell_recurrent_kernel:
╚а5
&assignvariableop_5_lstm_lstm_cell_bias:	а&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: B
/assignvariableop_15_adam_embedding_embeddings_m:	љNd:
'assignvariableop_16_adam_dense_kernel_m:	╚3
%assignvariableop_17_adam_dense_bias_m:C
0assignvariableop_18_adam_lstm_lstm_cell_kernel_m:	dаN
:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_m:
╚а=
.assignvariableop_20_adam_lstm_lstm_cell_bias_m:	аB
/assignvariableop_21_adam_embedding_embeddings_v:	љNd:
'assignvariableop_22_adam_dense_kernel_v:	╚3
%assignvariableop_23_adam_dense_bias_v:C
0assignvariableop_24_adam_lstm_lstm_cell_kernel_v:	dаN
:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_v:
╚а=
.assignvariableop_26_adam_lstm_lstm_cell_bias_v:	а
identity_28ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ђ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*д
valueюBЎB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHе
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ф
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ё
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_3AssignVariableOp(assignvariableop_3_lstm_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_4AssignVariableOp2assignvariableop_4_lstm_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_5AssignVariableOp&assignvariableop_5_lstm_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_lstm_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_lstm_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_lstm_lstm_cell_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_25AssignVariableOp:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_lstm_lstm_cell_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 А
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ј
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
л
Ѕ
E__inference_sequential_layer_call_and_return_conditional_losses_26910
embedding_input"
embedding_26894:	љNd

lstm_26897:	dа

lstm_26899:
╚а

lstm_26901:	а
dense_26904:	╚
dense_26906:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallв
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_26894*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_25879љ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_26897
lstm_26899
lstm_26901*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26311ђ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_26904dense_26906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26330u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input
џ

Ы
@__inference_dense_layer_call_and_return_conditional_losses_29669

inputs1
matmul_readvariableop_resource:	╚-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╚
 
_user_specified_nameinputs
л
Ѕ
E__inference_sequential_layer_call_and_return_conditional_losses_26929
embedding_input"
embedding_26913:	љNd

lstm_26916:	dа

lstm_26918:
╚а

lstm_26920:	а
dense_26923:	╚
dense_26925:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallв
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_26913*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_25879љ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_26916
lstm_26918
lstm_26920*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26804ђ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_26923dense_26925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26330u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input
г┬
с
9__inference___backward_gpu_lstm_with_fallback_24795_24971
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_d3fdb7b5-d7f0-4c9a-b17e-d0dad52dda66*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_24970*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ь)
╬
while_body_25054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
ўL
а
&__forward_gpu_lstm_with_fallback_24970

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_d3fdb7b5-d7f0-4c9a-b17e-d0dad52dda66*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_24795_24971*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
└;
┐
__inference_standard_lstm_24700

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_24614*
condR
while_cond_24613*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_d3fdb7b5-d7f0-4c9a-b17e-d0dad52dda66*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_27063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_27063___redundant_placeholder03
/while_while_cond_27063___redundant_placeholder13
/while_while_cond_27063___redundant_placeholder23
/while_while_cond_27063___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Т@
╦
(__inference_gpu_lstm_with_fallback_27244

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2aa68908-dca6-4a09-83ae-a29e31ca149f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
х
ђ
E__inference_sequential_layer_call_and_return_conditional_losses_26337

inputs"
embedding_25880:	љNd

lstm_26312:	dа

lstm_26314:
╚а

lstm_26316:	а
dense_26331:	╚
dense_26333:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallР
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_25880*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_25879љ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_26312
lstm_26314
lstm_26316*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26311ђ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_26331dense_26333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_26330u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Т@
╦
(__inference_gpu_lstm_with_fallback_27686

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_882d2986-df67-4196-91e4-4b72924742ae*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_24613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_24613___redundant_placeholder03
/while_while_cond_24613___redundant_placeholder13
/while_while_cond_24613___redundant_placeholder23
/while_while_cond_24613___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Љ	
ќ
*__inference_sequential_layer_call_fn_26891
embedding_input
unknown:	љNd
	unknown_0:	dа
	unknown_1:
╚а
	unknown_2:	а
	unknown_3:	╚
	unknown_4:
identityѕбStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_26859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input
▓+
┘
E__inference_sequential_layer_call_and_return_conditional_losses_27872

inputs3
 embedding_embedding_lookup_27434:	љNd4
!lstm_read_readvariableop_resource:	dа7
#lstm_read_1_readvariableop_resource:
╚а2
#lstm_read_2_readvariableop_resource:	а7
$dense_matmul_readvariableop_resource:	╚3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOp_
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         р
embedding/embedding_lookupResourceGather embedding_embedding_lookup_27434embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/27434*+
_output_shapes
:         d*
dtype0┐
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/27434*+
_output_shapes
:         dЋ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         dh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ╚X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ѓ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	dа*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dађ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚а{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:а*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ач
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_27592Ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	╚*
dtype0ї
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ўL
а
&__forward_gpu_lstm_with_fallback_27420

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2aa68908-dca6-4a09-83ae-a29e31ca149f*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_27245_27421*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
Х
╝
?__inference_lstm_layer_call_and_return_conditional_losses_28791
inputs_0/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:аи
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_28518j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ю
║
?__inference_lstm_layer_call_and_return_conditional_losses_26804

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_26531j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
«
║
?__inference_lstm_layer_call_and_return_conditional_losses_25413

inputs/
read_readvariableop_resource:	dа2
read_1_readvariableop_resource:
╚а-
read_2_readvariableop_resource:	а

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ╚S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╚w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ╚q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dа*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dаv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
╚а*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
╚аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:а*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ах
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:         ╚:         ╚:         ╚:         ╚: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_25140j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚ї
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Ю	
А
D__inference_embedding_layer_call_and_return_conditional_losses_27889

inputs)
embedding_lookup_27883:	љNd
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         ╣
embedding_lookupResourceGatherembedding_lookup_27883Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/27883*+
_output_shapes
:         d*
dtype0А
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/27883*+
_output_shapes
:         dЂ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█;
┐
__inference_standard_lstm_25140

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_25054*
condR
while_cond_25053*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_6294d7ec-6237-4d9b-97cf-8e0c691af7aa*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
іA
╦
(__inference_gpu_lstm_with_fallback_25674

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀о
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_3c8377a4-4b7b-430e-a7c8-2309353bf771*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
г┬
с
9__inference___backward_gpu_lstm_with_fallback_27245_27421
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_2aa68908-dca6-4a09-83ae-a29e31ca149f*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_27420*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
└;
┐
__inference_standard_lstm_26038

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_25952*
condR
while_cond_25951*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ecf0bb90-299c-473a-838a-11c4cedd1b8d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_28860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_28860___redundant_placeholder03
/while_while_cond_28860___redundant_placeholder13
/while_while_cond_28860___redundant_placeholder23
/while_while_cond_28860___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
іA
╦
(__inference_gpu_lstm_with_fallback_25234

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀о
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_6294d7ec-6237-4d9b-97cf-8e0c691af7aa*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ь)
╬
while_body_25494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
│L
а
&__forward_gpu_lstm_with_fallback_25850

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_3c8377a4-4b7b-430e-a7c8-2309353bf771*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_25675_25851*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
Ы
▓
$__inference_lstm_layer_call_fn_27922

inputs
unknown:	dа
	unknown_0:
╚а
	unknown_1:	а
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26311p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Ы
▓
$__inference_lstm_layer_call_fn_27933

inputs
unknown:	dа
	unknown_0:
╚а
	unknown_1:	а
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╚*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_26804p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
ўL
а
&__forward_gpu_lstm_with_fallback_26308

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_ecf0bb90-299c-473a-838a-11c4cedd1b8d*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_26133_26309*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_28002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_28002___redundant_placeholder03
/while_while_cond_28002___redundant_placeholder13
/while_while_cond_28002___redundant_placeholder23
/while_while_cond_28002___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
└;
┐
__inference_standard_lstm_27592

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_27506*
condR
while_cond_27505*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_882d2986-df67-4196-91e4-4b72924742ae*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_25951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_25951___redundant_placeholder03
/while_while_cond_25951___redundant_placeholder13
/while_while_cond_25951___redundant_placeholder23
/while_while_cond_25951___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
└;
┐
__inference_standard_lstm_27150

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_27064*
condR
while_cond_27063*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_2aa68908-dca6-4a09-83ae-a29e31ca149f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ь)
╬
while_body_27506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
г┬
с
9__inference___backward_gpu_lstm_with_fallback_29042_29218
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕ_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ╚e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:         ╚a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ╚a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ╚O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: ђ
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ф
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ц
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Е
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ╚к
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:         ╚}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:є
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:џ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:         ╚*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ц
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:         d:         ╚:         ╚:└▀ќ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:л
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:         du
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:к
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ╚^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :џ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:аюk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:└Иk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:└Иj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:╚j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:╚k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:╚Э
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ь
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:аюы
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:└Иы
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:└И­
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:╚­
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:╚з
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:╚m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   б
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   d   е
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	╚do
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"╚   ╚   Е
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
╚╚i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:╚i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚ц
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:╚j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:╚Д
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:╚ю
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Х
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:И
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:И
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:И
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	d╚ю
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚ю
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
╚╚у
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:└»
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dаХ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
╚а\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :њ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:а╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::м
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ао
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:         du

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ╚f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dаi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
╚аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:а"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapes­
ь:         ╚:         ╚:         ╚:         ╚: :         ╚:         ╚:         ╚:         ╚::         d:         ╚:         ╚:└▀::         ╚:         ╚: ::::::::: : : : *=
api_implements+)lstm_c38cfc42-b00f-46e4-a749-ad23ec4ae362*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_29217*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :.*
(
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:	

_output_shapes
::1
-
+
_output_shapes
:         d:2.
,
_output_shapes
:         ╚:2.
,
_output_shapes
:         ╚:"

_output_shapes

:└▀: 

_output_shapes
::.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Т@
╦
(__inference_gpu_lstm_with_fallback_29470

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_15ef1fa5-e6f6-4faf-9b33-9c4c7ad23fff*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
└;
┐
__inference_standard_lstm_28947

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         а_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         аT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         аQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╚T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ╚O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ╚V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ╚U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╚W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╚L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ╚Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ╚n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_28861*
condR
while_cond_28860*e
output_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а*
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╚   О
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╚*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ╚^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:         ╚Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ╚Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_c38cfc42-b00f-46e4-a749-ad23ec4ae362*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ўL
а
&__forward_gpu_lstm_with_fallback_29217

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ё

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Л
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Й
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :є
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_c38cfc42-b00f-46e4-a749-ad23ec4ae362*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_29042_29218*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
љ	
╝
while_cond_25053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_25053___redundant_placeholder03
/while_while_cond_25053___redundant_placeholder13
/while_while_cond_25053___redundant_placeholder23
/while_while_cond_25053___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ╚:         ╚: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Т@
╦
(__inference_gpu_lstm_with_fallback_29041

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ╚R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ї
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	d╚:	d╚:	d╚:	d╚*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
╚╚:
╚╚:
╚╚:
╚╚*
	num_splitY

zeros_likeConst*
_output_shapes	
:а*
dtype0*
valueBа*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:└S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ц
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:╚:╚:╚:╚:╚:╚:╚:╚*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	╚dZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	╚d\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:аюa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:└Иa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
╚╚\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:└И\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:╚\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:╚]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:╚O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:└▀═
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:         ╚:         ╚:         ╚:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ╚*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ╚*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :ё
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:         ╚[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ╚d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:         ╚[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ╚]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ╚I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         d:         ╚:         ╚:	dа:
╚а:а*=
api_implements+)lstm_c38cfc42-b00f-46e4-a749-ad23ec4ae362*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ╚
 
_user_specified_nameinit_c:GC

_output_shapes
:	dа
 
_user_specified_namekernel:RN
 
_output_shapes
:
╚а
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:а

_user_specified_namebias
ь)
╬
while_body_29290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0њ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         аЃ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         аW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╚:         ╚:         ╚:         ╚*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ╚m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ╚[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ╚h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ╚g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ╚c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ╚X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ╚l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ╚r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ╚`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ╚"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ╚:         ╚: : :	dа:
╚а:а: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ╚:.*
(
_output_shapes
:         ╚:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dа:&	"
 
_output_shapes
:
╚а:!


_output_shapes	
:а
т
Ј
#__inference_signature_wrapper_26954
embedding_input
unknown:	љNd
	unknown_0:	dа
	unknown_1:
╚а
	unknown_2:	а
	unknown_3:	╚
	unknown_4:
identityѕбStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_24980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameembedding_input"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultц
K
embedding_input8
!serving_default_embedding_input:0         9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:эћ
█
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
J
0
%1
&2
'3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
я
-trace_0
.trace_1
/trace_2
0trace_32з
*__inference_sequential_layer_call_fn_26352
*__inference_sequential_layer_call_fn_26971
*__inference_sequential_layer_call_fn_26988
*__inference_sequential_layer_call_fn_26891└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z-trace_0z.trace_1z/trace_2z0trace_3
╩
1trace_0
2trace_1
3trace_2
4trace_32▀
E__inference_sequential_layer_call_and_return_conditional_losses_27430
E__inference_sequential_layer_call_and_return_conditional_losses_27872
E__inference_sequential_layer_call_and_return_conditional_losses_26910
E__inference_sequential_layer_call_and_return_conditional_losses_26929└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z1trace_0z2trace_1z3trace_2z4trace_3
МBл
 __inference__wrapped_model_24980embedding_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┐
5iter

6beta_1

7beta_2
	8decay
9learning_ratemo#mp$mq%mr&ms'mtvu#vv$vw%vx&vy'vz"
	optimizer
,
:serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ь
@trace_02л
)__inference_embedding_layer_call_fn_27879б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z@trace_0
ѕ
Atrace_02в
D__inference_embedding_layer_call_and_return_conditional_losses_27889б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zAtrace_0
':%	љNd2embedding/embeddings
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
█
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32­
$__inference_lstm_layer_call_fn_27900
$__inference_lstm_layer_call_fn_27911
$__inference_lstm_layer_call_fn_27922
$__inference_lstm_layer_call_fn_27933Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
К
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32▄
?__inference_lstm_layer_call_and_return_conditional_losses_28362
?__inference_lstm_layer_call_and_return_conditional_losses_28791
?__inference_lstm_layer_call_and_return_conditional_losses_29220
?__inference_lstm_layer_call_and_return_conditional_losses_29649Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
"
_generic_user_object
Э
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ж
]trace_02╠
%__inference_dense_layer_call_fn_29658б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0
ё
^trace_02у
@__inference_dense_layer_call_and_return_conditional_losses_29669б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z^trace_0
:	╚2dense/kernel
:2
dense/bias
(:&	dа2lstm/lstm_cell/kernel
3:1
╚а2lstm/lstm_cell/recurrent_kernel
": а2lstm/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
*__inference_sequential_layer_call_fn_26352embedding_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЧBщ
*__inference_sequential_layer_call_fn_26971inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЧBщ
*__inference_sequential_layer_call_fn_26988inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЁBѓ
*__inference_sequential_layer_call_fn_26891embedding_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
E__inference_sequential_layer_call_and_return_conditional_losses_27430inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
E__inference_sequential_layer_call_and_return_conditional_losses_27872inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
аBЮ
E__inference_sequential_layer_call_and_return_conditional_losses_26910embedding_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
аBЮ
E__inference_sequential_layer_call_and_return_conditional_losses_26929embedding_input"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
мB¤
#__inference_signature_wrapper_26954embedding_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ПB┌
)__inference_embedding_layer_call_fn_27879inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_embedding_layer_call_and_return_conditional_losses_27889inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBі
$__inference_lstm_layer_call_fn_27900inputs/0"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЇBі
$__inference_lstm_layer_call_fn_27911inputs/0"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ІBѕ
$__inference_lstm_layer_call_fn_27922inputs"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ІBѕ
$__inference_lstm_layer_call_fn_27933inputs"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
еBЦ
?__inference_lstm_layer_call_and_return_conditional_losses_28362inputs/0"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
еBЦ
?__inference_lstm_layer_call_and_return_conditional_losses_28791inputs/0"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
дBБ
?__inference_lstm_layer_call_and_return_conditional_losses_29220inputs"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
дBБ
?__inference_lstm_layer_call_and_return_conditional_losses_29649inputs"Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
"
_generic_user_object
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
trackable_dict_wrapper
┘Bо
%__inference_dense_layer_call_fn_29658inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
@__inference_dense_layer_call_and_return_conditional_losses_29669inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
^
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs"
_tf_keras_metric
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
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*	љNd2Adam/embedding/embeddings/m
$:"	╚2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	dа2Adam/lstm/lstm_cell/kernel/m
8:6
╚а2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%а2Adam/lstm/lstm_cell/bias/m
,:*	љNd2Adam/embedding/embeddings/v
$:"	╚2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	dа2Adam/lstm/lstm_cell/kernel/v
8:6
╚а2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%а2Adam/lstm/lstm_cell/bias/vЋ
 __inference__wrapped_model_24980q%&'#$8б5
.б+
)і&
embedding_input         
ф "-ф*
(
denseі
dense         А
@__inference_dense_layer_call_and_return_conditional_losses_29669]#$0б-
&б#
!і
inputs         ╚
ф "%б"
і
0         
џ y
%__inference_dense_layer_call_fn_29658P#$0б-
&б#
!і
inputs         ╚
ф "і         Д
D__inference_embedding_layer_call_and_return_conditional_losses_27889_/б,
%б"
 і
inputs         
ф ")б&
і
0         d
џ 
)__inference_embedding_layer_call_fn_27879R/б,
%б"
 і
inputs         
ф "і         d┴
?__inference_lstm_layer_call_and_return_conditional_losses_28362~%&'OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "&б#
і
0         ╚
џ ┴
?__inference_lstm_layer_call_and_return_conditional_losses_28791~%&'OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "&б#
і
0         ╚
џ ▒
?__inference_lstm_layer_call_and_return_conditional_losses_29220n%&'?б<
5б2
$і!
inputs         d

 
p 

 
ф "&б#
і
0         ╚
џ ▒
?__inference_lstm_layer_call_and_return_conditional_losses_29649n%&'?б<
5б2
$і!
inputs         d

 
p

 
ф "&б#
і
0         ╚
џ Ў
$__inference_lstm_layer_call_fn_27900q%&'OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "і         ╚Ў
$__inference_lstm_layer_call_fn_27911q%&'OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "і         ╚Ѕ
$__inference_lstm_layer_call_fn_27922a%&'?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         ╚Ѕ
$__inference_lstm_layer_call_fn_27933a%&'?б<
5б2
$і!
inputs         d

 
p

 
ф "і         ╚║
E__inference_sequential_layer_call_and_return_conditional_losses_26910q%&'#$@б=
6б3
)і&
embedding_input         
p 

 
ф "%б"
і
0         
џ ║
E__inference_sequential_layer_call_and_return_conditional_losses_26929q%&'#$@б=
6б3
)і&
embedding_input         
p

 
ф "%б"
і
0         
џ ▒
E__inference_sequential_layer_call_and_return_conditional_losses_27430h%&'#$7б4
-б*
 і
inputs         
p 

 
ф "%б"
і
0         
џ ▒
E__inference_sequential_layer_call_and_return_conditional_losses_27872h%&'#$7б4
-б*
 і
inputs         
p

 
ф "%б"
і
0         
џ њ
*__inference_sequential_layer_call_fn_26352d%&'#$@б=
6б3
)і&
embedding_input         
p 

 
ф "і         њ
*__inference_sequential_layer_call_fn_26891d%&'#$@б=
6б3
)і&
embedding_input         
p

 
ф "і         Ѕ
*__inference_sequential_layer_call_fn_26971[%&'#$7б4
-б*
 і
inputs         
p 

 
ф "і         Ѕ
*__inference_sequential_layer_call_fn_26988[%&'#$7б4
-б*
 і
inputs         
p

 
ф "і         г
#__inference_signature_wrapper_26954ё%&'#$KбH
б 
Aф>
<
embedding_input)і&
embedding_input         "-ф*
(
denseі
dense         