; ModuleID = '/home/dilin/vivado_hls/conv2D_fixedp/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@conv2Dfixp_str = internal unnamed_addr constant [11 x i8] c"conv2Dfixp\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=1]
declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv2Dfixp([784 x i16]* %in_V, [784 x i16]* %out_V, [9 x i16]* %kernel_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x i16]* %in_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap([784 x i16]* %out_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %kernel_V), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv2Dfixp_str) nounwind
  call void @llvm.dbg.value(metadata !{[784 x i16]* %in_V}, i64 0, metadata !49), !dbg !1597 ; [debug line = 9:24] [debug variable = in.V]
  call void @llvm.dbg.value(metadata !{[784 x i16]* %out_V}, i64 0, metadata !1598), !dbg !1600 ; [debug line = 9:41] [debug variable = out.V]
  call void @llvm.dbg.value(metadata !{[9 x i16]* %kernel_V}, i64 0, metadata !1601), !dbg !1606 ; [debug line = 9:59] [debug variable = kernel.V]
  br label %.loopexit, !dbg !1607                 ; [debug line = 14:15]

.loopexit.loopexit:                               ; preds = %.preheader26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ] ; [#uses=5 type=i5]
  %i_cast = zext i5 %i to i6, !dbg !1607          ; [#uses=1 type=i6] [debug line = 14:15]
  %exitcond1 = icmp eq i5 %i, -4, !dbg !1607      ; [#uses=1 type=i1] [debug line = 14:15]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) ; [#uses=0 type=i32]
  %i_1 = add i5 %i, 1, !dbg !1610                 ; [#uses=1 type=i5] [debug line = 14:25]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !1611), !dbg !1610 ; [debug line = 14:25] [debug variable = i]
  br i1 %exitcond1, label %5, label %.preheader26.preheader, !dbg !1607 ; [debug line = 14:15]

.preheader26.preheader:                           ; preds = %.loopexit
  %p_shl = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i, i5 0), !dbg !1612 ; [#uses=1 type=i10] [debug line = 32:22]
  %p_shl_cast = zext i10 %p_shl to i11, !dbg !1612 ; [#uses=1 type=i11] [debug line = 32:22]
  %p_shl9 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i, i2 0), !dbg !1612 ; [#uses=1 type=i7] [debug line = 32:22]
  %p_shl9_cast = zext i7 %p_shl9 to i11, !dbg !1612 ; [#uses=1 type=i11] [debug line = 32:22]
  %tmp_1 = sub i11 %p_shl_cast, %p_shl9_cast, !dbg !1612 ; [#uses=1 type=i11] [debug line = 32:22]
  br label %.preheader26, !dbg !1620              ; [debug line = 16:19]

.preheader26.loopexit:                            ; preds = %.preheader
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.loopexit, %.preheader26.preheader
  %j = phi i5 [ 0, %.preheader26.preheader ], [ %j_1, %.preheader26.loopexit ] ; [#uses=4 type=i5]
  %j_cast = zext i5 %j to i6, !dbg !1620          ; [#uses=1 type=i6] [debug line = 16:19]
  %exitcond2 = icmp eq i5 %j, -4, !dbg !1620      ; [#uses=1 type=i1] [debug line = 16:19]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) ; [#uses=0 type=i32]
  %j_1 = add i5 %j, 1, !dbg !1621                 ; [#uses=1 type=i5] [debug line = 16:29]
  call void @llvm.dbg.value(metadata !{i5 %j_1}, i64 0, metadata !1622), !dbg !1621 ; [debug line = 16:29] [debug variable = j]
  br i1 %exitcond2, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !1620 ; [debug line = 16:19]

.preheader.preheader:                             ; preds = %.preheader26
  %tmp_3_cast = zext i5 %j to i11, !dbg !1612     ; [#uses=1 type=i11] [debug line = 32:22]
  %tmp_4 = add i11 %tmp_1, %tmp_3_cast, !dbg !1612 ; [#uses=1 type=i11] [debug line = 32:22]
  %tmp_4_cast = sext i11 %tmp_4 to i32, !dbg !1612 ; [#uses=1 type=i32] [debug line = 32:22]
  %tmp_5 = zext i32 %tmp_4_cast to i64, !dbg !1612 ; [#uses=1 type=i64] [debug line = 32:22]
  %out_V_addr = getelementptr [784 x i16]* %out_V, i64 0, i64 %tmp_5, !dbg !1623 ; [#uses=2 type=i16*] [debug line = 1025:9@1424:243@32:38]
  br label %.preheader, !dbg !1630                ; [debug line = 18:23]

.preheader.loopexit:                              ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader.preheader
  %m = phi i2 [ 0, %.preheader.preheader ], [ %m_1, %.preheader.loopexit ] ; [#uses=4 type=i2]
  %exitcond3 = icmp eq i2 %m, -1, !dbg !1630      ; [#uses=1 type=i1] [debug line = 18:23]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %m_1 = add i2 %m, 1, !dbg !1631                 ; [#uses=1 type=i2] [debug line = 18:32]
  call void @llvm.dbg.value(metadata !{i2 %m_1}, i64 0, metadata !1632), !dbg !1631 ; [debug line = 18:32] [debug variable = m]
  br i1 %exitcond3, label %.preheader26.loopexit, label %1, !dbg !1630 ; [debug line = 18:23]

; <label>:1                                       ; preds = %.preheader
  %mm = sub i2 -2, %m, !dbg !1633                 ; [#uses=2 type=i2] [debug line = 20:34]
  call void @llvm.dbg.value(metadata !{i2 %mm}, i64 0, metadata !1634), !dbg !1633 ; [debug line = 20:34] [debug variable = mm]
  %tmp1 = add i2 %m, -1, !dbg !1635               ; [#uses=1 type=i2] [debug line = 27:47]
  %tmp1_cast = sext i2 %tmp1 to i6, !dbg !1635    ; [#uses=1 type=i6] [debug line = 27:47]
  %ii = add i6 %i_cast, %tmp1_cast, !dbg !1635    ; [#uses=4 type=i6] [debug line = 27:47]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %ii, i32 5), !dbg !1636 ; [#uses=1 type=i1] [debug line = 31:18]
  %rev = xor i1 %tmp, true, !dbg !1636            ; [#uses=1 type=i1] [debug line = 31:18]
  %tmp_2 = icmp slt i6 %ii, 28, !dbg !1636        ; [#uses=1 type=i1] [debug line = 31:18]
  %tmp_6_cast = sext i6 %ii to i8, !dbg !1629     ; [#uses=1 type=i8] [debug line = 32:38]
  %p_shl1 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %ii, i2 0), !dbg !1629 ; [#uses=1 type=i8] [debug line = 32:38]
  %tmp_7 = sub i8 %p_shl1, %tmp_6_cast, !dbg !1629 ; [#uses=1 type=i8] [debug line = 32:38]
  %tmp_7_cast = sext i8 %tmp_7 to i9, !dbg !1629  ; [#uses=1 type=i9] [debug line = 32:38]
  %tmp_9_cast5 = zext i2 %mm to i5, !dbg !1629    ; [#uses=1 type=i5] [debug line = 32:38]
  %p_shl2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %mm, i2 0), !dbg !1629 ; [#uses=1 type=i4] [debug line = 32:38]
  %p_shl2_cast = zext i4 %p_shl2 to i5, !dbg !1629 ; [#uses=1 type=i5] [debug line = 32:38]
  %tmp_3 = sub i5 %p_shl2_cast, %tmp_9_cast5, !dbg !1629 ; [#uses=1 type=i5] [debug line = 32:38]
  %tmp3 = and i1 %tmp_2, %rev, !dbg !1636         ; [#uses=1 type=i1] [debug line = 31:18]
  br label %2, !dbg !1637                         ; [debug line = 22:27]

; <label>:2                                       ; preds = %._crit_edge, %1
  %n = phi i2 [ 0, %1 ], [ %n_1, %._crit_edge ]   ; [#uses=4 type=i2]
  %exitcond = icmp eq i2 %n, -1, !dbg !1637       ; [#uses=1 type=i1] [debug line = 22:27]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %n_1 = add i2 %n, 1, !dbg !1638                 ; [#uses=1 type=i2] [debug line = 22:36]
  br i1 %exitcond, label %.preheader.loopexit, label %3, !dbg !1637 ; [debug line = 22:27]

; <label>:3                                       ; preds = %2
  %nn = sub i2 -2, %n, !dbg !1639                 ; [#uses=1 type=i2] [debug line = 24:38]
  call void @llvm.dbg.value(metadata !{i2 %nn}, i64 0, metadata !1640), !dbg !1639 ; [debug line = 24:38] [debug variable = nn]
  call void @llvm.dbg.value(metadata !{i6 %ii}, i64 0, metadata !1641), !dbg !1635 ; [debug line = 27:47] [debug variable = ii]
  %tmp2 = add i2 %n, -1, !dbg !1642               ; [#uses=1 type=i2] [debug line = 28:47]
  %tmp2_cast = sext i2 %tmp2 to i6, !dbg !1642    ; [#uses=1 type=i6] [debug line = 28:47]
  %jj = add i6 %tmp2_cast, %j_cast, !dbg !1642    ; [#uses=3 type=i6] [debug line = 28:47]
  call void @llvm.dbg.value(metadata !{i6 %jj}, i64 0, metadata !1643), !dbg !1642 ; [debug line = 28:47] [debug variable = jj]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %jj, i32 5), !dbg !1636 ; [#uses=1 type=i1] [debug line = 31:18]
  %rev4 = xor i1 %tmp_6, true, !dbg !1636         ; [#uses=1 type=i1] [debug line = 31:18]
  %tmp_8 = icmp slt i6 %jj, 28, !dbg !1636        ; [#uses=1 type=i1] [debug line = 31:18]
  %tmp4 = and i1 %tmp_8, %rev4, !dbg !1636        ; [#uses=1 type=i1] [debug line = 31:18]
  %or_cond2 = and i1 %tmp4, %tmp3, !dbg !1636     ; [#uses=1 type=i1] [debug line = 31:18]
  br i1 %or_cond2, label %4, label %._crit_edge, !dbg !1636 ; [debug line = 31:18]

; <label>:4                                       ; preds = %3
  %tmp_14_cast = zext i6 %jj to i9, !dbg !1629    ; [#uses=1 type=i9] [debug line = 32:38]
  %tmp_9 = add i9 %tmp_7_cast, %tmp_14_cast, !dbg !1629 ; [#uses=1 type=i9] [debug line = 32:38]
  %tmp_15_cast = sext i9 %tmp_9 to i32, !dbg !1629 ; [#uses=1 type=i32] [debug line = 32:38]
  %tmp_s = zext i32 %tmp_15_cast to i64, !dbg !1629 ; [#uses=1 type=i64] [debug line = 32:38]
  %tmp_17_cast = zext i2 %nn to i5, !dbg !1629    ; [#uses=1 type=i5] [debug line = 32:38]
  %tmp_10 = add i5 %tmp_3, %tmp_17_cast, !dbg !1629 ; [#uses=1 type=i5] [debug line = 32:38]
  %tmp_18_cast = sext i5 %tmp_10 to i32, !dbg !1629 ; [#uses=1 type=i32] [debug line = 32:38]
  %tmp_11 = zext i32 %tmp_18_cast to i64, !dbg !1629 ; [#uses=1 type=i64] [debug line = 32:38]
  %in_V_addr = getelementptr [784 x i16]* %in_V, i64 0, i64 %tmp_s, !dbg !1644 ; [#uses=1 type=i16*] [debug line = 1370:9@32:38]
  %in_V_load = load i16* %in_V_addr, align 2, !dbg !1644 ; [#uses=1 type=i16] [debug line = 1370:9@32:38]
  %OP1_V = sext i16 %in_V_load to i28, !dbg !1647 ; [#uses=1 type=i28] [debug line = 1406:0@1424:243@32:38]
  %kernel_V_addr = getelementptr [9 x i16]* %kernel_V, i64 0, i64 %tmp_11, !dbg !1655 ; [#uses=1 type=i16*] [debug line = 1372:9@32:38]
  %kernel_V_load = load i16* %kernel_V_addr, align 2, !dbg !1655 ; [#uses=1 type=i16] [debug line = 1372:9@32:38]
  %OP2_V = sext i16 %kernel_V_load to i28, !dbg !1647 ; [#uses=1 type=i28] [debug line = 1406:0@1424:243@32:38]
  %p_Val2_1 = mul i28 %OP1_V, %OP2_V, !dbg !1647  ; [#uses=1 type=i28] [debug line = 1406:0@1424:243@32:38]
  %p_Val2_s = load i16* %out_V_addr, align 2, !dbg !1656 ; [#uses=1 type=i16] [debug line = 675:0@773:5@1406:0@1424:243@32:38]
  call void @llvm.dbg.value(metadata !{i16 %p_Val2_s}, i64 0, metadata !1662) nounwind, !dbg !1656 ; [debug line = 675:0@773:5@1406:0@1424:243@32:38] [debug variable = __Val2__]
  %tmp_12 = call i28 @_ssdm_op_BitConcatenate.i28.i16.i12(i16 %p_Val2_s, i12 0), !dbg !1663 ; [#uses=1 type=i28] [debug line = 703:17@773:5@1406:0@1424:243@32:38]
  %p_Val2_2 = add i28 %tmp_12, %p_Val2_1, !dbg !1647 ; [#uses=1 type=i28] [debug line = 1406:0@1424:243@32:38]
  call void @llvm.dbg.value(metadata !{i28 %p_Val2_2}, i64 0, metadata !1665) nounwind, !dbg !1673 ; [debug line = 675:0@773:5@1424:243@32:38] [debug variable = __Val2__]
  %tmp_13 = call i16 @_ssdm_op_PartSelect.i16.i28.i32.i32(i28 %p_Val2_2, i32 12, i32 27), !dbg !1674 ; [#uses=1 type=i16] [debug line = 682:17@773:5@1424:243@32:38]
  store i16 %tmp_13, i16* %out_V_addr, align 2, !dbg !1623 ; [debug line = 1025:9@1424:243@32:38]
  br label %._crit_edge, !dbg !1629               ; [debug line = 32:38]

._crit_edge:                                      ; preds = %4, %3
  call void @llvm.dbg.value(metadata !{i2 %n_1}, i64 0, metadata !1676), !dbg !1638 ; [debug line = 22:36] [debug variable = n]
  br label %2, !dbg !1638                         ; [debug line = 22:36]

; <label>:5                                       ; preds = %.loopexit
  ret void, !dbg !1677                            ; [debug line = 37:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2) ; [#uses=1 type=i28]
  %empty_7 = trunc i28 %empty to i16              ; [#uses=1 type=i16]
  ret i16 %empty_7
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_8 = shl i6 1, %empty                     ; [#uses=1 type=i6]
  %empty_9 = and i6 %0, %empty_8                  ; [#uses=1 type=i6]
  %empty_10 = icmp ne i6 %empty_9, 0              ; [#uses=1 type=i1]
  ret i1 %empty_10
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8                       ; [#uses=1 type=i8]
  %empty_11 = zext i2 %1 to i8                    ; [#uses=1 type=i8]
  %empty_12 = shl i8 %empty, 2                    ; [#uses=1 type=i8]
  %empty_13 = or i8 %empty_12, %empty_11          ; [#uses=1 type=i8]
  ret i8 %empty_13
}

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7                       ; [#uses=1 type=i7]
  %empty_14 = zext i2 %1 to i7                    ; [#uses=1 type=i7]
  %empty_15 = shl i7 %empty, 2                    ; [#uses=1 type=i7]
  %empty_16 = or i7 %empty_15, %empty_14          ; [#uses=1 type=i7]
  ret i7 %empty_16
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_17 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_18 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_19 = or i4 %empty_18, %empty_17          ; [#uses=1 type=i4]
  ret i4 %empty_19
}

; [#uses=1]
define weak i28 @_ssdm_op_BitConcatenate.i28.i16.i12(i16, i12) nounwind readnone {
entry:
  %empty = zext i16 %0 to i28                     ; [#uses=1 type=i28]
  %empty_20 = zext i12 %1 to i28                  ; [#uses=1 type=i28]
  %empty_21 = shl i28 %empty, 12                  ; [#uses=1 type=i28]
  %empty_22 = or i28 %empty_21, %empty_20         ; [#uses=1 type=i28]
  ret i28 %empty_22
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10                      ; [#uses=1 type=i10]
  %empty_23 = zext i5 %1 to i10                   ; [#uses=1 type=i10]
  %empty_24 = shl i10 %empty, 5                   ; [#uses=1 type=i10]
  %empty_25 = or i10 %empty_24, %empty_23         ; [#uses=1 type=i10]
  ret i10 %empty_25
}

; [#uses=1]
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
!49 = metadata !{i32 790531, metadata !50, metadata !"in.V", null, i32 9, metadata !1588, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 786689, metadata !51, metadata !"in", metadata !52, i32 16777225, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786478, i32 0, metadata !52, metadata !"conv2Dfixp", metadata !"conv2Dfixp", metadata !"_Z10conv2DfixpP8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_", metadata !52, i32 9, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !74, i32 10} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786473, metadata !"conv2D_fixedp/conv.cpp", metadata !"/home/dilin/vivado_hls", null} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55, metadata !55, metadata !55}
!55 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786454, null, metadata !"data_t", metadata !52, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ]
!57 = metadata !{i32 786434, null, metadata !"ap_fixed<16, 4, 5, 3, 0>", metadata !58, i32 290, i64 16, i64 16, i32 0, i32 0, null, metadata !59, i32 0, null, metadata !1587} ; [ DW_TAG_class_type ]
!58 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int.h", metadata !"/home/dilin/vivado_hls", null} ; [ DW_TAG_file_type ]
!59 = metadata !{metadata !60, metadata !1516, metadata !1520, metadata !1523, metadata !1526, metadata !1529, metadata !1532, metadata !1535, metadata !1538, metadata !1541, metadata !1544, metadata !1547, metadata !1550, metadata !1553, metadata !1556, metadata !1559, metadata !1562, metadata !1565, metadata !1568, metadata !1574, metadata !1580, metadata !1584}
!60 = metadata !{i32 786460, metadata !57, null, metadata !58, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_inheritance ]
!61 = metadata !{i32 786434, null, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !62, i32 512, i64 16, i64 16, i32 0, i32 0, null, metadata !63, i32 0, null, metadata !1513} ; [ DW_TAG_class_type ]
!62 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_fixed_syn.h", metadata !"/home/dilin/vivado_hls", null} ; [ DW_TAG_file_type ]
!63 = metadata !{metadata !64, metadata !81, metadata !85, metadata !88, metadata !91, metadata !94, metadata !98, metadata !102, metadata !106, metadata !110, metadata !114, metadata !117, metadata !121, metadata !125, metadata !129, metadata !134, metadata !139, metadata !144, metadata !147, metadata !153, metadata !157, metadata !162, metadata !165, metadata !168, metadata !171, metadata !174, metadata !177, metadata !180, metadata !185, metadata !191, metadata !195, metadata !198, metadata !201, metadata !204, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !231, metadata !232, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !248, metadata !249, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !263, metadata !266, metadata !1417, metadata !1420, metadata !1423, metadata !1424, metadata !1427, metadata !1428, metadata !1431, metadata !1435, metadata !1436, metadata !1439, metadata !1442, metadata !1445, metadata !1448, metadata !1449, metadata !1450, metadata !1453, metadata !1456, metadata !1457, metadata !1458, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1470, metadata !1473, metadata !1474, metadata !1475, metadata !1478, metadata !1481, metadata !1485, metadata !1486, metadata !1489, metadata !1490, metadata !1493, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1503, metadata !1506, metadata !1507, metadata !1510}
!64 = metadata !{i32 786460, metadata !61, null, metadata !62, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_inheritance ]
!65 = metadata !{i32 786434, null, metadata !"ssdm_int<16 + 1024 * 0, true>", metadata !66, i32 18, i64 16, i64 16, i32 0, i32 0, null, metadata !67, i32 0, null, metadata !76} ; [ DW_TAG_class_type ]
!66 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/dilin/vivado_hls", null} ; [ DW_TAG_file_type ]
!67 = metadata !{metadata !68, metadata !70}
!68 = metadata !{i32 786445, metadata !65, metadata !"V", metadata !66, i32 18, i64 16, i64 16, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 786468, null, metadata !"int16", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !65, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 18, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 18} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !73}
!73 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !65} ; [ DW_TAG_pointer_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!76 = metadata !{metadata !77, metadata !79}
!77 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 16, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!78 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !80, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!80 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 786478, i32 0, metadata !61, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !62, i32 522, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 522} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !84, metadata !80, metadata !80, metadata !80, metadata !80}
!84 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !61} ; [ DW_TAG_pointer_type ]
!85 = metadata !{i32 786478, i32 0, metadata !61, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !62, i32 595, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 595} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !80, metadata !84, metadata !80, metadata !80, metadata !80}
!88 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 653, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 653} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !84}
!91 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 789, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 789} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !84, metadata !80}
!94 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 790, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 790} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !84, metadata !97}
!97 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 791, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 791} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !84, metadata !101}
!101 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!102 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 792, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 792} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !84, metadata !105}
!105 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 793, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 793} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !84, metadata !109}
!109 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 794, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 794} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !84, metadata !113}
!113 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!114 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 795, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 795} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !84, metadata !78}
!117 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 796, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 796} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !84, metadata !120}
!120 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 798, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 798} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !84, metadata !124}
!124 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!125 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 799, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 799} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{null, metadata !84, metadata !128}
!128 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!129 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 804, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 804} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !84, metadata !132}
!132 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !62, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ]
!133 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!134 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 805, metadata !135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 805} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{null, metadata !84, metadata !137}
!137 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !62, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ]
!138 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!139 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 806, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 806} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !84, metadata !142}
!142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ]
!143 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ]
!144 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 813, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 813} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{null, metadata !84, metadata !142, metadata !101}
!147 = metadata !{i32 786478, i32 0, metadata !61, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !62, i32 849, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 849} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !138, metadata !150, metadata !152}
!150 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !151} ; [ DW_TAG_pointer_type ]
!151 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_const_type ]
!152 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 786478, i32 0, metadata !61, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !62, i32 857, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 857} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !120, metadata !150, metadata !156}
!156 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!157 = metadata !{i32 786478, i32 0, metadata !61, metadata !"halfToRawBits", metadata !"halfToRawBits", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13halfToRawBitsEDh", metadata !62, i32 865, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 865} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !113, metadata !150, metadata !160}
!160 = metadata !{i32 786454, null, metadata !"half", metadata !62, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ]
!161 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!162 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !62, i32 874, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 874} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !152, metadata !150, metadata !138}
!165 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !62, i32 883, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 883} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{metadata !156, metadata !150, metadata !120}
!168 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rawBitsToHalf", metadata !"rawBitsToHalf", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13rawBitsToHalfEt", metadata !62, i32 892, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 892} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{metadata !160, metadata !150, metadata !113}
!171 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 901, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 901} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !84, metadata !152}
!174 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1014, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1014} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{null, metadata !84, metadata !156}
!177 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1018, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1018} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{null, metadata !84, metadata !160}
!180 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1022, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1022} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !183, metadata !84, metadata !184}
!183 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_reference_type ]
!184 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_reference_type ]
!185 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1029, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1029} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !183, metadata !84, metadata !188}
!188 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_reference_type ]
!189 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_const_type ]
!190 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_volatile_type ]
!191 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1036, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1036} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{null, metadata !194, metadata !184}
!194 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !190} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1042, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1042} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{null, metadata !194, metadata !188}
!198 = metadata !{i32 786478, i32 0, metadata !61, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !62, i32 1051, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1051} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !183, metadata !84, metadata !138}
!201 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !62, i32 1057, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1057} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !61, metadata !138}
!204 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !62, i32 1066, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1066} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !207, metadata !150, metadata !80}
!207 = metadata !{i32 786434, null, metadata !"ap_int_base<4, true, true>", metadata !208, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!208 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/ap_int_syn.h", metadata !"/home/dilin/vivado_hls", null} ; [ DW_TAG_file_type ]
!209 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !62, i32 1101, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1101} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !78, metadata !150}
!212 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !62, i32 1104, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1104} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !120, metadata !150}
!215 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !62, i32 1107, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1107} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !132, metadata !150}
!218 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !62, i32 1110, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1110} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !137, metadata !150}
!221 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !62, i32 1113, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1113} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !152, metadata !150}
!224 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !62, i32 1166, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1166} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !156, metadata !150}
!227 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_half", metadata !"to_half", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", metadata !62, i32 1215, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1215} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !160, metadata !150}
!230 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !62, i32 1265, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1265} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !62, i32 1269, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1269} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator half", metadata !"operator half", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", metadata !62, i32 1272, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1272} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !62, i32 1275, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1275} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !97, metadata !150}
!236 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !62, i32 1279, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1279} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !101, metadata !150}
!239 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !62, i32 1283, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1283} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !105, metadata !150}
!242 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !62, i32 1287, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1287} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !109, metadata !150}
!245 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !62, i32 1291, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1291} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !113, metadata !150}
!248 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !62, i32 1296, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1296} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !62, i32 1300, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1300} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !62, i32 1305, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1305} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !124, metadata !150}
!253 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !62, i32 1309, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1309} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !128, metadata !150}
!256 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !62, i32 1322, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1322} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !138, metadata !150}
!259 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !62, i32 1326, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1326} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{metadata !133, metadata !150}
!262 = metadata !{i32 786478, i32 0, metadata !61, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !62, i32 1330, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1330} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786478, i32 0, metadata !61, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !62, i32 1334, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1334} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !78, metadata !84}
!266 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator*<16, 4, true, 5, 3, 0>", metadata !"operator*<16, 4, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmlILi16ELi4ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4multERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 1367, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, i32 0, metadata !74, i32 1367} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{metadata !269, metadata !150, metadata !184}
!269 = metadata !{i32 786454, metadata !270, metadata !"mult", metadata !62, i32 643, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ]
!270 = metadata !{i32 786434, metadata !61, metadata !"RType<16, 4, true>", metadata !62, i32 618, i64 8, i64 8, i32 0, i32 0, null, metadata !271, i32 0, null, metadata !272} ; [ DW_TAG_class_type ]
!271 = metadata !{i32 0}
!272 = metadata !{metadata !273, metadata !274, metadata !275}
!273 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !78, i64 16, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!274 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !78, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!275 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !80, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!276 = metadata !{i32 786434, null, metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !62, i32 512, i64 32, i64 32, i32 0, i32 0, null, metadata !277, i32 0, null, metadata !1414} ; [ DW_TAG_class_type ]
!277 = metadata !{metadata !278, metadata !289, metadata !293, metadata !296, metadata !299, metadata !326, metadata !332, metadata !335, metadata !338, metadata !341, metadata !344, metadata !347, metadata !350, metadata !353, metadata !356, metadata !359, metadata !362, metadata !365, metadata !368, metadata !371, metadata !374, metadata !378, metadata !381, metadata !384, metadata !387, metadata !390, metadata !393, metadata !396, metadata !399, metadata !402, metadata !406, metadata !409, metadata !413, metadata !416, metadata !419, metadata !422, metadata !958, metadata !961, metadata !964, metadata !967, metadata !970, metadata !973, metadata !976, metadata !979, metadata !980, metadata !981, metadata !982, metadata !985, metadata !988, metadata !991, metadata !994, metadata !997, metadata !998, metadata !999, metadata !1002, metadata !1005, metadata !1008, metadata !1011, metadata !1012, metadata !1015, metadata !1018, metadata !1019, metadata !1022, metadata !1023, metadata !1026, metadata !1335, metadata !1336, metadata !1339, metadata !1342, metadata !1345, metadata !1348, metadata !1349, metadata !1350, metadata !1353, metadata !1356, metadata !1357, metadata !1358, metadata !1361, metadata !1362, metadata !1363, metadata !1364, metadata !1365, metadata !1366, metadata !1370, metadata !1373, metadata !1374, metadata !1375, metadata !1378, metadata !1381, metadata !1385, metadata !1386, metadata !1389, metadata !1390, metadata !1393, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1403, metadata !1406, metadata !1407, metadata !1410, metadata !1413}
!278 = metadata !{i32 786460, metadata !276, null, metadata !62, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !279} ; [ DW_TAG_inheritance ]
!279 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, true>", metadata !66, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !280, i32 0, null, metadata !287} ; [ DW_TAG_class_type ]
!280 = metadata !{metadata !281, metadata !283}
!281 = metadata !{i32 786445, metadata !279, metadata !"V", metadata !66, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !282} ; [ DW_TAG_member ]
!282 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!283 = metadata !{i32 786478, i32 0, metadata !279, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 34, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 34} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!285 = metadata !{null, metadata !286}
!286 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !279} ; [ DW_TAG_pointer_type ]
!287 = metadata !{metadata !288, metadata !79}
!288 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!289 = metadata !{i32 786478, i32 0, metadata !276, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !62, i32 522, metadata !290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 522} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!291 = metadata !{null, metadata !292, metadata !80, metadata !80, metadata !80, metadata !80}
!292 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !276} ; [ DW_TAG_pointer_type ]
!293 = metadata !{i32 786478, i32 0, metadata !276, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !62, i32 595, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 595} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !80, metadata !292, metadata !80, metadata !80, metadata !80}
!296 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 653, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 653} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !292}
!299 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"", metadata !62, i32 663, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, i32 0, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{null, metadata !292, metadata !302}
!302 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_reference_type ]
!303 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_const_type ]
!304 = metadata !{metadata !305, metadata !306, metadata !275, metadata !307, metadata !317, metadata !325}
!305 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !78, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!306 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !78, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!307 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !308, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!308 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !208, i32 657, i64 3, i64 4, i32 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!309 = metadata !{metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316}
!310 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!311 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!312 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!313 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!314 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!315 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!316 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!317 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !318, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!318 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !208, i32 667, i64 3, i64 4, i32 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!319 = metadata !{metadata !320, metadata !321, metadata !322, metadata !323, metadata !324}
!320 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!321 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!322 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!323 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!324 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!325 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !78, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!326 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"", metadata !62, i32 777, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, i32 0, metadata !74, i32 777} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{null, metadata !292, metadata !329}
!329 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_reference_type ]
!330 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_const_type ]
!331 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_volatile_type ]
!332 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 789, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 789} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{null, metadata !292, metadata !80}
!335 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 790, metadata !336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 790} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!337 = metadata !{null, metadata !292, metadata !97}
!338 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 791, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 791} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{null, metadata !292, metadata !101}
!341 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 792, metadata !342, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 792} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!343 = metadata !{null, metadata !292, metadata !105}
!344 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 793, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 793} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{null, metadata !292, metadata !109}
!347 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 794, metadata !348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 794} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!349 = metadata !{null, metadata !292, metadata !113}
!350 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 795, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 795} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{null, metadata !292, metadata !78}
!353 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 796, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 796} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !292, metadata !120}
!356 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 798, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 798} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{null, metadata !292, metadata !124}
!359 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 799, metadata !360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 799} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!361 = metadata !{null, metadata !292, metadata !128}
!362 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 804, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 804} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{null, metadata !292, metadata !132}
!365 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 805, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 805} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !292, metadata !137}
!368 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 806, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 806} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!370 = metadata !{null, metadata !292, metadata !142}
!371 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 813, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 813} ; [ DW_TAG_subprogram ]
!372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!373 = metadata !{null, metadata !292, metadata !142, metadata !101}
!374 = metadata !{i32 786478, i32 0, metadata !276, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !62, i32 849, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 849} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{metadata !138, metadata !377, metadata !152}
!377 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !303} ; [ DW_TAG_pointer_type ]
!378 = metadata !{i32 786478, i32 0, metadata !276, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !62, i32 857, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 857} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{metadata !120, metadata !377, metadata !156}
!381 = metadata !{i32 786478, i32 0, metadata !276, metadata !"halfToRawBits", metadata !"halfToRawBits", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13halfToRawBitsEDh", metadata !62, i32 865, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 865} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{metadata !113, metadata !377, metadata !160}
!384 = metadata !{i32 786478, i32 0, metadata !276, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !62, i32 874, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 874} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{metadata !152, metadata !377, metadata !138}
!387 = metadata !{i32 786478, i32 0, metadata !276, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !62, i32 883, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 883} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{metadata !156, metadata !377, metadata !120}
!390 = metadata !{i32 786478, i32 0, metadata !276, metadata !"rawBitsToHalf", metadata !"rawBitsToHalf", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13rawBitsToHalfEt", metadata !62, i32 892, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 892} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{metadata !160, metadata !377, metadata !113}
!393 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 901, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 901} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{null, metadata !292, metadata !152}
!396 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1014, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1014} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{null, metadata !292, metadata !156}
!399 = metadata !{i32 786478, i32 0, metadata !276, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1018, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1018} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{null, metadata !292, metadata !160}
!402 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1022, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1022} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{metadata !405, metadata !292, metadata !302}
!405 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_reference_type ]
!406 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1029, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1029} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !405, metadata !292, metadata !329}
!409 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1036, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1036} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{null, metadata !412, metadata !302}
!412 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !331} ; [ DW_TAG_pointer_type ]
!413 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1042, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1042} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !412, metadata !329}
!416 = metadata !{i32 786478, i32 0, metadata !276, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !62, i32 1051, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1051} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{metadata !405, metadata !292, metadata !138}
!419 = metadata !{i32 786478, i32 0, metadata !276, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !62, i32 1057, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1057} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{metadata !276, metadata !138}
!422 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !62, i32 1066, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1066} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{metadata !425, metadata !377, metadata !80}
!425 = metadata !{i32 786434, null, metadata !"ap_int_base<8, true, true>", metadata !208, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !426, i32 0, null, metadata !956} ; [ DW_TAG_class_type ]
!426 = metadata !{metadata !427, metadata !438, metadata !442, metadata !445, metadata !448, metadata !451, metadata !454, metadata !457, metadata !460, metadata !463, metadata !466, metadata !469, metadata !472, metadata !475, metadata !478, metadata !481, metadata !484, metadata !487, metadata !490, metadata !495, metadata !500, metadata !505, metadata !506, metadata !510, metadata !513, metadata !516, metadata !519, metadata !522, metadata !525, metadata !528, metadata !531, metadata !534, metadata !537, metadata !540, metadata !543, metadata !552, metadata !555, metadata !558, metadata !561, metadata !564, metadata !567, metadata !570, metadata !573, metadata !576, metadata !579, metadata !582, metadata !585, metadata !588, metadata !589, metadata !593, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !604, metadata !605, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !616, metadata !617, metadata !618, metadata !621, metadata !622, metadata !625, metadata !626, metadata !917, metadata !921, metadata !922, metadata !925, metadata !926, metadata !930, metadata !931, metadata !932, metadata !933, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !950, metadata !953}
!427 = metadata !{i32 786460, metadata !425, null, metadata !208, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_inheritance ]
!428 = metadata !{i32 786434, null, metadata !"ssdm_int<8 + 1024 * 0, true>", metadata !66, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !429, i32 0, null, metadata !436} ; [ DW_TAG_class_type ]
!429 = metadata !{metadata !430, metadata !432}
!430 = metadata !{i32 786445, metadata !428, metadata !"V", metadata !66, i32 10, i64 8, i64 8, i64 0, i32 0, metadata !431} ; [ DW_TAG_member ]
!431 = metadata !{i32 786468, null, metadata !"int8", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!432 = metadata !{i32 786478, i32 0, metadata !428, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 10, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 10} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{null, metadata !435}
!435 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !428} ; [ DW_TAG_pointer_type ]
!436 = metadata !{metadata !437, metadata !79}
!437 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!438 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1439, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1439} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{null, metadata !441}
!441 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !425} ; [ DW_TAG_pointer_type ]
!442 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1461, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1461} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{null, metadata !441, metadata !80}
!445 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1462, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1462} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !441, metadata !101}
!448 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1463, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1463} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{null, metadata !441, metadata !105}
!451 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1464, metadata !452, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1464} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!453 = metadata !{null, metadata !441, metadata !109}
!454 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1465, metadata !455, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1465} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!456 = metadata !{null, metadata !441, metadata !113}
!457 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1466, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1466} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{null, metadata !441, metadata !78}
!460 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1467, metadata !461, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1467} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!462 = metadata !{null, metadata !441, metadata !120}
!463 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1468, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1468} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!465 = metadata !{null, metadata !441, metadata !124}
!466 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1469, metadata !467, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1469} ; [ DW_TAG_subprogram ]
!467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!468 = metadata !{null, metadata !441, metadata !128}
!469 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1470, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1470} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{null, metadata !441, metadata !132}
!472 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1471, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1471} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{null, metadata !441, metadata !137}
!475 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1472, metadata !476, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1472} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!477 = metadata !{null, metadata !441, metadata !160}
!478 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1473, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1473} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{null, metadata !441, metadata !156}
!481 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1474, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1474} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{null, metadata !441, metadata !152}
!484 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1501, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1501} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{null, metadata !441, metadata !142}
!487 = metadata !{i32 786478, i32 0, metadata !425, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1508, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1508} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{null, metadata !441, metadata !142, metadata !101}
!490 = metadata !{i32 786478, i32 0, metadata !425, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi8ELb1ELb1EE4readEv", metadata !208, i32 1529, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1529} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !425, metadata !493}
!493 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !494} ; [ DW_TAG_pointer_type ]
!494 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !425} ; [ DW_TAG_volatile_type ]
!495 = metadata !{i32 786478, i32 0, metadata !425, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi8ELb1ELb1EE5writeERKS0_", metadata !208, i32 1535, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1535} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{null, metadata !493, metadata !498}
!498 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !499} ; [ DW_TAG_reference_type ]
!499 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !425} ; [ DW_TAG_const_type ]
!500 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb1ELb1EEaSERVKS0_", metadata !208, i32 1547, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1547} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{null, metadata !493, metadata !503}
!503 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !504} ; [ DW_TAG_reference_type ]
!504 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !494} ; [ DW_TAG_const_type ]
!505 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb1ELb1EEaSERKS0_", metadata !208, i32 1556, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1556} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSERVKS0_", metadata !208, i32 1579, metadata !507, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1579} ; [ DW_TAG_subprogram ]
!507 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!508 = metadata !{metadata !509, metadata !441, metadata !503}
!509 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !425} ; [ DW_TAG_reference_type ]
!510 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSERKS0_", metadata !208, i32 1584, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1584} ; [ DW_TAG_subprogram ]
!511 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!512 = metadata !{metadata !509, metadata !441, metadata !498}
!513 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEPKc", metadata !208, i32 1588, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1588} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !509, metadata !441, metadata !142}
!516 = metadata !{i32 786478, i32 0, metadata !425, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE3setEPKca", metadata !208, i32 1596, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1596} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !509, metadata !441, metadata !142, metadata !101}
!519 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEa", metadata !208, i32 1610, metadata !520, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1610} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!521 = metadata !{metadata !509, metadata !441, metadata !101}
!522 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEh", metadata !208, i32 1611, metadata !523, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1611} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!524 = metadata !{metadata !509, metadata !441, metadata !105}
!525 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEs", metadata !208, i32 1612, metadata !526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1612} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !527, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!527 = metadata !{metadata !509, metadata !441, metadata !109}
!528 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEt", metadata !208, i32 1613, metadata !529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1613} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!530 = metadata !{metadata !509, metadata !441, metadata !113}
!531 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEi", metadata !208, i32 1614, metadata !532, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1614} ; [ DW_TAG_subprogram ]
!532 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !533, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!533 = metadata !{metadata !509, metadata !441, metadata !78}
!534 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEj", metadata !208, i32 1615, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1615} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!536 = metadata !{metadata !509, metadata !441, metadata !120}
!537 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEx", metadata !208, i32 1616, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1616} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !509, metadata !441, metadata !132}
!540 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEaSEy", metadata !208, i32 1617, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1617} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{metadata !509, metadata !441, metadata !137}
!543 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEcvaEv", metadata !208, i32 1655, metadata !544, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1655} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!545 = metadata !{metadata !546, metadata !551}
!546 = metadata !{i32 786454, metadata !425, metadata !"RetType", metadata !208, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ]
!547 = metadata !{i32 786454, metadata !548, metadata !"Type", metadata !208, i32 1368, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ]
!548 = metadata !{i32 786434, null, metadata !"retval<1, true>", metadata !208, i32 1367, i64 8, i64 8, i32 0, i32 0, null, metadata !271, i32 0, null, metadata !549} ; [ DW_TAG_class_type ]
!549 = metadata !{metadata !550, metadata !79}
!550 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!551 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !499} ; [ DW_TAG_pointer_type ]
!552 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7to_boolEv", metadata !208, i32 1661, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1661} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !80, metadata !551}
!555 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE8to_ucharEv", metadata !208, i32 1662, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1662} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!557 = metadata !{metadata !105, metadata !551}
!558 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7to_charEv", metadata !208, i32 1663, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1663} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!560 = metadata !{metadata !101, metadata !551}
!561 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_ushortEv", metadata !208, i32 1664, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1664} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !113, metadata !551}
!564 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE8to_shortEv", metadata !208, i32 1665, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1665} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !109, metadata !551}
!567 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE6to_intEv", metadata !208, i32 1666, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1666} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !78, metadata !551}
!570 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7to_uintEv", metadata !208, i32 1667, metadata !571, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1667} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!572 = metadata !{metadata !120, metadata !551}
!573 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7to_longEv", metadata !208, i32 1668, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1668} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!575 = metadata !{metadata !124, metadata !551}
!576 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE8to_ulongEv", metadata !208, i32 1669, metadata !577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1669} ; [ DW_TAG_subprogram ]
!577 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !578, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!578 = metadata !{metadata !128, metadata !551}
!579 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE8to_int64Ev", metadata !208, i32 1670, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1670} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!581 = metadata !{metadata !132, metadata !551}
!582 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_uint64Ev", metadata !208, i32 1671, metadata !583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1671} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!584 = metadata !{metadata !137, metadata !551}
!585 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_doubleEv", metadata !208, i32 1672, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1672} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!587 = metadata !{metadata !152, metadata !551}
!588 = metadata !{i32 786478, i32 0, metadata !425, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE6lengthEv", metadata !208, i32 1686, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1686} ; [ DW_TAG_subprogram ]
!589 = metadata !{i32 786478, i32 0, metadata !425, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi8ELb1ELb1EE6lengthEv", metadata !208, i32 1687, metadata !590, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1687} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!591 = metadata !{metadata !78, metadata !592}
!592 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !504} ; [ DW_TAG_pointer_type ]
!593 = metadata !{i32 786478, i32 0, metadata !425, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE7reverseEv", metadata !208, i32 1692, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1692} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!595 = metadata !{metadata !509, metadata !441}
!596 = metadata !{i32 786478, i32 0, metadata !425, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE6iszeroEv", metadata !208, i32 1698, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1698} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786478, i32 0, metadata !425, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7is_zeroEv", metadata !208, i32 1703, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1703} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786478, i32 0, metadata !425, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE4signEv", metadata !208, i32 1708, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1708} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786478, i32 0, metadata !425, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE5clearEi", metadata !208, i32 1716, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1716} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 786478, i32 0, metadata !425, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE6invertEi", metadata !208, i32 1722, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1722} ; [ DW_TAG_subprogram ]
!601 = metadata !{i32 786478, i32 0, metadata !425, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE4testEi", metadata !208, i32 1730, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1730} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !603, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!603 = metadata !{metadata !80, metadata !551, metadata !78}
!604 = metadata !{i32 786478, i32 0, metadata !425, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE3setEi", metadata !208, i32 1736, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1736} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786478, i32 0, metadata !425, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE3setEib", metadata !208, i32 1742, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1742} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!607 = metadata !{null, metadata !441, metadata !78, metadata !80}
!608 = metadata !{i32 786478, i32 0, metadata !425, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE7lrotateEi", metadata !208, i32 1749, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1749} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786478, i32 0, metadata !425, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE7rrotateEi", metadata !208, i32 1758, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1758} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786478, i32 0, metadata !425, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE7set_bitEib", metadata !208, i32 1766, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1766} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786478, i32 0, metadata !425, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE7get_bitEi", metadata !208, i32 1771, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1771} ; [ DW_TAG_subprogram ]
!612 = metadata !{i32 786478, i32 0, metadata !425, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE5b_notEv", metadata !208, i32 1776, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1776} ; [ DW_TAG_subprogram ]
!613 = metadata !{i32 786478, i32 0, metadata !425, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE17countLeadingZerosEv", metadata !208, i32 1783, metadata !614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1783} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!615 = metadata !{metadata !78, metadata !441}
!616 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEppEv", metadata !208, i32 1840, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1840} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEmmEv", metadata !208, i32 1844, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1844} ; [ DW_TAG_subprogram ]
!618 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEppEi", metadata !208, i32 1852, metadata !619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1852} ; [ DW_TAG_subprogram ]
!619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!620 = metadata !{metadata !499, metadata !441, metadata !78}
!621 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEmmEi", metadata !208, i32 1857, metadata !619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1857} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEpsEv", metadata !208, i32 1866, metadata !623, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1866} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!624 = metadata !{metadata !425, metadata !551}
!625 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEntEv", metadata !208, i32 1872, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1872} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEngEv", metadata !208, i32 1877, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1877} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{metadata !629, metadata !551}
!629 = metadata !{i32 786434, null, metadata !"ap_int_base<9, true, true>", metadata !208, i32 1398, i64 16, i64 16, i32 0, i32 0, null, metadata !630, i32 0, null, metadata !915} ; [ DW_TAG_class_type ]
!630 = metadata !{metadata !631, metadata !642, metadata !646, metadata !649, metadata !652, metadata !655, metadata !658, metadata !661, metadata !664, metadata !667, metadata !670, metadata !673, metadata !676, metadata !679, metadata !682, metadata !685, metadata !688, metadata !691, metadata !694, metadata !699, metadata !704, metadata !709, metadata !710, metadata !714, metadata !717, metadata !720, metadata !723, metadata !726, metadata !729, metadata !732, metadata !735, metadata !738, metadata !741, metadata !744, metadata !747, metadata !756, metadata !759, metadata !762, metadata !765, metadata !768, metadata !771, metadata !774, metadata !777, metadata !780, metadata !783, metadata !786, metadata !789, metadata !792, metadata !793, metadata !797, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !808, metadata !809, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !820, metadata !821, metadata !822, metadata !825, metadata !826, metadata !829, metadata !830, metadata !834, metadata !838, metadata !839, metadata !842, metadata !843, metadata !882, metadata !883, metadata !884, metadata !885, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !909, metadata !912}
!631 = metadata !{i32 786460, metadata !629, null, metadata !208, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !632} ; [ DW_TAG_inheritance ]
!632 = metadata !{i32 786434, null, metadata !"ssdm_int<9 + 1024 * 0, true>", metadata !66, i32 11, i64 16, i64 16, i32 0, i32 0, null, metadata !633, i32 0, null, metadata !640} ; [ DW_TAG_class_type ]
!633 = metadata !{metadata !634, metadata !636}
!634 = metadata !{i32 786445, metadata !632, metadata !"V", metadata !66, i32 11, i64 9, i64 16, i64 0, i32 0, metadata !635} ; [ DW_TAG_member ]
!635 = metadata !{i32 786468, null, metadata !"int9", null, i32 0, i64 9, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!636 = metadata !{i32 786478, i32 0, metadata !632, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 11, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 11} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{null, metadata !639}
!639 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !632} ; [ DW_TAG_pointer_type ]
!640 = metadata !{metadata !641, metadata !79}
!641 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!642 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1439, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1439} ; [ DW_TAG_subprogram ]
!643 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!644 = metadata !{null, metadata !645}
!645 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !629} ; [ DW_TAG_pointer_type ]
!646 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1461, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1461} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!648 = metadata !{null, metadata !645, metadata !80}
!649 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1462, metadata !650, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1462} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!651 = metadata !{null, metadata !645, metadata !101}
!652 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1463, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1463} ; [ DW_TAG_subprogram ]
!653 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!654 = metadata !{null, metadata !645, metadata !105}
!655 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1464, metadata !656, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1464} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!657 = metadata !{null, metadata !645, metadata !109}
!658 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1465, metadata !659, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1465} ; [ DW_TAG_subprogram ]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!660 = metadata !{null, metadata !645, metadata !113}
!661 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1466, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1466} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{null, metadata !645, metadata !78}
!664 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1467, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1467} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{null, metadata !645, metadata !120}
!667 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1468, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1468} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{null, metadata !645, metadata !124}
!670 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1469, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1469} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{null, metadata !645, metadata !128}
!673 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1470, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1470} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{null, metadata !645, metadata !132}
!676 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1471, metadata !677, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1471} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!678 = metadata !{null, metadata !645, metadata !137}
!679 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1472, metadata !680, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1472} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !681, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!681 = metadata !{null, metadata !645, metadata !160}
!682 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1473, metadata !683, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1473} ; [ DW_TAG_subprogram ]
!683 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!684 = metadata !{null, metadata !645, metadata !156}
!685 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1474, metadata !686, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !74, i32 1474} ; [ DW_TAG_subprogram ]
!686 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !687, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!687 = metadata !{null, metadata !645, metadata !152}
!688 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1501, metadata !689, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1501} ; [ DW_TAG_subprogram ]
!689 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !690, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!690 = metadata !{null, metadata !645, metadata !142}
!691 = metadata !{i32 786478, i32 0, metadata !629, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !208, i32 1508, metadata !692, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1508} ; [ DW_TAG_subprogram ]
!692 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !693, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!693 = metadata !{null, metadata !645, metadata !142, metadata !101}
!694 = metadata !{i32 786478, i32 0, metadata !629, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE4readEv", metadata !208, i32 1529, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1529} ; [ DW_TAG_subprogram ]
!695 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!696 = metadata !{metadata !629, metadata !697}
!697 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !698} ; [ DW_TAG_pointer_type ]
!698 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !629} ; [ DW_TAG_volatile_type ]
!699 = metadata !{i32 786478, i32 0, metadata !629, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE5writeERKS0_", metadata !208, i32 1535, metadata !700, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1535} ; [ DW_TAG_subprogram ]
!700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!701 = metadata !{null, metadata !697, metadata !702}
!702 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !703} ; [ DW_TAG_reference_type ]
!703 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !629} ; [ DW_TAG_const_type ]
!704 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !208, i32 1547, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1547} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{null, metadata !697, metadata !707}
!707 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !708} ; [ DW_TAG_reference_type ]
!708 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !698} ; [ DW_TAG_const_type ]
!709 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !208, i32 1556, metadata !700, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1556} ; [ DW_TAG_subprogram ]
!710 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !208, i32 1579, metadata !711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1579} ; [ DW_TAG_subprogram ]
!711 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !712, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!712 = metadata !{metadata !713, metadata !645, metadata !707}
!713 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !629} ; [ DW_TAG_reference_type ]
!714 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !208, i32 1584, metadata !715, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1584} ; [ DW_TAG_subprogram ]
!715 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !716, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!716 = metadata !{metadata !713, metadata !645, metadata !702}
!717 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEPKc", metadata !208, i32 1588, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1588} ; [ DW_TAG_subprogram ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!719 = metadata !{metadata !713, metadata !645, metadata !142}
!720 = metadata !{i32 786478, i32 0, metadata !629, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEPKca", metadata !208, i32 1596, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1596} ; [ DW_TAG_subprogram ]
!721 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!722 = metadata !{metadata !713, metadata !645, metadata !142, metadata !101}
!723 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEa", metadata !208, i32 1610, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1610} ; [ DW_TAG_subprogram ]
!724 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!725 = metadata !{metadata !713, metadata !645, metadata !101}
!726 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEh", metadata !208, i32 1611, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1611} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{metadata !713, metadata !645, metadata !105}
!729 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEs", metadata !208, i32 1612, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1612} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{metadata !713, metadata !645, metadata !109}
!732 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEt", metadata !208, i32 1613, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1613} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{metadata !713, metadata !645, metadata !113}
!735 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEi", metadata !208, i32 1614, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1614} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{metadata !713, metadata !645, metadata !78}
!738 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEj", metadata !208, i32 1615, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1615} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!740 = metadata !{metadata !713, metadata !645, metadata !120}
!741 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEx", metadata !208, i32 1616, metadata !742, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1616} ; [ DW_TAG_subprogram ]
!742 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !743, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!743 = metadata !{metadata !713, metadata !645, metadata !132}
!744 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEy", metadata !208, i32 1617, metadata !745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1617} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!746 = metadata !{metadata !713, metadata !645, metadata !137}
!747 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEcvsEv", metadata !208, i32 1655, metadata !748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1655} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!749 = metadata !{metadata !750, metadata !755}
!750 = metadata !{i32 786454, metadata !629, metadata !"RetType", metadata !208, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !751} ; [ DW_TAG_typedef ]
!751 = metadata !{i32 786454, metadata !752, metadata !"Type", metadata !208, i32 1374, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ]
!752 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !208, i32 1373, i64 8, i64 8, i32 0, i32 0, null, metadata !271, i32 0, null, metadata !753} ; [ DW_TAG_class_type ]
!753 = metadata !{metadata !754, metadata !79}
!754 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!755 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !703} ; [ DW_TAG_pointer_type ]
!756 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_boolEv", metadata !208, i32 1661, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1661} ; [ DW_TAG_subprogram ]
!757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!758 = metadata !{metadata !80, metadata !755}
!759 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ucharEv", metadata !208, i32 1662, metadata !760, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1662} ; [ DW_TAG_subprogram ]
!760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!761 = metadata !{metadata !105, metadata !755}
!762 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_charEv", metadata !208, i32 1663, metadata !763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1663} ; [ DW_TAG_subprogram ]
!763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!764 = metadata !{metadata !101, metadata !755}
!765 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_ushortEv", metadata !208, i32 1664, metadata !766, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1664} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !767, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!767 = metadata !{metadata !113, metadata !755}
!768 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_shortEv", metadata !208, i32 1665, metadata !769, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1665} ; [ DW_TAG_subprogram ]
!769 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !770, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!770 = metadata !{metadata !109, metadata !755}
!771 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6to_intEv", metadata !208, i32 1666, metadata !772, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1666} ; [ DW_TAG_subprogram ]
!772 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !773, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!773 = metadata !{metadata !78, metadata !755}
!774 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_uintEv", metadata !208, i32 1667, metadata !775, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1667} ; [ DW_TAG_subprogram ]
!775 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!776 = metadata !{metadata !120, metadata !755}
!777 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_longEv", metadata !208, i32 1668, metadata !778, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1668} ; [ DW_TAG_subprogram ]
!778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!779 = metadata !{metadata !124, metadata !755}
!780 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ulongEv", metadata !208, i32 1669, metadata !781, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1669} ; [ DW_TAG_subprogram ]
!781 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!782 = metadata !{metadata !128, metadata !755}
!783 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_int64Ev", metadata !208, i32 1670, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1670} ; [ DW_TAG_subprogram ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!785 = metadata !{metadata !132, metadata !755}
!786 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_uint64Ev", metadata !208, i32 1671, metadata !787, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1671} ; [ DW_TAG_subprogram ]
!787 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !788, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!788 = metadata !{metadata !137, metadata !755}
!789 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_doubleEv", metadata !208, i32 1672, metadata !790, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1672} ; [ DW_TAG_subprogram ]
!790 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !791, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!791 = metadata !{metadata !152, metadata !755}
!792 = metadata !{i32 786478, i32 0, metadata !629, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !208, i32 1686, metadata !772, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1686} ; [ DW_TAG_subprogram ]
!793 = metadata !{i32 786478, i32 0, metadata !629, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !208, i32 1687, metadata !794, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1687} ; [ DW_TAG_subprogram ]
!794 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !795, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!795 = metadata !{metadata !78, metadata !796}
!796 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !708} ; [ DW_TAG_pointer_type ]
!797 = metadata !{i32 786478, i32 0, metadata !629, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7reverseEv", metadata !208, i32 1692, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1692} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !713, metadata !645}
!800 = metadata !{i32 786478, i32 0, metadata !629, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6iszeroEv", metadata !208, i32 1698, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1698} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786478, i32 0, metadata !629, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7is_zeroEv", metadata !208, i32 1703, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1703} ; [ DW_TAG_subprogram ]
!802 = metadata !{i32 786478, i32 0, metadata !629, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4signEv", metadata !208, i32 1708, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1708} ; [ DW_TAG_subprogram ]
!803 = metadata !{i32 786478, i32 0, metadata !629, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5clearEi", metadata !208, i32 1716, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1716} ; [ DW_TAG_subprogram ]
!804 = metadata !{i32 786478, i32 0, metadata !629, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE6invertEi", metadata !208, i32 1722, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1722} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786478, i32 0, metadata !629, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4testEi", metadata !208, i32 1730, metadata !806, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1730} ; [ DW_TAG_subprogram ]
!806 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !807, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!807 = metadata !{metadata !80, metadata !755, metadata !78}
!808 = metadata !{i32 786478, i32 0, metadata !629, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEi", metadata !208, i32 1736, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1736} ; [ DW_TAG_subprogram ]
!809 = metadata !{i32 786478, i32 0, metadata !629, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEib", metadata !208, i32 1742, metadata !810, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1742} ; [ DW_TAG_subprogram ]
!810 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !811, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!811 = metadata !{null, metadata !645, metadata !78, metadata !80}
!812 = metadata !{i32 786478, i32 0, metadata !629, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7lrotateEi", metadata !208, i32 1749, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1749} ; [ DW_TAG_subprogram ]
!813 = metadata !{i32 786478, i32 0, metadata !629, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7rrotateEi", metadata !208, i32 1758, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1758} ; [ DW_TAG_subprogram ]
!814 = metadata !{i32 786478, i32 0, metadata !629, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7set_bitEib", metadata !208, i32 1766, metadata !810, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1766} ; [ DW_TAG_subprogram ]
!815 = metadata !{i32 786478, i32 0, metadata !629, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7get_bitEi", metadata !208, i32 1771, metadata !806, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1771} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786478, i32 0, metadata !629, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5b_notEv", metadata !208, i32 1776, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1776} ; [ DW_TAG_subprogram ]
!817 = metadata !{i32 786478, i32 0, metadata !629, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE17countLeadingZerosEv", metadata !208, i32 1783, metadata !818, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1783} ; [ DW_TAG_subprogram ]
!818 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !819, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!819 = metadata !{metadata !78, metadata !645}
!820 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEv", metadata !208, i32 1840, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1840} ; [ DW_TAG_subprogram ]
!821 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEv", metadata !208, i32 1844, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1844} ; [ DW_TAG_subprogram ]
!822 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEi", metadata !208, i32 1852, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1852} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{metadata !703, metadata !645, metadata !78}
!825 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEi", metadata !208, i32 1857, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1857} ; [ DW_TAG_subprogram ]
!826 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEpsEv", metadata !208, i32 1866, metadata !827, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1866} ; [ DW_TAG_subprogram ]
!827 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !828, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!828 = metadata !{metadata !629, metadata !755}
!829 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEntEv", metadata !208, i32 1872, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1872} ; [ DW_TAG_subprogram ]
!830 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEngEv", metadata !208, i32 1877, metadata !831, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1877} ; [ DW_TAG_subprogram ]
!831 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !832, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!832 = metadata !{metadata !833, metadata !755}
!833 = metadata !{i32 786434, null, metadata !"ap_int_base<10, true, true>", metadata !208, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!834 = metadata !{i32 786478, i32 0, metadata !629, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !208, i32 2007, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2007} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!836 = metadata !{metadata !837, metadata !645, metadata !78, metadata !78}
!837 = metadata !{i32 786434, null, metadata !"ap_range_ref<9, true>", metadata !208, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!838 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEclEii", metadata !208, i32 2013, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2013} ; [ DW_TAG_subprogram ]
!839 = metadata !{i32 786478, i32 0, metadata !629, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !208, i32 2019, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2019} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!841 = metadata !{metadata !837, metadata !755, metadata !78, metadata !78}
!842 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEclEii", metadata !208, i32 2025, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2025} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEixEi", metadata !208, i32 2044, metadata !844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2044} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !845, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!845 = metadata !{metadata !846, metadata !645, metadata !78}
!846 = metadata !{i32 786434, null, metadata !"ap_bit_ref<9, true>", metadata !208, i32 1194, i64 128, i64 64, i32 0, i32 0, null, metadata !847, i32 0, null, metadata !880} ; [ DW_TAG_class_type ]
!847 = metadata !{metadata !848, metadata !849, metadata !850, metadata !856, metadata !860, metadata !864, metadata !865, metadata !869, metadata !872, metadata !873, metadata !876, metadata !877}
!848 = metadata !{i32 786445, metadata !846, metadata !"d_bv", metadata !208, i32 1195, i64 64, i64 64, i64 0, i32 0, metadata !713} ; [ DW_TAG_member ]
!849 = metadata !{i32 786445, metadata !846, metadata !"d_index", metadata !208, i32 1196, i64 32, i64 32, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ]
!850 = metadata !{i32 786478, i32 0, metadata !846, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !208, i32 1199, metadata !851, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1199} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !852, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!852 = metadata !{null, metadata !853, metadata !854}
!853 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !846} ; [ DW_TAG_pointer_type ]
!854 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !855} ; [ DW_TAG_reference_type ]
!855 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !846} ; [ DW_TAG_const_type ]
!856 = metadata !{i32 786478, i32 0, metadata !846, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !208, i32 1202, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1202} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !858, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!858 = metadata !{null, metadata !853, metadata !859, metadata !78}
!859 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_pointer_type ]
!860 = metadata !{i32 786478, i32 0, metadata !846, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi9ELb1EEcvbEv", metadata !208, i32 1204, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1204} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !862, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!862 = metadata !{metadata !80, metadata !863}
!863 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !855} ; [ DW_TAG_pointer_type ]
!864 = metadata !{i32 786478, i32 0, metadata !846, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi9ELb1EE7to_boolEv", metadata !208, i32 1205, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1205} ; [ DW_TAG_subprogram ]
!865 = metadata !{i32 786478, i32 0, metadata !846, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSEy", metadata !208, i32 1207, metadata !866, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1207} ; [ DW_TAG_subprogram ]
!866 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !867, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!867 = metadata !{metadata !868, metadata !853, metadata !138}
!868 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !846} ; [ DW_TAG_reference_type ]
!869 = metadata !{i32 786478, i32 0, metadata !846, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSERKS0_", metadata !208, i32 1227, metadata !870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1227} ; [ DW_TAG_subprogram ]
!870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!871 = metadata !{metadata !868, metadata !853, metadata !854}
!872 = metadata !{i32 786478, i32 0, metadata !846, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi9ELb1EE3getEv", metadata !208, i32 1335, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1335} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786478, i32 0, metadata !846, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi9ELb1EE3getEv", metadata !208, i32 1339, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1339} ; [ DW_TAG_subprogram ]
!874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!875 = metadata !{metadata !80, metadata !853}
!876 = metadata !{i32 786478, i32 0, metadata !846, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi9ELb1EEcoEv", metadata !208, i32 1348, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1348} ; [ DW_TAG_subprogram ]
!877 = metadata !{i32 786478, i32 0, metadata !846, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi9ELb1EE6lengthEv", metadata !208, i32 1353, metadata !878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1353} ; [ DW_TAG_subprogram ]
!878 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!879 = metadata !{metadata !78, metadata !863}
!880 = metadata !{metadata !881, metadata !79}
!881 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !78, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!882 = metadata !{i32 786478, i32 0, metadata !629, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEixEi", metadata !208, i32 2058, metadata !806, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2058} ; [ DW_TAG_subprogram ]
!883 = metadata !{i32 786478, i32 0, metadata !629, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !208, i32 2072, metadata !844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2072} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786478, i32 0, metadata !629, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !208, i32 2086, metadata !806, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2086} ; [ DW_TAG_subprogram ]
!885 = metadata !{i32 786478, i32 0, metadata !629, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !208, i32 2266, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2266} ; [ DW_TAG_subprogram ]
!886 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !887, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!887 = metadata !{metadata !80, metadata !645}
!888 = metadata !{i32 786478, i32 0, metadata !629, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !208, i32 2269, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2269} ; [ DW_TAG_subprogram ]
!889 = metadata !{i32 786478, i32 0, metadata !629, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !208, i32 2272, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2272} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786478, i32 0, metadata !629, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !208, i32 2275, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2275} ; [ DW_TAG_subprogram ]
!891 = metadata !{i32 786478, i32 0, metadata !629, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !208, i32 2278, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2278} ; [ DW_TAG_subprogram ]
!892 = metadata !{i32 786478, i32 0, metadata !629, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !208, i32 2281, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2281} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786478, i32 0, metadata !629, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !208, i32 2285, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2285} ; [ DW_TAG_subprogram ]
!894 = metadata !{i32 786478, i32 0, metadata !629, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !208, i32 2288, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2288} ; [ DW_TAG_subprogram ]
!895 = metadata !{i32 786478, i32 0, metadata !629, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !208, i32 2291, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2291} ; [ DW_TAG_subprogram ]
!896 = metadata !{i32 786478, i32 0, metadata !629, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !208, i32 2294, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2294} ; [ DW_TAG_subprogram ]
!897 = metadata !{i32 786478, i32 0, metadata !629, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !208, i32 2297, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2297} ; [ DW_TAG_subprogram ]
!898 = metadata !{i32 786478, i32 0, metadata !629, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !208, i32 2300, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2300} ; [ DW_TAG_subprogram ]
!899 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !208, i32 2307, metadata !900, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2307} ; [ DW_TAG_subprogram ]
!900 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !901, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!901 = metadata !{null, metadata !755, metadata !902, metadata !78, metadata !903, metadata !80}
!902 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ]
!903 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !208, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!904 = metadata !{metadata !905, metadata !906, metadata !907, metadata !908}
!905 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!906 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!907 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!908 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!909 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringE8BaseModeb", metadata !208, i32 2334, metadata !910, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2334} ; [ DW_TAG_subprogram ]
!910 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!911 = metadata !{metadata !902, metadata !755, metadata !903, metadata !80}
!912 = metadata !{i32 786478, i32 0, metadata !629, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEab", metadata !208, i32 2338, metadata !913, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2338} ; [ DW_TAG_subprogram ]
!913 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !914, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!914 = metadata !{metadata !902, metadata !755, metadata !101, metadata !80}
!915 = metadata !{metadata !881, metadata !79, metadata !916}
!916 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !80, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!917 = metadata !{i32 786478, i32 0, metadata !425, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE5rangeEii", metadata !208, i32 2007, metadata !918, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2007} ; [ DW_TAG_subprogram ]
!918 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !919, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!919 = metadata !{metadata !920, metadata !441, metadata !78, metadata !78}
!920 = metadata !{i32 786434, null, metadata !"ap_range_ref<8, true>", metadata !208, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!921 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEclEii", metadata !208, i32 2013, metadata !918, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2013} ; [ DW_TAG_subprogram ]
!922 = metadata !{i32 786478, i32 0, metadata !425, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE5rangeEii", metadata !208, i32 2019, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2019} ; [ DW_TAG_subprogram ]
!923 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!924 = metadata !{metadata !920, metadata !551, metadata !78, metadata !78}
!925 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEclEii", metadata !208, i32 2025, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2025} ; [ DW_TAG_subprogram ]
!926 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EEixEi", metadata !208, i32 2044, metadata !927, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2044} ; [ DW_TAG_subprogram ]
!927 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !928, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!928 = metadata !{metadata !929, metadata !441, metadata !78}
!929 = metadata !{i32 786434, null, metadata !"ap_bit_ref<8, true>", metadata !208, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!930 = metadata !{i32 786478, i32 0, metadata !425, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EEixEi", metadata !208, i32 2058, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2058} ; [ DW_TAG_subprogram ]
!931 = metadata !{i32 786478, i32 0, metadata !425, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE3bitEi", metadata !208, i32 2072, metadata !927, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2072} ; [ DW_TAG_subprogram ]
!932 = metadata !{i32 786478, i32 0, metadata !425, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE3bitEi", metadata !208, i32 2086, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2086} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786478, i32 0, metadata !425, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE10and_reduceEv", metadata !208, i32 2266, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2266} ; [ DW_TAG_subprogram ]
!934 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !935, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!935 = metadata !{metadata !80, metadata !441}
!936 = metadata !{i32 786478, i32 0, metadata !425, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE11nand_reduceEv", metadata !208, i32 2269, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2269} ; [ DW_TAG_subprogram ]
!937 = metadata !{i32 786478, i32 0, metadata !425, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE9or_reduceEv", metadata !208, i32 2272, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2272} ; [ DW_TAG_subprogram ]
!938 = metadata !{i32 786478, i32 0, metadata !425, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE10nor_reduceEv", metadata !208, i32 2275, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2275} ; [ DW_TAG_subprogram ]
!939 = metadata !{i32 786478, i32 0, metadata !425, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE10xor_reduceEv", metadata !208, i32 2278, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2278} ; [ DW_TAG_subprogram ]
!940 = metadata !{i32 786478, i32 0, metadata !425, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi8ELb1ELb1EE11xnor_reduceEv", metadata !208, i32 2281, metadata !934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2281} ; [ DW_TAG_subprogram ]
!941 = metadata !{i32 786478, i32 0, metadata !425, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE10and_reduceEv", metadata !208, i32 2285, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2285} ; [ DW_TAG_subprogram ]
!942 = metadata !{i32 786478, i32 0, metadata !425, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE11nand_reduceEv", metadata !208, i32 2288, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2288} ; [ DW_TAG_subprogram ]
!943 = metadata !{i32 786478, i32 0, metadata !425, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9or_reduceEv", metadata !208, i32 2291, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2291} ; [ DW_TAG_subprogram ]
!944 = metadata !{i32 786478, i32 0, metadata !425, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE10nor_reduceEv", metadata !208, i32 2294, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2294} ; [ DW_TAG_subprogram ]
!945 = metadata !{i32 786478, i32 0, metadata !425, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE10xor_reduceEv", metadata !208, i32 2297, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2297} ; [ DW_TAG_subprogram ]
!946 = metadata !{i32 786478, i32 0, metadata !425, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE11xnor_reduceEv", metadata !208, i32 2300, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2300} ; [ DW_TAG_subprogram ]
!947 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !208, i32 2307, metadata !948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2307} ; [ DW_TAG_subprogram ]
!948 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !949, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!949 = metadata !{null, metadata !551, metadata !902, metadata !78, metadata !903, metadata !80}
!950 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_stringE8BaseModeb", metadata !208, i32 2334, metadata !951, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2334} ; [ DW_TAG_subprogram ]
!951 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !952, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!952 = metadata !{metadata !902, metadata !551, metadata !903, metadata !80}
!953 = metadata !{i32 786478, i32 0, metadata !425, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb1ELb1EE9to_stringEab", metadata !208, i32 2338, metadata !954, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2338} ; [ DW_TAG_subprogram ]
!954 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !955, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!955 = metadata !{metadata !902, metadata !551, metadata !101, metadata !80}
!956 = metadata !{metadata !957, metadata !79, metadata !916}
!957 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !78, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!958 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !62, i32 1101, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1101} ; [ DW_TAG_subprogram ]
!959 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !960, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!960 = metadata !{metadata !78, metadata !377}
!961 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !62, i32 1104, metadata !962, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1104} ; [ DW_TAG_subprogram ]
!962 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !963, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!963 = metadata !{metadata !120, metadata !377}
!964 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !62, i32 1107, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1107} ; [ DW_TAG_subprogram ]
!965 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!966 = metadata !{metadata !132, metadata !377}
!967 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !62, i32 1110, metadata !968, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1110} ; [ DW_TAG_subprogram ]
!968 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!969 = metadata !{metadata !137, metadata !377}
!970 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !62, i32 1113, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1113} ; [ DW_TAG_subprogram ]
!971 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!972 = metadata !{metadata !152, metadata !377}
!973 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !62, i32 1166, metadata !974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1166} ; [ DW_TAG_subprogram ]
!974 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !975, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!975 = metadata !{metadata !156, metadata !377}
!976 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_half", metadata !"to_half", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", metadata !62, i32 1215, metadata !977, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1215} ; [ DW_TAG_subprogram ]
!977 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !978, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!978 = metadata !{metadata !160, metadata !377}
!979 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !62, i32 1265, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1265} ; [ DW_TAG_subprogram ]
!980 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !62, i32 1269, metadata !974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1269} ; [ DW_TAG_subprogram ]
!981 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator half", metadata !"operator half", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", metadata !62, i32 1272, metadata !977, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1272} ; [ DW_TAG_subprogram ]
!982 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !62, i32 1275, metadata !983, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1275} ; [ DW_TAG_subprogram ]
!983 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!984 = metadata !{metadata !97, metadata !377}
!985 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !62, i32 1279, metadata !986, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1279} ; [ DW_TAG_subprogram ]
!986 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!987 = metadata !{metadata !101, metadata !377}
!988 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !62, i32 1283, metadata !989, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1283} ; [ DW_TAG_subprogram ]
!989 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !990, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!990 = metadata !{metadata !105, metadata !377}
!991 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !62, i32 1287, metadata !992, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1287} ; [ DW_TAG_subprogram ]
!992 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !993, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!993 = metadata !{metadata !109, metadata !377}
!994 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !62, i32 1291, metadata !995, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1291} ; [ DW_TAG_subprogram ]
!995 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !996, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!996 = metadata !{metadata !113, metadata !377}
!997 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !62, i32 1296, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1296} ; [ DW_TAG_subprogram ]
!998 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !62, i32 1300, metadata !962, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1300} ; [ DW_TAG_subprogram ]
!999 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !62, i32 1305, metadata !1000, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1305} ; [ DW_TAG_subprogram ]
!1000 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1001, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1001 = metadata !{metadata !124, metadata !377}
!1002 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !62, i32 1309, metadata !1003, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1309} ; [ DW_TAG_subprogram ]
!1003 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1004, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1004 = metadata !{metadata !128, metadata !377}
!1005 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !62, i32 1322, metadata !1006, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1322} ; [ DW_TAG_subprogram ]
!1006 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1007, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1007 = metadata !{metadata !138, metadata !377}
!1008 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !62, i32 1326, metadata !1009, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1326} ; [ DW_TAG_subprogram ]
!1009 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1010, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1010 = metadata !{metadata !133, metadata !377}
!1011 = metadata !{i32 786478, i32 0, metadata !276, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !62, i32 1330, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1330} ; [ DW_TAG_subprogram ]
!1012 = metadata !{i32 786478, i32 0, metadata !276, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !62, i32 1334, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1334} ; [ DW_TAG_subprogram ]
!1013 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1014, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1014 = metadata !{metadata !78, metadata !292}
!1015 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !62, i32 1435, metadata !1016, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1435} ; [ DW_TAG_subprogram ]
!1016 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1017, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1017 = metadata !{metadata !405, metadata !292}
!1018 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !62, i32 1439, metadata !1016, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1439} ; [ DW_TAG_subprogram ]
!1019 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !62, i32 1447, metadata !1020, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1447} ; [ DW_TAG_subprogram ]
!1020 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1021, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1021 = metadata !{metadata !303, metadata !292, metadata !78}
!1022 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !62, i32 1453, metadata !1020, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1453} ; [ DW_TAG_subprogram ]
!1023 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !62, i32 1461, metadata !1024, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1461} ; [ DW_TAG_subprogram ]
!1024 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1025, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1025 = metadata !{metadata !276, metadata !292}
!1026 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !62, i32 1465, metadata !1027, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1465} ; [ DW_TAG_subprogram ]
!1027 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1028, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1028 = metadata !{metadata !1029, metadata !377}
!1029 = metadata !{i32 786434, null, metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !62, i32 512, i64 64, i64 64, i32 0, i32 0, null, metadata !1030, i32 0, null, metadata !1329} ; [ DW_TAG_class_type ]
!1030 = metadata !{metadata !1031, metadata !1047, metadata !1051, metadata !1054, metadata !1057, metadata !1065, metadata !1068, metadata !1072, metadata !1078, metadata !1081, metadata !1084, metadata !1087, metadata !1090, metadata !1093, metadata !1096, metadata !1099, metadata !1102, metadata !1105, metadata !1108, metadata !1111, metadata !1114, metadata !1117, metadata !1120, metadata !1123, metadata !1126, metadata !1130, metadata !1133, metadata !1136, metadata !1139, metadata !1142, metadata !1145, metadata !1148, metadata !1151, metadata !1154, metadata !1158, metadata !1161, metadata !1165, metadata !1168, metadata !1171, metadata !1174, metadata !1177, metadata !1180, metadata !1183, metadata !1186, metadata !1189, metadata !1192, metadata !1195, metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1204, metadata !1207, metadata !1210, metadata !1213, metadata !1216, metadata !1217, metadata !1218, metadata !1221, metadata !1224, metadata !1227, metadata !1230, metadata !1231, metadata !1234, metadata !1237, metadata !1238, metadata !1241, metadata !1242, metadata !1245, metadata !1249, metadata !1250, metadata !1253, metadata !1256, metadata !1259, metadata !1262, metadata !1263, metadata !1264, metadata !1267, metadata !1270, metadata !1271, metadata !1272, metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280, metadata !1284, metadata !1287, metadata !1288, metadata !1289, metadata !1292, metadata !1295, metadata !1299, metadata !1300, metadata !1303, metadata !1304, metadata !1307, metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1317, metadata !1320, metadata !1321, metadata !1324, metadata !1327, metadata !1328}
!1031 = metadata !{i32 786460, metadata !1029, null, metadata !62, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1032} ; [ DW_TAG_inheritance ]
!1032 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !66, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !1033, i32 0, null, metadata !1045} ; [ DW_TAG_class_type ]
!1033 = metadata !{metadata !1034, metadata !1036, metadata !1040}
!1034 = metadata !{i32 786445, metadata !1032, metadata !"V", metadata !66, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !1035} ; [ DW_TAG_member ]
!1035 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1036 = metadata !{i32 786478, i32 0, metadata !1032, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 35, metadata !1037, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 35} ; [ DW_TAG_subprogram ]
!1037 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1038, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1038 = metadata !{null, metadata !1039}
!1039 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1032} ; [ DW_TAG_pointer_type ]
!1040 = metadata !{i32 786478, i32 0, metadata !1032, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 35, metadata !1041, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !74, i32 35} ; [ DW_TAG_subprogram ]
!1041 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1042, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1042 = metadata !{null, metadata !1039, metadata !1043}
!1043 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1044} ; [ DW_TAG_reference_type ]
!1044 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1032} ; [ DW_TAG_const_type ]
!1045 = metadata !{metadata !1046, metadata !79}
!1046 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1047 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !62, i32 522, metadata !1048, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 522} ; [ DW_TAG_subprogram ]
!1048 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1049, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1049 = metadata !{null, metadata !1050, metadata !80, metadata !80, metadata !80, metadata !80}
!1050 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1029} ; [ DW_TAG_pointer_type ]
!1051 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !62, i32 595, metadata !1052, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 595} ; [ DW_TAG_subprogram ]
!1052 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1053, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1053 = metadata !{metadata !80, metadata !1050, metadata !80, metadata !80, metadata !80}
!1054 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 653, metadata !1055, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 653} ; [ DW_TAG_subprogram ]
!1055 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1056, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1056 = metadata !{null, metadata !1050}
!1057 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"", metadata !62, i32 663, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1062, i32 0, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1058 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1059, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1059 = metadata !{null, metadata !1050, metadata !1060}
!1060 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1061} ; [ DW_TAG_reference_type ]
!1061 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1029} ; [ DW_TAG_const_type ]
!1062 = metadata !{metadata !1063, metadata !1064, metadata !275, metadata !307, metadata !317, metadata !325}
!1063 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !78, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1064 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !78, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1065 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"", metadata !62, i32 663, metadata !1066, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, i32 0, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1066 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1067 = metadata !{null, metadata !1050, metadata !302}
!1068 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"", metadata !62, i32 663, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, i32 0, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1070 = metadata !{null, metadata !1050, metadata !184}
!1071 = metadata !{metadata !273, metadata !274, metadata !275, metadata !307, metadata !317, metadata !325}
!1072 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"", metadata !62, i32 777, metadata !1073, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1062, i32 0, metadata !74, i32 777} ; [ DW_TAG_subprogram ]
!1073 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1074, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1074 = metadata !{null, metadata !1050, metadata !1075}
!1075 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1076} ; [ DW_TAG_reference_type ]
!1076 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1077} ; [ DW_TAG_const_type ]
!1077 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1029} ; [ DW_TAG_volatile_type ]
!1078 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"ap_fixed_base<32, 8, true, 5, 3, 0>", metadata !"", metadata !62, i32 777, metadata !1079, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, i32 0, metadata !74, i32 777} ; [ DW_TAG_subprogram ]
!1079 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1080, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1080 = metadata !{null, metadata !1050, metadata !329}
!1081 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"", metadata !62, i32 777, metadata !1082, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, i32 0, metadata !74, i32 777} ; [ DW_TAG_subprogram ]
!1082 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1083, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1083 = metadata !{null, metadata !1050, metadata !188}
!1084 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 789, metadata !1085, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 789} ; [ DW_TAG_subprogram ]
!1085 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1086, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1086 = metadata !{null, metadata !1050, metadata !80}
!1087 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 790, metadata !1088, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 790} ; [ DW_TAG_subprogram ]
!1088 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1089, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1089 = metadata !{null, metadata !1050, metadata !97}
!1090 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 791, metadata !1091, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 791} ; [ DW_TAG_subprogram ]
!1091 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1092, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1092 = metadata !{null, metadata !1050, metadata !101}
!1093 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 792, metadata !1094, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 792} ; [ DW_TAG_subprogram ]
!1094 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1095, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1095 = metadata !{null, metadata !1050, metadata !105}
!1096 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 793, metadata !1097, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 793} ; [ DW_TAG_subprogram ]
!1097 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1098, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1098 = metadata !{null, metadata !1050, metadata !109}
!1099 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 794, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 794} ; [ DW_TAG_subprogram ]
!1100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1101 = metadata !{null, metadata !1050, metadata !113}
!1102 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 795, metadata !1103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 795} ; [ DW_TAG_subprogram ]
!1103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1104 = metadata !{null, metadata !1050, metadata !78}
!1105 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 796, metadata !1106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 796} ; [ DW_TAG_subprogram ]
!1106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1107 = metadata !{null, metadata !1050, metadata !120}
!1108 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 798, metadata !1109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 798} ; [ DW_TAG_subprogram ]
!1109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1110 = metadata !{null, metadata !1050, metadata !124}
!1111 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 799, metadata !1112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 799} ; [ DW_TAG_subprogram ]
!1112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1113 = metadata !{null, metadata !1050, metadata !128}
!1114 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 804, metadata !1115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 804} ; [ DW_TAG_subprogram ]
!1115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1116 = metadata !{null, metadata !1050, metadata !132}
!1117 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 805, metadata !1118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 805} ; [ DW_TAG_subprogram ]
!1118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1119 = metadata !{null, metadata !1050, metadata !137}
!1120 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 806, metadata !1121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 806} ; [ DW_TAG_subprogram ]
!1121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1122 = metadata !{null, metadata !1050, metadata !142}
!1123 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 813, metadata !1124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 813} ; [ DW_TAG_subprogram ]
!1124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1125 = metadata !{null, metadata !1050, metadata !142, metadata !101}
!1126 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !62, i32 849, metadata !1127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 849} ; [ DW_TAG_subprogram ]
!1127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1128 = metadata !{metadata !138, metadata !1129, metadata !152}
!1129 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1061} ; [ DW_TAG_pointer_type ]
!1130 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !62, i32 857, metadata !1131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 857} ; [ DW_TAG_subprogram ]
!1131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1132 = metadata !{metadata !120, metadata !1129, metadata !156}
!1133 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"halfToRawBits", metadata !"halfToRawBits", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13halfToRawBitsEDh", metadata !62, i32 865, metadata !1134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 865} ; [ DW_TAG_subprogram ]
!1134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1135 = metadata !{metadata !113, metadata !1129, metadata !160}
!1136 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !62, i32 874, metadata !1137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 874} ; [ DW_TAG_subprogram ]
!1137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1138 = metadata !{metadata !152, metadata !1129, metadata !138}
!1139 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !62, i32 883, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 883} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1141 = metadata !{metadata !156, metadata !1129, metadata !120}
!1142 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"rawBitsToHalf", metadata !"rawBitsToHalf", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE13rawBitsToHalfEt", metadata !62, i32 892, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 892} ; [ DW_TAG_subprogram ]
!1143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1144 = metadata !{metadata !160, metadata !1129, metadata !113}
!1145 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 901, metadata !1146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 901} ; [ DW_TAG_subprogram ]
!1146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1147 = metadata !{null, metadata !1050, metadata !152}
!1148 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1014, metadata !1149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1014} ; [ DW_TAG_subprogram ]
!1149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1150 = metadata !{null, metadata !1050, metadata !156}
!1151 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 1018, metadata !1152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1018} ; [ DW_TAG_subprogram ]
!1152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1153 = metadata !{null, metadata !1050, metadata !160}
!1154 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1022, metadata !1155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1022} ; [ DW_TAG_subprogram ]
!1155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1156 = metadata !{metadata !1157, metadata !1050, metadata !1060}
!1157 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1029} ; [ DW_TAG_reference_type ]
!1158 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1029, metadata !1159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1029} ; [ DW_TAG_subprogram ]
!1159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1160 = metadata !{metadata !1157, metadata !1050, metadata !1075}
!1161 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1036, metadata !1162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1036} ; [ DW_TAG_subprogram ]
!1162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1163 = metadata !{null, metadata !1164, metadata !1060}
!1164 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1077} ; [ DW_TAG_pointer_type ]
!1165 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1042, metadata !1166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1042} ; [ DW_TAG_subprogram ]
!1166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1167 = metadata !{null, metadata !1164, metadata !1075}
!1168 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !62, i32 1051, metadata !1169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1051} ; [ DW_TAG_subprogram ]
!1169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1170 = metadata !{metadata !1157, metadata !1050, metadata !138}
!1171 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !62, i32 1057, metadata !1172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1057} ; [ DW_TAG_subprogram ]
!1172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1173 = metadata !{metadata !1029, metadata !138}
!1174 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !62, i32 1066, metadata !1175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1066} ; [ DW_TAG_subprogram ]
!1175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1176 = metadata !{metadata !629, metadata !1129, metadata !80}
!1177 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !62, i32 1101, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1101} ; [ DW_TAG_subprogram ]
!1178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1179 = metadata !{metadata !78, metadata !1129}
!1180 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !62, i32 1104, metadata !1181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1104} ; [ DW_TAG_subprogram ]
!1181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1182 = metadata !{metadata !120, metadata !1129}
!1183 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !62, i32 1107, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1107} ; [ DW_TAG_subprogram ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1185 = metadata !{metadata !132, metadata !1129}
!1186 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !62, i32 1110, metadata !1187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1110} ; [ DW_TAG_subprogram ]
!1187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1188 = metadata !{metadata !137, metadata !1129}
!1189 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !62, i32 1113, metadata !1190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1113} ; [ DW_TAG_subprogram ]
!1190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1191 = metadata !{metadata !152, metadata !1129}
!1192 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !62, i32 1166, metadata !1193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1166} ; [ DW_TAG_subprogram ]
!1193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1194 = metadata !{metadata !156, metadata !1129}
!1195 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_half", metadata !"to_half", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_halfEv", metadata !62, i32 1215, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1215} ; [ DW_TAG_subprogram ]
!1196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1197 = metadata !{metadata !160, metadata !1129}
!1198 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !62, i32 1265, metadata !1190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1265} ; [ DW_TAG_subprogram ]
!1199 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !62, i32 1269, metadata !1193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1269} ; [ DW_TAG_subprogram ]
!1200 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator half", metadata !"operator half", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvDhEv", metadata !62, i32 1272, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1272} ; [ DW_TAG_subprogram ]
!1201 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !62, i32 1275, metadata !1202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1275} ; [ DW_TAG_subprogram ]
!1202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1203 = metadata !{metadata !97, metadata !1129}
!1204 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !62, i32 1279, metadata !1205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1279} ; [ DW_TAG_subprogram ]
!1205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1206 = metadata !{metadata !101, metadata !1129}
!1207 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !62, i32 1283, metadata !1208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1283} ; [ DW_TAG_subprogram ]
!1208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1209 = metadata !{metadata !105, metadata !1129}
!1210 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !62, i32 1287, metadata !1211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1287} ; [ DW_TAG_subprogram ]
!1211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1212 = metadata !{metadata !109, metadata !1129}
!1213 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !62, i32 1291, metadata !1214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1291} ; [ DW_TAG_subprogram ]
!1214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1215 = metadata !{metadata !113, metadata !1129}
!1216 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !62, i32 1296, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1296} ; [ DW_TAG_subprogram ]
!1217 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !62, i32 1300, metadata !1181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1300} ; [ DW_TAG_subprogram ]
!1218 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !62, i32 1305, metadata !1219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1305} ; [ DW_TAG_subprogram ]
!1219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1220 = metadata !{metadata !124, metadata !1129}
!1221 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !62, i32 1309, metadata !1222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1309} ; [ DW_TAG_subprogram ]
!1222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1223 = metadata !{metadata !128, metadata !1129}
!1224 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !62, i32 1322, metadata !1225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1322} ; [ DW_TAG_subprogram ]
!1225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1226 = metadata !{metadata !138, metadata !1129}
!1227 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !62, i32 1326, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1326} ; [ DW_TAG_subprogram ]
!1228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1229 = metadata !{metadata !133, metadata !1129}
!1230 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !62, i32 1330, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1330} ; [ DW_TAG_subprogram ]
!1231 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !62, i32 1334, metadata !1232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1334} ; [ DW_TAG_subprogram ]
!1232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1233 = metadata !{metadata !78, metadata !1050}
!1234 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !62, i32 1435, metadata !1235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1435} ; [ DW_TAG_subprogram ]
!1235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1236 = metadata !{metadata !1157, metadata !1050}
!1237 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !62, i32 1439, metadata !1235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1439} ; [ DW_TAG_subprogram ]
!1238 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !62, i32 1447, metadata !1239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1447} ; [ DW_TAG_subprogram ]
!1239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1240 = metadata !{metadata !1061, metadata !1050, metadata !78}
!1241 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !62, i32 1453, metadata !1239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1453} ; [ DW_TAG_subprogram ]
!1242 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !62, i32 1461, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1461} ; [ DW_TAG_subprogram ]
!1243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1244 = metadata !{metadata !1029, metadata !1050}
!1245 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !62, i32 1465, metadata !1246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1465} ; [ DW_TAG_subprogram ]
!1246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1247 = metadata !{metadata !1248, metadata !1129}
!1248 = metadata !{i32 786434, null, metadata !"ap_fixed_base<34, 10, true, 5, 3, 0>", metadata !62, i32 512, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1249 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !62, i32 1471, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1471} ; [ DW_TAG_subprogram ]
!1250 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !62, i32 1479, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1479} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1252 = metadata !{metadata !80, metadata !1129}
!1253 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !62, i32 1485, metadata !1254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1485} ; [ DW_TAG_subprogram ]
!1254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1255 = metadata !{metadata !1029, metadata !1129}
!1256 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !62, i32 1508, metadata !1257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1508} ; [ DW_TAG_subprogram ]
!1257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1258 = metadata !{metadata !1029, metadata !1129, metadata !78}
!1259 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !62, i32 1567, metadata !1260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1567} ; [ DW_TAG_subprogram ]
!1260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1261 = metadata !{metadata !1029, metadata !1129, metadata !120}
!1262 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !62, i32 1611, metadata !1257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1611} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !62, i32 1669, metadata !1260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1669} ; [ DW_TAG_subprogram ]
!1264 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !62, i32 1721, metadata !1265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1721} ; [ DW_TAG_subprogram ]
!1265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1266 = metadata !{metadata !1157, metadata !1050, metadata !78}
!1267 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !62, i32 1784, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1784} ; [ DW_TAG_subprogram ]
!1268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1269 = metadata !{metadata !1157, metadata !1050, metadata !120}
!1270 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !62, i32 1831, metadata !1265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1831} ; [ DW_TAG_subprogram ]
!1271 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !62, i32 1893, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1893} ; [ DW_TAG_subprogram ]
!1272 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !62, i32 1971, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1971} ; [ DW_TAG_subprogram ]
!1273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1274 = metadata !{metadata !80, metadata !1129, metadata !152}
!1275 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !62, i32 1972, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1972} ; [ DW_TAG_subprogram ]
!1276 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !62, i32 1973, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1973} ; [ DW_TAG_subprogram ]
!1277 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !62, i32 1974, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1974} ; [ DW_TAG_subprogram ]
!1278 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !62, i32 1975, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1975} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !62, i32 1976, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1976} ; [ DW_TAG_subprogram ]
!1280 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1979, metadata !1281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1979} ; [ DW_TAG_subprogram ]
!1281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1282 = metadata !{metadata !1283, metadata !1050, metadata !120}
!1283 = metadata !{i32 786434, null, metadata !"af_bit_ref<33, 9, true, 5, 3, 0>", metadata !62, i32 93, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1284 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1991, metadata !1285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1991} ; [ DW_TAG_subprogram ]
!1285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1286 = metadata !{metadata !80, metadata !1129, metadata !120}
!1287 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 1996, metadata !1281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1996} ; [ DW_TAG_subprogram ]
!1288 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 2009, metadata !1285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2009} ; [ DW_TAG_subprogram ]
!1289 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2021, metadata !1290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2021} ; [ DW_TAG_subprogram ]
!1290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1291 = metadata !{metadata !80, metadata !1129, metadata !78}
!1292 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2027, metadata !1293, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2027} ; [ DW_TAG_subprogram ]
!1293 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1294 = metadata !{metadata !1283, metadata !1050, metadata !78}
!1295 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2042, metadata !1296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2042} ; [ DW_TAG_subprogram ]
!1296 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1297 = metadata !{metadata !1298, metadata !1050, metadata !78, metadata !78}
!1298 = metadata !{i32 786434, null, metadata !"af_range_ref<33, 9, true, 5, 3, 0>", metadata !62, i32 238, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1299 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2048, metadata !1296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2048} ; [ DW_TAG_subprogram ]
!1300 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2054, metadata !1301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2054} ; [ DW_TAG_subprogram ]
!1301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1302 = metadata !{metadata !1298, metadata !1129, metadata !78, metadata !78}
!1303 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2103, metadata !1301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2103} ; [ DW_TAG_subprogram ]
!1304 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2108, metadata !1305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2108} ; [ DW_TAG_subprogram ]
!1305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1306 = metadata !{metadata !1298, metadata !1050}
!1307 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2113, metadata !1308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2113} ; [ DW_TAG_subprogram ]
!1308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1309 = metadata !{metadata !1298, metadata !1129}
!1310 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !62, i32 2117, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2117} ; [ DW_TAG_subprogram ]
!1311 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !62, i32 2121, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2121} ; [ DW_TAG_subprogram ]
!1312 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !62, i32 2127, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2127} ; [ DW_TAG_subprogram ]
!1313 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !62, i32 2131, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2131} ; [ DW_TAG_subprogram ]
!1314 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !62, i32 2135, metadata !1315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2135} ; [ DW_TAG_subprogram ]
!1315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1316 = metadata !{metadata !308, metadata !1129}
!1317 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !62, i32 2139, metadata !1318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2139} ; [ DW_TAG_subprogram ]
!1318 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1319, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1319 = metadata !{metadata !318, metadata !1129}
!1320 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !62, i32 2143, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2143} ; [ DW_TAG_subprogram ]
!1321 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !62, i32 2147, metadata !1322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2147} ; [ DW_TAG_subprogram ]
!1322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1323 = metadata !{metadata !902, metadata !1050, metadata !903}
!1324 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !62, i32 2151, metadata !1325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2151} ; [ DW_TAG_subprogram ]
!1325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1326 = metadata !{metadata !902, metadata !1050, metadata !101}
!1327 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !62, i32 512, metadata !1055, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !74, i32 512} ; [ DW_TAG_subprogram ]
!1328 = metadata !{i32 786478, i32 0, metadata !1029, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 512, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !74, i32 512} ; [ DW_TAG_subprogram ]
!1329 = metadata !{metadata !1330, metadata !1331, metadata !79, metadata !1332, metadata !1333, metadata !1334}
!1330 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !78, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1331 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !78, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1332 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !308, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1333 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !318, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1334 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !78, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1335 = metadata !{i32 786478, i32 0, metadata !276, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !62, i32 1471, metadata !1024, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1471} ; [ DW_TAG_subprogram ]
!1336 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !62, i32 1479, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1479} ; [ DW_TAG_subprogram ]
!1337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1338 = metadata !{metadata !80, metadata !377}
!1339 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !62, i32 1485, metadata !1340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1485} ; [ DW_TAG_subprogram ]
!1340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1341 = metadata !{metadata !276, metadata !377}
!1342 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !62, i32 1508, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1508} ; [ DW_TAG_subprogram ]
!1343 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1344 = metadata !{metadata !276, metadata !377, metadata !78}
!1345 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !62, i32 1567, metadata !1346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1567} ; [ DW_TAG_subprogram ]
!1346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1347 = metadata !{metadata !276, metadata !377, metadata !120}
!1348 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !62, i32 1611, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1611} ; [ DW_TAG_subprogram ]
!1349 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !62, i32 1669, metadata !1346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1669} ; [ DW_TAG_subprogram ]
!1350 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !62, i32 1721, metadata !1351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1721} ; [ DW_TAG_subprogram ]
!1351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1352 = metadata !{metadata !405, metadata !292, metadata !78}
!1353 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !62, i32 1784, metadata !1354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1784} ; [ DW_TAG_subprogram ]
!1354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1355 = metadata !{metadata !405, metadata !292, metadata !120}
!1356 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !62, i32 1831, metadata !1351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1831} ; [ DW_TAG_subprogram ]
!1357 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !62, i32 1893, metadata !1354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1893} ; [ DW_TAG_subprogram ]
!1358 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !62, i32 1971, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1971} ; [ DW_TAG_subprogram ]
!1359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1360 = metadata !{metadata !80, metadata !377, metadata !152}
!1361 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !62, i32 1972, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1972} ; [ DW_TAG_subprogram ]
!1362 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !62, i32 1973, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1973} ; [ DW_TAG_subprogram ]
!1363 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !62, i32 1974, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1974} ; [ DW_TAG_subprogram ]
!1364 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !62, i32 1975, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1975} ; [ DW_TAG_subprogram ]
!1365 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !62, i32 1976, metadata !1359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1976} ; [ DW_TAG_subprogram ]
!1366 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1979, metadata !1367, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1979} ; [ DW_TAG_subprogram ]
!1367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1368 = metadata !{metadata !1369, metadata !292, metadata !120}
!1369 = metadata !{i32 786434, null, metadata !"af_bit_ref<32, 8, true, 5, 3, 0>", metadata !62, i32 93, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1370 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1991, metadata !1371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1991} ; [ DW_TAG_subprogram ]
!1371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1372 = metadata !{metadata !80, metadata !377, metadata !120}
!1373 = metadata !{i32 786478, i32 0, metadata !276, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 1996, metadata !1367, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1996} ; [ DW_TAG_subprogram ]
!1374 = metadata !{i32 786478, i32 0, metadata !276, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 2009, metadata !1371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2009} ; [ DW_TAG_subprogram ]
!1375 = metadata !{i32 786478, i32 0, metadata !276, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2021, metadata !1376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2021} ; [ DW_TAG_subprogram ]
!1376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1377 = metadata !{metadata !80, metadata !377, metadata !78}
!1378 = metadata !{i32 786478, i32 0, metadata !276, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2027, metadata !1379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2027} ; [ DW_TAG_subprogram ]
!1379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1380 = metadata !{metadata !1369, metadata !292, metadata !78}
!1381 = metadata !{i32 786478, i32 0, metadata !276, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2042, metadata !1382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2042} ; [ DW_TAG_subprogram ]
!1382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1383 = metadata !{metadata !1384, metadata !292, metadata !78, metadata !78}
!1384 = metadata !{i32 786434, null, metadata !"af_range_ref<32, 8, true, 5, 3, 0>", metadata !62, i32 238, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1385 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2048, metadata !1382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2048} ; [ DW_TAG_subprogram ]
!1386 = metadata !{i32 786478, i32 0, metadata !276, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2054, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2054} ; [ DW_TAG_subprogram ]
!1387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1388 = metadata !{metadata !1384, metadata !377, metadata !78, metadata !78}
!1389 = metadata !{i32 786478, i32 0, metadata !276, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2103, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2103} ; [ DW_TAG_subprogram ]
!1390 = metadata !{i32 786478, i32 0, metadata !276, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2108, metadata !1391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2108} ; [ DW_TAG_subprogram ]
!1391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1392 = metadata !{metadata !1384, metadata !292}
!1393 = metadata !{i32 786478, i32 0, metadata !276, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2113, metadata !1394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2113} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1395 = metadata !{metadata !1384, metadata !377}
!1396 = metadata !{i32 786478, i32 0, metadata !276, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !62, i32 2117, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2117} ; [ DW_TAG_subprogram ]
!1397 = metadata !{i32 786478, i32 0, metadata !276, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !62, i32 2121, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2121} ; [ DW_TAG_subprogram ]
!1398 = metadata !{i32 786478, i32 0, metadata !276, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !62, i32 2127, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2127} ; [ DW_TAG_subprogram ]
!1399 = metadata !{i32 786478, i32 0, metadata !276, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !62, i32 2131, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2131} ; [ DW_TAG_subprogram ]
!1400 = metadata !{i32 786478, i32 0, metadata !276, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !62, i32 2135, metadata !1401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2135} ; [ DW_TAG_subprogram ]
!1401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1402 = metadata !{metadata !308, metadata !377}
!1403 = metadata !{i32 786478, i32 0, metadata !276, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !62, i32 2139, metadata !1404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2139} ; [ DW_TAG_subprogram ]
!1404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1405 = metadata !{metadata !318, metadata !377}
!1406 = metadata !{i32 786478, i32 0, metadata !276, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !62, i32 2143, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2143} ; [ DW_TAG_subprogram ]
!1407 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !62, i32 2147, metadata !1408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2147} ; [ DW_TAG_subprogram ]
!1408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1409 = metadata !{metadata !902, metadata !292, metadata !903}
!1410 = metadata !{i32 786478, i32 0, metadata !276, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi32ELi8ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !62, i32 2151, metadata !1411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2151} ; [ DW_TAG_subprogram ]
!1411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1412 = metadata !{metadata !902, metadata !292, metadata !101}
!1413 = metadata !{i32 786478, i32 0, metadata !276, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !62, i32 512, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !74, i32 512} ; [ DW_TAG_subprogram ]
!1414 = metadata !{metadata !1415, metadata !1416, metadata !79, metadata !1332, metadata !1333, metadata !1334}
!1415 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !78, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1416 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !78, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1417 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator+=<32, 8, true, 5, 3, 0>", metadata !"operator+=<32, 8, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpLILi32ELi8ELb1ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 1424, metadata !1418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, i32 0, metadata !74, i32 1424} ; [ DW_TAG_subprogram ]
!1418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1419 = metadata !{metadata !183, metadata !84, metadata !302}
!1420 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !62, i32 1435, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1435} ; [ DW_TAG_subprogram ]
!1421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1422 = metadata !{metadata !183, metadata !84}
!1423 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !62, i32 1439, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1439} ; [ DW_TAG_subprogram ]
!1424 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !62, i32 1447, metadata !1425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1447} ; [ DW_TAG_subprogram ]
!1425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1426 = metadata !{metadata !151, metadata !84, metadata !78}
!1427 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !62, i32 1453, metadata !1425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1453} ; [ DW_TAG_subprogram ]
!1428 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !62, i32 1461, metadata !1429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1461} ; [ DW_TAG_subprogram ]
!1429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1430 = metadata !{metadata !61, metadata !84}
!1431 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !62, i32 1465, metadata !1432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1465} ; [ DW_TAG_subprogram ]
!1432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1433 = metadata !{metadata !1434, metadata !150}
!1434 = metadata !{i32 786434, null, metadata !"ap_fixed_base<17, 5, true, 5, 3, 0>", metadata !62, i32 512, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1435 = metadata !{i32 786478, i32 0, metadata !61, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !62, i32 1471, metadata !1429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1471} ; [ DW_TAG_subprogram ]
!1436 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !62, i32 1479, metadata !1437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1479} ; [ DW_TAG_subprogram ]
!1437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1438 = metadata !{metadata !80, metadata !150}
!1439 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !62, i32 1485, metadata !1440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1485} ; [ DW_TAG_subprogram ]
!1440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1441 = metadata !{metadata !61, metadata !150}
!1442 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !62, i32 1508, metadata !1443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1508} ; [ DW_TAG_subprogram ]
!1443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1444 = metadata !{metadata !61, metadata !150, metadata !78}
!1445 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !62, i32 1567, metadata !1446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1567} ; [ DW_TAG_subprogram ]
!1446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1447 = metadata !{metadata !61, metadata !150, metadata !120}
!1448 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !62, i32 1611, metadata !1443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1611} ; [ DW_TAG_subprogram ]
!1449 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !62, i32 1669, metadata !1446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1669} ; [ DW_TAG_subprogram ]
!1450 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !62, i32 1721, metadata !1451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1721} ; [ DW_TAG_subprogram ]
!1451 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1452 = metadata !{metadata !183, metadata !84, metadata !78}
!1453 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !62, i32 1784, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1784} ; [ DW_TAG_subprogram ]
!1454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1455 = metadata !{metadata !183, metadata !84, metadata !120}
!1456 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !62, i32 1831, metadata !1451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1831} ; [ DW_TAG_subprogram ]
!1457 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !62, i32 1893, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1893} ; [ DW_TAG_subprogram ]
!1458 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !62, i32 1971, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1971} ; [ DW_TAG_subprogram ]
!1459 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1460, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1460 = metadata !{metadata !80, metadata !150, metadata !152}
!1461 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !62, i32 1972, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1972} ; [ DW_TAG_subprogram ]
!1462 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !62, i32 1973, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1973} ; [ DW_TAG_subprogram ]
!1463 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !62, i32 1974, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1974} ; [ DW_TAG_subprogram ]
!1464 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !62, i32 1975, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1975} ; [ DW_TAG_subprogram ]
!1465 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !62, i32 1976, metadata !1459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1976} ; [ DW_TAG_subprogram ]
!1466 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1979, metadata !1467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1979} ; [ DW_TAG_subprogram ]
!1467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1468 = metadata !{metadata !1469, metadata !84, metadata !120}
!1469 = metadata !{i32 786434, null, metadata !"af_bit_ref<16, 4, true, 5, 3, 0>", metadata !62, i32 93, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1470 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1991, metadata !1471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1991} ; [ DW_TAG_subprogram ]
!1471 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1472, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1472 = metadata !{metadata !80, metadata !150, metadata !120}
!1473 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 1996, metadata !1467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 1996} ; [ DW_TAG_subprogram ]
!1474 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 2009, metadata !1471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2009} ; [ DW_TAG_subprogram ]
!1475 = metadata !{i32 786478, i32 0, metadata !61, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2021, metadata !1476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2021} ; [ DW_TAG_subprogram ]
!1476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1477 = metadata !{metadata !80, metadata !150, metadata !78}
!1478 = metadata !{i32 786478, i32 0, metadata !61, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 2027, metadata !1479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2027} ; [ DW_TAG_subprogram ]
!1479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1480 = metadata !{metadata !1469, metadata !84, metadata !78}
!1481 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2042, metadata !1482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2042} ; [ DW_TAG_subprogram ]
!1482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1483 = metadata !{metadata !1484, metadata !84, metadata !78, metadata !78}
!1484 = metadata !{i32 786434, null, metadata !"af_range_ref<16, 4, true, 5, 3, 0>", metadata !62, i32 238, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1485 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2048, metadata !1482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2048} ; [ DW_TAG_subprogram ]
!1486 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 2054, metadata !1487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2054} ; [ DW_TAG_subprogram ]
!1487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1488 = metadata !{metadata !1484, metadata !150, metadata !78, metadata !78}
!1489 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2103, metadata !1487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2103} ; [ DW_TAG_subprogram ]
!1490 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2108, metadata !1491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2108} ; [ DW_TAG_subprogram ]
!1491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1492 = metadata !{metadata !1484, metadata !84}
!1493 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2113, metadata !1494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2113} ; [ DW_TAG_subprogram ]
!1494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1495 = metadata !{metadata !1484, metadata !150}
!1496 = metadata !{i32 786478, i32 0, metadata !61, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !62, i32 2117, metadata !1437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2117} ; [ DW_TAG_subprogram ]
!1497 = metadata !{i32 786478, i32 0, metadata !61, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !62, i32 2121, metadata !1437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2121} ; [ DW_TAG_subprogram ]
!1498 = metadata !{i32 786478, i32 0, metadata !61, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !62, i32 2127, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2127} ; [ DW_TAG_subprogram ]
!1499 = metadata !{i32 786478, i32 0, metadata !61, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !62, i32 2131, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2131} ; [ DW_TAG_subprogram ]
!1500 = metadata !{i32 786478, i32 0, metadata !61, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !62, i32 2135, metadata !1501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2135} ; [ DW_TAG_subprogram ]
!1501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1502 = metadata !{metadata !308, metadata !150}
!1503 = metadata !{i32 786478, i32 0, metadata !61, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !62, i32 2139, metadata !1504, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2139} ; [ DW_TAG_subprogram ]
!1504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1505 = metadata !{metadata !318, metadata !150}
!1506 = metadata !{i32 786478, i32 0, metadata !61, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !62, i32 2143, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2143} ; [ DW_TAG_subprogram ]
!1507 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !62, i32 2147, metadata !1508, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2147} ; [ DW_TAG_subprogram ]
!1508 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1509, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1509 = metadata !{metadata !902, metadata !84, metadata !903}
!1510 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !62, i32 2151, metadata !1511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 2151} ; [ DW_TAG_subprogram ]
!1511 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1512 = metadata !{metadata !902, metadata !84, metadata !101}
!1513 = metadata !{metadata !1514, metadata !1515, metadata !79, metadata !1332, metadata !1333, metadata !1334}
!1514 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !78, i64 16, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1515 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !78, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1516 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 293, metadata !1517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 293} ; [ DW_TAG_subprogram ]
!1517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1518 = metadata !{null, metadata !1519}
!1519 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !57} ; [ DW_TAG_pointer_type ]
!1520 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 365, metadata !1521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 365} ; [ DW_TAG_subprogram ]
!1521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1522 = metadata !{null, metadata !1519, metadata !80}
!1523 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 366, metadata !1524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 366} ; [ DW_TAG_subprogram ]
!1524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1525 = metadata !{null, metadata !1519, metadata !101}
!1526 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 367, metadata !1527, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 367} ; [ DW_TAG_subprogram ]
!1527 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1528, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1528 = metadata !{null, metadata !1519, metadata !105}
!1529 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 368, metadata !1530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 368} ; [ DW_TAG_subprogram ]
!1530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1531 = metadata !{null, metadata !1519, metadata !109}
!1532 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 369, metadata !1533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 369} ; [ DW_TAG_subprogram ]
!1533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1534 = metadata !{null, metadata !1519, metadata !113}
!1535 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 370, metadata !1536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 370} ; [ DW_TAG_subprogram ]
!1536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1537 = metadata !{null, metadata !1519, metadata !78}
!1538 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 371, metadata !1539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 371} ; [ DW_TAG_subprogram ]
!1539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1540 = metadata !{null, metadata !1519, metadata !120}
!1541 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 372, metadata !1542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 372} ; [ DW_TAG_subprogram ]
!1542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1543 = metadata !{null, metadata !1519, metadata !124}
!1544 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 373, metadata !1545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 373} ; [ DW_TAG_subprogram ]
!1545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1546 = metadata !{null, metadata !1519, metadata !128}
!1547 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 374, metadata !1548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 374} ; [ DW_TAG_subprogram ]
!1548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1549 = metadata !{null, metadata !1519, metadata !138}
!1550 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 375, metadata !1551, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 375} ; [ DW_TAG_subprogram ]
!1551 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1552 = metadata !{null, metadata !1519, metadata !133}
!1553 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 376, metadata !1554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 376} ; [ DW_TAG_subprogram ]
!1554 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1555 = metadata !{null, metadata !1519, metadata !160}
!1556 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 377, metadata !1557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 377} ; [ DW_TAG_subprogram ]
!1557 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1558 = metadata !{null, metadata !1519, metadata !156}
!1559 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 378, metadata !1560, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 378} ; [ DW_TAG_subprogram ]
!1560 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1561, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1561 = metadata !{null, metadata !1519, metadata !152}
!1562 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 380, metadata !1563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 380} ; [ DW_TAG_subprogram ]
!1563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1564 = metadata !{null, metadata !1519, metadata !142}
!1565 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 381, metadata !1566, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 381} ; [ DW_TAG_subprogram ]
!1566 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1567 = metadata !{null, metadata !1519, metadata !142, metadata !101}
!1568 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !58, i32 384, metadata !1569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 384} ; [ DW_TAG_subprogram ]
!1569 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1570, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1570 = metadata !{metadata !1571, metadata !1519, metadata !1572}
!1571 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_reference_type ]
!1572 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1573} ; [ DW_TAG_reference_type ]
!1573 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_const_type ]
!1574 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !58, i32 390, metadata !1575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 390} ; [ DW_TAG_subprogram ]
!1575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1576 = metadata !{metadata !1571, metadata !1519, metadata !1577}
!1577 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1578} ; [ DW_TAG_reference_type ]
!1578 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1579} ; [ DW_TAG_const_type ]
!1579 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_volatile_type ]
!1580 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !58, i32 395, metadata !1581, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 395} ; [ DW_TAG_subprogram ]
!1581 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1582, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1582 = metadata !{null, metadata !1583, metadata !1572}
!1583 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1579} ; [ DW_TAG_pointer_type ]
!1584 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi16ELi4EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !58, i32 400, metadata !1585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !74, i32 400} ; [ DW_TAG_subprogram ]
!1585 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1586, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1586 = metadata !{null, metadata !1583, metadata !1577}
!1587 = metadata !{metadata !1514, metadata !1515, metadata !1332, metadata !1333, metadata !1334}
!1588 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 12544, i64 16, i32 0, i32 0, metadata !1589, metadata !1595, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1589 = metadata !{i32 786438, null, metadata !"ap_fixed<16, 4, 5, 3, 0>", metadata !58, i32 290, i64 16, i64 16, i32 0, i32 0, null, metadata !1590, i32 0, null, metadata !1587} ; [ DW_TAG_class_field_type ]
!1590 = metadata !{metadata !1591}
!1591 = metadata !{i32 786438, null, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !62, i32 512, i64 16, i64 16, i32 0, i32 0, null, metadata !1592, i32 0, null, metadata !1513} ; [ DW_TAG_class_field_type ]
!1592 = metadata !{metadata !1593}
!1593 = metadata !{i32 786438, null, metadata !"ssdm_int<16 + 1024 * 0, true>", metadata !66, i32 18, i64 16, i64 16, i32 0, i32 0, null, metadata !1594, i32 0, null, metadata !76} ; [ DW_TAG_class_field_type ]
!1594 = metadata !{metadata !68}
!1595 = metadata !{metadata !1596}
!1596 = metadata !{i32 786465, i64 0, i64 783}    ; [ DW_TAG_subrange_type ]
!1597 = metadata !{i32 9, i32 24, metadata !51, null}
!1598 = metadata !{i32 790531, metadata !1599, metadata !"out.V", null, i32 9, metadata !1588, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1599 = metadata !{i32 786689, metadata !51, metadata !"out", metadata !52, i32 33554441, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1600 = metadata !{i32 9, i32 41, metadata !51, null}
!1601 = metadata !{i32 790531, metadata !1602, metadata !"kernel.V", null, i32 9, metadata !1603, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1602 = metadata !{i32 786689, metadata !51, metadata !"kernel", metadata !52, i32 50331657, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1603 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !1589, metadata !1604, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1604 = metadata !{metadata !1605}
!1605 = metadata !{i32 786465, i64 0, i64 8}      ; [ DW_TAG_subrange_type ]
!1606 = metadata !{i32 9, i32 59, metadata !51, null}
!1607 = metadata !{i32 14, i32 15, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !1609, i32 14, i32 2, metadata !52, i32 1} ; [ DW_TAG_lexical_block ]
!1609 = metadata !{i32 786443, metadata !51, i32 10, i32 1, metadata !52, i32 0} ; [ DW_TAG_lexical_block ]
!1610 = metadata !{i32 14, i32 25, metadata !1608, null}
!1611 = metadata !{i32 786688, metadata !1608, metadata !"i", metadata !52, i32 14, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1612 = metadata !{i32 32, i32 22, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !1614, i32 23, i32 14, metadata !52, i32 8} ; [ DW_TAG_lexical_block ]
!1614 = metadata !{i32 786443, metadata !1615, i32 22, i32 14, metadata !52, i32 7} ; [ DW_TAG_lexical_block ]
!1615 = metadata !{i32 786443, metadata !1616, i32 19, i32 10, metadata !52, i32 6} ; [ DW_TAG_lexical_block ]
!1616 = metadata !{i32 786443, metadata !1617, i32 18, i32 10, metadata !52, i32 5} ; [ DW_TAG_lexical_block ]
!1617 = metadata !{i32 786443, metadata !1618, i32 17, i32 6, metadata !52, i32 4} ; [ DW_TAG_lexical_block ]
!1618 = metadata !{i32 786443, metadata !1619, i32 16, i32 6, metadata !52, i32 3} ; [ DW_TAG_lexical_block ]
!1619 = metadata !{i32 786443, metadata !1608, i32 15, i32 2, metadata !52, i32 2} ; [ DW_TAG_lexical_block ]
!1620 = metadata !{i32 16, i32 19, metadata !1618, null}
!1621 = metadata !{i32 16, i32 29, metadata !1618, null}
!1622 = metadata !{i32 786688, metadata !1618, metadata !"j", metadata !52, i32 16, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1623 = metadata !{i32 1025, i32 9, metadata !1624, metadata !1626}
!1624 = metadata !{i32 786443, metadata !1625, i32 1024, i32 5, metadata !62, i32 23} ; [ DW_TAG_lexical_block ]
!1625 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1022, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !180, metadata !74, i32 1024} ; [ DW_TAG_subprogram ]
!1626 = metadata !{i32 1424, i32 243, metadata !1627, metadata !1629}
!1627 = metadata !{i32 786443, metadata !1628, i32 1424, i32 231, metadata !62, i32 9} ; [ DW_TAG_lexical_block ]
!1628 = metadata !{i32 786478, i32 0, null, metadata !"operator+=<32, 8, true, 5, 3, 0>", metadata !"operator+=<32, 8, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpLILi32ELi8ELb1ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 1424, metadata !1418, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, metadata !1417, metadata !74, i32 1424} ; [ DW_TAG_subprogram ]
!1629 = metadata !{i32 32, i32 38, metadata !1613, null}
!1630 = metadata !{i32 18, i32 23, metadata !1616, null}
!1631 = metadata !{i32 18, i32 32, metadata !1616, null}
!1632 = metadata !{i32 786688, metadata !1616, metadata !"m", metadata !52, i32 18, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1633 = metadata !{i32 20, i32 34, metadata !1615, null}
!1634 = metadata !{i32 786688, metadata !1615, metadata !"mm", metadata !52, i32 20, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1635 = metadata !{i32 27, i32 47, metadata !1613, null}
!1636 = metadata !{i32 31, i32 18, metadata !1613, null}
!1637 = metadata !{i32 22, i32 27, metadata !1614, null}
!1638 = metadata !{i32 22, i32 36, metadata !1614, null}
!1639 = metadata !{i32 24, i32 38, metadata !1613, null}
!1640 = metadata !{i32 786688, metadata !1613, metadata !"nn", metadata !52, i32 24, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1641 = metadata !{i32 786688, metadata !1613, metadata !"ii", metadata !52, i32 27, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1642 = metadata !{i32 28, i32 47, metadata !1613, null}
!1643 = metadata !{i32 786688, metadata !1613, metadata !"jj", metadata !52, i32 28, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1644 = metadata !{i32 1370, i32 9, metadata !1645, metadata !1629}
!1645 = metadata !{i32 786443, metadata !1646, i32 1367, i32 92, metadata !62, i32 24} ; [ DW_TAG_lexical_block ]
!1646 = metadata !{i32 786478, i32 0, null, metadata !"operator*<16, 4, true, 5, 3, 0>", metadata !"operator*<16, 4, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmlILi16ELi4ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4multERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 1367, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, metadata !266, metadata !74, i32 1367} ; [ DW_TAG_subprogram ]
!1647 = metadata !{i32 1406, i32 0, metadata !1648, metadata !1626}
!1648 = metadata !{i32 786443, metadata !1649, i32 1406, i32 265, metadata !62, i32 10} ; [ DW_TAG_lexical_block ]
!1649 = metadata !{i32 786478, i32 0, null, metadata !"operator+<32, 8, true, 5, 3, 0>", metadata !"operator+<32, 8, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi32ELi8ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 1406, metadata !1650, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !304, null, metadata !74, i32 1406} ; [ DW_TAG_subprogram ]
!1650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1651 = metadata !{metadata !1652, metadata !150, metadata !302}
!1652 = metadata !{i32 786454, metadata !1653, metadata !"plus", metadata !62, i32 644, i64 0, i64 0, i64 0, i32 0, metadata !1029} ; [ DW_TAG_typedef ]
!1653 = metadata !{i32 786434, metadata !61, metadata !"RType<32, 8, true>", metadata !62, i32 618, i64 8, i64 8, i32 0, i32 0, null, metadata !271, i32 0, null, metadata !1654} ; [ DW_TAG_class_type ]
!1654 = metadata !{metadata !305, metadata !306, metadata !275}
!1655 = metadata !{i32 1372, i32 9, metadata !1645, metadata !1629}
!1656 = metadata !{i32 675, i32 0, metadata !1657, metadata !1660}
!1657 = metadata !{i32 786443, metadata !1658, i32 675, i32 25, metadata !62, i32 15} ; [ DW_TAG_lexical_block ]
!1658 = metadata !{i32 786443, metadata !1659, i32 663, i32 115, metadata !62, i32 14} ; [ DW_TAG_lexical_block ]
!1659 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi16ELi4ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 663, metadata !1069, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, metadata !1068, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1660 = metadata !{i32 773, i32 5, metadata !1661, metadata !1647}
!1661 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"ap_fixed_base<16, 4, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi16ELi4ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 663, metadata !1069, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1071, metadata !1068, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1662 = metadata !{i32 786688, metadata !1657, metadata !"__Val2__", metadata !62, i32 675, metadata !69, i32 0, metadata !1660} ; [ DW_TAG_auto_variable ]
!1663 = metadata !{i32 703, i32 17, metadata !1664, metadata !1660}
!1664 = metadata !{i32 786443, metadata !1658, i32 700, i32 14, metadata !62, i32 16} ; [ DW_TAG_lexical_block ]
!1665 = metadata !{i32 786688, metadata !1666, metadata !"__Val2__", metadata !62, i32 675, metadata !1035, i32 0, metadata !1671} ; [ DW_TAG_auto_variable ]
!1666 = metadata !{i32 786443, metadata !1667, i32 675, i32 25, metadata !62, i32 19} ; [ DW_TAG_lexical_block ]
!1667 = metadata !{i32 786443, metadata !1668, i32 663, i32 115, metadata !62, i32 18} ; [ DW_TAG_lexical_block ]
!1668 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi33ELi9ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 663, metadata !1669, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1062, null, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1669 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1670, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1670 = metadata !{null, metadata !84, metadata !1060}
!1671 = metadata !{i32 773, i32 5, metadata !1672, metadata !1626}
!1672 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 9, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi16ELi4ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi33ELi9ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !62, i32 663, metadata !1669, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1062, null, metadata !74, i32 663} ; [ DW_TAG_subprogram ]
!1673 = metadata !{i32 675, i32 0, metadata !1666, metadata !1671}
!1674 = metadata !{i32 682, i32 17, metadata !1675, metadata !1671}
!1675 = metadata !{i32 786443, metadata !1667, i32 680, i32 30, metadata !62, i32 20} ; [ DW_TAG_lexical_block ]
!1676 = metadata !{i32 786688, metadata !1614, metadata !"n", metadata !52, i32 22, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1677 = metadata !{i32 37, i32 1, metadata !1609, null}
