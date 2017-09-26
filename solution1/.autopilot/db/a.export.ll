; ModuleID = '/home/dilin/vivado_hls/conv2D_fixedp/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@conv2Dfixp_str = internal unnamed_addr constant [11 x i8] c"conv2Dfixp\00"

declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv2Dfixp([784 x i16]* %in_V, [784 x i16]* %out_V, [9 x i16]* %kernel_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x i16]* %in_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap([784 x i16]* %out_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %kernel_V), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv2Dfixp_str) nounwind
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ]
  %i_cast = zext i5 %i to i6
  %exitcond1 = icmp eq i5 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28)
  %i_1 = add i5 %i, 1
  br i1 %exitcond1, label %5, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %.loopexit
  %p_shl = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i, i5 0)
  %p_shl_cast = zext i10 %p_shl to i11
  %p_shl9 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i, i2 0)
  %p_shl9_cast = zext i7 %p_shl9 to i11
  %tmp_1 = sub i11 %p_shl_cast, %p_shl9_cast
  br label %.preheader26

.preheader26.loopexit:                            ; preds = %.preheader
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.loopexit, %.preheader26.preheader
  %j = phi i5 [ 0, %.preheader26.preheader ], [ %j_1, %.preheader26.loopexit ]
  %j_cast = zext i5 %j to i6
  %exitcond2 = icmp eq i5 %j, -4
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28)
  %j_1 = add i5 %j, 1
  br i1 %exitcond2, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader26
  %tmp_3_cast = zext i5 %j to i11
  %tmp_4 = add i11 %tmp_1, %tmp_3_cast
  %tmp_4_cast = sext i11 %tmp_4 to i32
  %tmp_5 = zext i32 %tmp_4_cast to i64
  %out_V_addr = getelementptr [784 x i16]* %out_V, i64 0, i64 %tmp_5
  br label %.preheader

.preheader.loopexit:                              ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader.preheader
  %m = phi i2 [ 0, %.preheader.preheader ], [ %m_1, %.preheader.loopexit ]
  %exitcond3 = icmp eq i2 %m, -1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %m_1 = add i2 %m, 1
  br i1 %exitcond3, label %.preheader26.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %mm = sub i2 -2, %m
  %tmp1 = add i2 %m, -1
  %tmp1_cast = sext i2 %tmp1 to i6
  %ii = add i6 %i_cast, %tmp1_cast
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %ii, i32 5)
  %rev = xor i1 %tmp, true
  %tmp_2 = icmp slt i6 %ii, 28
  %tmp_6_cast = sext i6 %ii to i8
  %p_shl1 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %ii, i2 0)
  %tmp_7 = sub i8 %p_shl1, %tmp_6_cast
  %tmp_7_cast = sext i8 %tmp_7 to i9
  %tmp_9_cast5 = zext i2 %mm to i5
  %p_shl2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %mm, i2 0)
  %p_shl2_cast = zext i4 %p_shl2 to i5
  %tmp_3 = sub i5 %p_shl2_cast, %tmp_9_cast5
  %tmp3 = and i1 %tmp_2, %rev
  br label %2

; <label>:2                                       ; preds = %._crit_edge, %1
  %n = phi i2 [ 0, %1 ], [ %n_1, %._crit_edge ]
  %exitcond = icmp eq i2 %n, -1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %n_1 = add i2 %n, 1
  br i1 %exitcond, label %.preheader.loopexit, label %3

; <label>:3                                       ; preds = %2
  %nn = sub i2 -2, %n
  %tmp2 = add i2 %n, -1
  %tmp2_cast = sext i2 %tmp2 to i6
  %jj = add i6 %tmp2_cast, %j_cast
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %jj, i32 5)
  %rev4 = xor i1 %tmp_6, true
  %tmp_8 = icmp slt i6 %jj, 28
  %tmp4 = and i1 %tmp_8, %rev4
  %or_cond2 = and i1 %tmp4, %tmp3
  br i1 %or_cond2, label %4, label %._crit_edge

; <label>:4                                       ; preds = %3
  %tmp_14_cast = zext i6 %jj to i9
  %tmp_9 = add i9 %tmp_7_cast, %tmp_14_cast
  %tmp_15_cast = sext i9 %tmp_9 to i32
  %tmp_s = zext i32 %tmp_15_cast to i64
  %tmp_17_cast = zext i2 %nn to i5
  %tmp_10 = add i5 %tmp_3, %tmp_17_cast
  %tmp_18_cast = sext i5 %tmp_10 to i32
  %tmp_11 = zext i32 %tmp_18_cast to i64
  %in_V_addr = getelementptr [784 x i16]* %in_V, i64 0, i64 %tmp_s
  %in_V_load = load i16* %in_V_addr, align 2
  %OP1_V = sext i16 %in_V_load to i28
  %kernel_V_addr = getelementptr [9 x i16]* %kernel_V, i64 0, i64 %tmp_11
  %kernel_V_load = load i16* %kernel_V_addr, align 2
  %OP2_V = sext i16 %kernel_V_load to i28
  %p_Val2_1 = mul i28 %OP1_V, %OP2_V
  %p_Val2_s = load i16* %out_V_addr, align 2
  %tmp_12 = call i28 @_ssdm_op_BitConcatenate.i28.i16.i12(i16 %p_Val2_s, i12 0)
  %p_Val2_2 = add i28 %tmp_12, %p_Val2_1
  %tmp_13 = call i16 @_ssdm_op_PartSelect.i16.i28.i32.i32(i28 %p_Val2_2, i32 12, i32 27)
  store i16 %tmp_13, i16* %out_V_addr, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  br label %2

; <label>:5                                       ; preds = %.loopexit
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i16 @_ssdm_op_PartSelect.i16.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_7 = trunc i28 %empty to i16
  ret i16 %empty_7
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_8 = shl i6 1, %empty
  %empty_9 = and i6 %0, %empty_8
  %empty_10 = icmp ne i6 %empty_9, 0
  ret i1 %empty_10
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_11 = zext i2 %1 to i8
  %empty_12 = shl i8 %empty, 2
  %empty_13 = or i8 %empty_12, %empty_11
  ret i8 %empty_13
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_14 = zext i2 %1 to i7
  %empty_15 = shl i7 %empty, 2
  %empty_16 = or i7 %empty_15, %empty_14
  ret i7 %empty_16
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_17 = zext i2 %1 to i4
  %empty_18 = shl i4 %empty, 2
  %empty_19 = or i4 %empty_18, %empty_17
  ret i4 %empty_19
}

define weak i28 @_ssdm_op_BitConcatenate.i28.i16.i12(i16, i12) nounwind readnone {
entry:
  %empty = zext i16 %0 to i28
  %empty_20 = zext i12 %1 to i28
  %empty_21 = shl i28 %empty, 12
  %empty_22 = or i28 %empty_21, %empty_20
  ret i28 %empty_22
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_23 = zext i5 %1 to i10
  %empty_24 = shl i10 %empty, 5
  %empty_25 = or i10 %empty_24, %empty_23
  ret i10 %empty_25
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !15, !21, !21, !15, !15, !23, !23, !15, !21, !25, !15, !15, !15, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!26}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"data_t*", metadata !"data_t*", metadata !"data_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"kernel"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !14, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !14, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !12, metadata !6}
!26 = metadata !{metadata !27, [1 x i32]* @llvm_global_ctors_0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"llvm.global_ctors.0", metadata !31, metadata !"", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 15, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"in.V", metadata !37, metadata !"int16", i32 0, i32 15}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 783, i32 1}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 15, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"out.V", metadata !37, metadata !"int16", i32 0, i32 15}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 15, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"kernel.V", metadata !47, metadata !"int16", i32 0, i32 15}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 8, i32 1}
