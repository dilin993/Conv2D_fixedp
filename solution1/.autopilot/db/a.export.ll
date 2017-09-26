; ModuleID = '/home/dilin/vivado_hls/conv2D_fixedp/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@conv2Dfixp_str = internal unnamed_addr constant [11 x i8] c"conv2Dfixp\00"

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv2Dfixp([65536 x i16]* %in_V, [65536 x i16]* %out_V, [9 x i16]* %kernel_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([65536 x i16]* %in_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap([65536 x i16]* %out_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %kernel_V), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv2Dfixp_str) nounwind
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader27
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i9 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ]
  %i_cast = zext i9 %i to i10
  %exitcond1 = icmp eq i9 %i, -256
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i_1 = add i9 %i, 1
  br i1 %exitcond1, label %3, label %.preheader27.preheader

.preheader27.preheader:                           ; preds = %.loopexit
  %tmp = trunc i9 %i to i8
  %tmp_1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp, i8 0)
  br label %.preheader27

.preheader27.loopexit:                            ; preds = %.preheader26
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.loopexit, %.preheader27.preheader
  %j = phi i9 [ 0, %.preheader27.preheader ], [ %j_1, %.preheader27.loopexit ]
  %j_cast8 = zext i9 %j to i16
  %j_cast = zext i9 %j to i10
  %exitcond2 = icmp eq i9 %j, -256
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %j_1 = add i9 %j, 1
  br i1 %exitcond2, label %.loopexit.loopexit, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %.preheader27
  %tmp_4 = add i16 %tmp_1, %j_cast8
  %tmp_5 = zext i16 %tmp_4 to i64
  %out_V_addr = getelementptr [65536 x i16]* %out_V, i64 0, i64 %tmp_5
  br label %.preheader26

.preheader26.loopexit:                            ; preds = %.preheader
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.loopexit, %.preheader26.preheader
  %m = phi i2 [ 0, %.preheader26.preheader ], [ %m_1, %.preheader26.loopexit ]
  %exitcond3 = icmp eq i2 %m, -1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %m_1 = add i2 %m, 1
  br i1 %exitcond3, label %.preheader27.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader26
  %tmp1 = add i2 %m, -1
  %tmp1_cast = sext i2 %tmp1 to i10
  %ii = add i10 %i_cast, %tmp1_cast
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %ii, i32 9)
  %rev = xor i1 %tmp_3, true
  %tmp_7 = call i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10 %ii, i32 8, i32 9)
  %icmp = icmp ne i2 %tmp_7, 1
  %tmp_6 = call i18 @_ssdm_op_BitConcatenate.i18.i10.i8(i10 %ii, i8 0)
  %tmp_8_cast6 = zext i2 %m to i5
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %m, i2 0)
  %p_shl_cast = zext i4 %p_shl to i5
  %tmp_2 = sub i5 %p_shl_cast, %tmp_8_cast6
  %tmp3 = and i1 %icmp, %rev
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %n = phi i2 [ %n_1, %._crit_edge ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i2 %n, -1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %n_1 = add i2 %n, 1
  br i1 %exitcond, label %.preheader26.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp2 = add i2 %n, -1
  %tmp2_cast = sext i2 %tmp2 to i10
  %jj = add i10 %tmp2_cast, %j_cast
  %jj_cast = sext i10 %jj to i16
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %jj, i32 9)
  %rev4 = xor i1 %tmp_9, true
  %tmp_15 = call i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10 %jj, i32 8, i32 9)
  %icmp7 = icmp ne i2 %tmp_15, 1
  %tmp4 = and i1 %icmp7, %rev4
  %or_cond2 = and i1 %tmp4, %tmp3
  br i1 %or_cond2, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_14_cast = zext i16 %jj_cast to i18
  %tmp_8 = add i18 %tmp_14_cast, %tmp_6
  %tmp_s = zext i18 %tmp_8 to i64
  %tmp_17_cast = zext i2 %n to i5
  %tmp_10 = add i5 %tmp_17_cast, %tmp_2
  %tmp_18_cast = sext i5 %tmp_10 to i32
  %tmp_11 = zext i32 %tmp_18_cast to i64
  %in_V_addr = getelementptr [65536 x i16]* %in_V, i64 0, i64 %tmp_s
  %in_V_load = load i16* %in_V_addr, align 2
  %OP1_V = sext i16 %in_V_load to i20
  %kernel_V_addr = getelementptr [9 x i16]* %kernel_V, i64 0, i64 %tmp_11
  %kernel_V_load = load i16* %kernel_V_addr, align 2
  %OP2_V = sext i16 %kernel_V_load to i20
  %p_Val2_1 = mul i20 %OP2_V, %OP1_V
  %p_Val2_s = load i16* %out_V_addr, align 2
  %tmp_12 = call i20 @_ssdm_op_BitConcatenate.i20.i16.i4(i16 %p_Val2_s, i4 0)
  %p_Val2_2 = add i20 %p_Val2_1, %tmp_12
  %tmp_13 = call i16 @_ssdm_op_PartSelect.i16.i20.i32.i32(i20 %p_Val2_2, i32 4, i32 19)
  store i16 %tmp_13, i16* %out_V_addr, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  br label %.preheader

; <label>:3                                       ; preds = %.loopexit
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

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSelect.i2.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_9 = trunc i10 %empty to i2
  ret i2 %empty_9
}

define weak i16 @_ssdm_op_PartSelect.i16.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_10 = trunc i20 %empty to i16
  ret i16 %empty_10
}

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_11 = shl i10 1, %empty
  %empty_12 = and i10 %0, %empty_11
  %empty_13 = icmp ne i10 %empty_12, 0
  ret i1 %empty_13
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_14 = zext i2 %1 to i4
  %empty_15 = shl i4 %empty, 2
  %empty_16 = or i4 %empty_15, %empty_14
  ret i4 %empty_16
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i16.i4(i16, i4) nounwind readnone {
entry:
  %empty = zext i16 %0 to i20
  %empty_17 = zext i4 %1 to i20
  %empty_18 = shl i20 %empty, 4
  %empty_19 = or i20 %empty_18, %empty_17
  ret i20 %empty_19
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i10.i8(i10, i8) nounwind readnone {
entry:
  %empty = zext i10 %0 to i18
  %empty_20 = zext i8 %1 to i18
  %empty_21 = shl i18 %empty, 8
  %empty_22 = or i18 %empty_21, %empty_20
  ret i18 %empty_22
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_23 = zext i8 %1 to i16
  %empty_24 = shl i16 %empty, 8
  %empty_25 = or i16 %empty_24, %empty_23
  ret i16 %empty_25
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
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
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
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 12, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !14, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
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
!38 = metadata !{i32 0, i32 65535, i32 1}
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
