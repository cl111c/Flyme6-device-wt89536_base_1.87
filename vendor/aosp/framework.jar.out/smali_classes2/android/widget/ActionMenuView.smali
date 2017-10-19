.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"

.field static final TCT_MIN_CELL_SIZE:I = 0x46


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private tctMaxPadding:I

.field private tctPadding:I

.field private tctPaddingBottom:I

.field private tctPaddingTop:I

.field private useTctStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 92
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 93
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 94
    iput v4, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "b":Landroid/content/res/TypedArray;
    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    iget-boolean v2, p0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v2, :cond_0

    .line 100
    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 101
    const/high16 v2, 0x41e00000    # 28.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->tctPadding:I

    .line 103
    mul-float v2, v1, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->tctPaddingTop:I

    .line 104
    mul-float v2, v1, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->tctPaddingBottom:I

    .line 106
    iput v4, p0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 507
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 509
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 510
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 512
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 514
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 516
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 517
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 518
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 520
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 523
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 524
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 525
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 528
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 529
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 531
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 532
    mul-int v10, v0, p1

    .line 533
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 535
    return v0

    .line 512
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 514
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 528
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private measureChildForCells_TCT(Landroid/view/View;IIII)I
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellSize"    # I
    .param p3, "cellsRemaining"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "parentHeightPadding"    # I

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 543
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p5

    .line 545
    .local v2, "childHeightSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 546
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 548
    .local v3, "childHeightSpec":I
    instance-of v11, p1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_2

    move-object v11, p1

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 550
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 552
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 553
    .local v0, "cellsUsed":I
    if-lez p3, :cond_1

    .line 554
    mul-int v11, p2, p3

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 556
    .local v4, "childWidthSpec":I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 559
    .local v9, "measuredWidth":I
    div-int v0, v9, p2

    .line 560
    rem-int v11, v9, p2

    if-eqz v11, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 561
    :cond_0
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    .line 564
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_1
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_4

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    .line 565
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 567
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 568
    mul-int v10, v0, p2

    .line 569
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p1, v11, v3}, Landroid/view/View;->measure(II)V

    .line 571
    return v0

    .line 548
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 550
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 564
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 199
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 200
    .local v21, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v41

    .line 201
    .local v41, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 205
    .local v22, "heightSize":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v42

    add-int v4, v4, v42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctPadding:I

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    add-int v40, v4, v42

    .line 211
    .local v40, "widthPadding":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v42

    add-int v9, v4, v42

    .line 213
    .local v9, "heightPadding":I
    const/4 v4, -0x2

    move/from16 v0, p2

    invoke-static {v0, v9, v4}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v8

    .line 216
    .local v8, "itemHeightSpec":I
    sub-int v41, v41, v40

    .line 219
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v10, v41, v4

    .line 220
    .local v10, "cellCount":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    rem-int v11, v41, v4

    .line 222
    .local v11, "cellSizeRemaining":I
    if-nez v10, :cond_1

    .line 224
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 488
    :goto_1
    return-void

    .line 208
    .end local v8    # "itemHeightSpec":I
    .end local v9    # "heightPadding":I
    .end local v10    # "cellCount":I
    .end local v11    # "cellSizeRemaining":I
    .end local v40    # "widthPadding":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v42

    add-int v40, v4, v42

    .restart local v40    # "widthPadding":I
    goto :goto_0

    .line 228
    .restart local v8    # "itemHeightSpec":I
    .restart local v9    # "heightPadding":I
    .restart local v10    # "cellCount":I
    .restart local v11    # "cellSizeRemaining":I
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v42, v11, v10

    add-int v6, v4, v42

    .line 230
    .local v6, "cellSize":I
    move v12, v10

    .line 231
    .local v12, "cellsRemaining":I
    const/16 v27, 0x0

    .line 232
    .local v27, "maxChildHeight":I
    const/16 v26, 0x0

    .line 233
    .local v26, "maxCellsUsed":I
    const/16 v17, 0x0

    .line 234
    .local v17, "expandableItemCount":I
    const/16 v38, 0x0

    .line 235
    .local v38, "visibleItemCount":I
    const/16 v19, 0x0

    .line 238
    .local v19, "hasOverflow":Z
    const-wide/16 v36, 0x0

    .line 240
    .local v36, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v15

    .line 241
    .local v15, "childCount":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v15, :cond_d

    .line 242
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 243
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v42, 0x8

    move/from16 v0, v42

    if-ne v4, v0, :cond_3

    .line 241
    :cond_2
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 245
    :cond_3
    instance-of v0, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v24, v0

    .line 246
    .local v24, "isGeneratedItem":Z
    add-int/lit8 v38, v38, 0x1

    .line 248
    if-eqz v24, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctPaddingTop:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctPaddingBottom:I

    move/from16 v44, v0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 261
    :cond_4
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 262
    .local v25, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 263
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 264
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 265
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 266
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 267
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 268
    if-eqz v24, :cond_9

    move-object v4, v5

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 271
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_a

    const/4 v7, 0x1

    .line 275
    .local v7, "cellsAvailable":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_b

    move-object/from16 v4, p0

    .line 276
    invoke-direct/range {v4 .. v9}, Landroid/widget/ActionMenuView;->measureChildForCells_TCT(Landroid/view/View;IIII)I

    move-result v13

    .line 284
    .local v13, "cellsUsed":I
    :goto_7
    move/from16 v0, v26

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 285
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v4, :cond_5

    add-int/lit8 v17, v17, 0x1

    .line 286
    :cond_5
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_6

    const/16 v19, 0x1

    .line 288
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-nez v4, :cond_c

    .line 289
    sub-int/2addr v12, v13

    .line 294
    :cond_7
    :goto_8
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 295
    const/4 v4, 0x1

    if-ne v13, v4, :cond_2

    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v42, v0

    or-long v36, v36, v42

    goto/16 :goto_3

    .line 256
    .end local v7    # "cellsAvailable":I
    .end local v13    # "cellsUsed":I
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v43, v0

    const/16 v44, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 268
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    move v7, v12

    .line 271
    goto :goto_6

    .line 279
    .restart local v7    # "cellsAvailable":I
    :cond_b
    invoke-static {v5, v6, v7, v8, v9}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v13

    .restart local v13    # "cellsUsed":I
    goto :goto_7

    .line 290
    :cond_c
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v4, :cond_7

    .line 291
    sub-int/2addr v12, v13

    goto :goto_8

    .line 300
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "cellsAvailable":I
    .end local v13    # "cellsUsed":I
    .end local v24    # "isGeneratedItem":Z
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_d
    if-eqz v19, :cond_f

    const/4 v4, 0x2

    move/from16 v0, v38

    if-ne v0, v4, :cond_f

    const/4 v14, 0x1

    .line 305
    .local v14, "centerSingleExpandedItem":Z
    :goto_9
    const/16 v34, 0x0

    .line 306
    .local v34, "needsExpansion":Z
    :goto_a
    if-lez v17, :cond_13

    if-lez v12, :cond_13

    .line 307
    const v30, 0x7fffffff

    .line 308
    .local v30, "minCells":I
    const-wide/16 v32, 0x0

    .line 309
    .local v32, "minCellsAt":J
    const/16 v31, 0x0

    .line 310
    .local v31, "minCellsItemCount":I
    const/16 v23, 0x0

    :goto_b
    move/from16 v0, v23

    if-ge v0, v15, :cond_12

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 312
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 315
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v4, :cond_10

    .line 310
    :cond_e
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 300
    .end local v5    # "child":Landroid/view/View;
    .end local v14    # "centerSingleExpandedItem":Z
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v30    # "minCells":I
    .end local v31    # "minCellsItemCount":I
    .end local v32    # "minCellsAt":J
    .end local v34    # "needsExpansion":Z
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 318
    .restart local v5    # "child":Landroid/view/View;
    .restart local v14    # "centerSingleExpandedItem":Z
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v30    # "minCells":I
    .restart local v31    # "minCellsItemCount":I
    .restart local v32    # "minCellsAt":J
    .restart local v34    # "needsExpansion":Z
    :cond_10
    move-object/from16 v0, v25

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v30

    if-ge v4, v0, :cond_11

    .line 319
    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v30, v0

    .line 320
    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v32, v0

    .line 321
    const/16 v31, 0x1

    goto :goto_c

    .line 322
    :cond_11
    move-object/from16 v0, v25

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v30

    if-ne v4, v0, :cond_e

    .line 323
    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v42, v0

    or-long v32, v32, v42

    .line 324
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    .line 329
    .end local v5    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_12
    or-long v36, v36, v32

    .line 331
    move/from16 v0, v31

    if-le v0, v12, :cond_18

    .line 361
    .end local v30    # "minCells":I
    .end local v31    # "minCellsItemCount":I
    .end local v32    # "minCellsAt":J
    :cond_13
    if-nez v19, :cond_1d

    const/4 v4, 0x1

    move/from16 v0, v38

    if-ne v0, v4, :cond_1d

    const/16 v35, 0x1

    .line 362
    .local v35, "singleItem":Z
    :goto_d
    if-lez v12, :cond_25

    const-wide/16 v42, 0x0

    cmp-long v4, v36, v42

    if-eqz v4, :cond_25

    add-int/lit8 v4, v38, -0x1

    if-lt v12, v4, :cond_14

    if-nez v35, :cond_14

    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_25

    .line 364
    :cond_14
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 366
    .local v16, "expandCount":F
    if-nez v35, :cond_16

    .line 368
    const-wide/16 v42, 0x1

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v4, v42, v44

    if-eqz v4, :cond_15

    .line 369
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 370
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v4, :cond_15

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v16, v16, v4

    .line 372
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_15
    const/4 v4, 0x1

    add-int/lit8 v42, v15, -0x1

    shl-int v4, v4, v42

    int-to-long v0, v4

    move-wide/from16 v42, v0

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v4, v42, v44

    if-eqz v4, :cond_16

    .line 373
    add-int/lit8 v4, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 374
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v4, :cond_16

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v16, v16, v4

    .line 378
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_16
    const/4 v4, 0x0

    cmpl-float v4, v16, v4

    if-lez v4, :cond_1e

    mul-int v4, v12, v6

    int-to-float v4, v4

    div-float v4, v4, v16

    float-to-int v0, v4

    move/from16 v18, v0

    .line 381
    .local v18, "extraPixels":I
    :goto_e
    const/16 v23, 0x0

    :goto_f
    move/from16 v0, v23

    if-ge v0, v15, :cond_24

    .line 382
    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v42, v0

    and-long v42, v42, v36

    const-wide/16 v44, 0x0

    cmp-long v4, v42, v44

    if-nez v4, :cond_1f

    .line 381
    :cond_17
    :goto_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_f

    .line 334
    .end local v16    # "expandCount":F
    .end local v18    # "extraPixels":I
    .end local v35    # "singleItem":Z
    .restart local v30    # "minCells":I
    .restart local v31    # "minCellsItemCount":I
    .restart local v32    # "minCellsAt":J
    :cond_18
    add-int/lit8 v30, v30, 0x1

    .line 336
    const/16 v23, 0x0

    :goto_11
    move/from16 v0, v23

    if-ge v0, v15, :cond_1c

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 338
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 339
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v42, v0

    and-long v42, v42, v32

    const-wide/16 v44, 0x0

    cmp-long v4, v42, v44

    if-nez v4, :cond_1a

    .line 341
    move-object/from16 v0, v25

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v30

    if-ne v4, v0, :cond_19

    const/4 v4, 0x1

    shl-int v4, v4, v23

    int-to-long v0, v4

    move-wide/from16 v42, v0

    or-long v36, v36, v42

    .line 336
    :cond_19
    :goto_12
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 346
    :cond_1a
    if-eqz v14, :cond_1b

    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    if-ne v12, v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-nez v4, :cond_1b

    .line 348
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v4, v6

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v43, v0

    const/16 v44, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 350
    :cond_1b
    move-object/from16 v0, v25

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 351
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 352
    add-int/lit8 v12, v12, -0x1

    goto :goto_12

    .line 355
    .end local v5    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1c
    const/16 v34, 0x1

    .line 356
    goto/16 :goto_a

    .line 361
    .end local v30    # "minCells":I
    .end local v31    # "minCellsItemCount":I
    .end local v32    # "minCellsAt":J
    :cond_1d
    const/16 v35, 0x0

    goto/16 :goto_d

    .line 378
    .restart local v16    # "expandCount":F
    .restart local v35    # "singleItem":Z
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 384
    .restart local v18    # "extraPixels":I
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 385
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 386
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v4, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_21

    .line 388
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 389
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 390
    if-nez v23, :cond_20

    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v4, :cond_20

    .line 393
    move/from16 v0, v18

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 395
    :cond_20
    const/16 v34, 0x1

    goto/16 :goto_10

    .line 396
    :cond_21
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_22

    .line 397
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 398
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 399
    move/from16 v0, v18

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 400
    const/16 v34, 0x1

    goto/16 :goto_10

    .line 405
    :cond_22
    if-eqz v23, :cond_23

    .line 406
    div-int/lit8 v4, v18, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 408
    :cond_23
    add-int/lit8 v4, v15, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_17

    .line 409
    div-int/lit8 v4, v18, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_10

    .line 414
    .end local v5    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_24
    const/4 v12, 0x0

    .line 418
    .end local v16    # "expandCount":F
    .end local v18    # "extraPixels":I
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    .line 420
    if-eqz v34, :cond_2c

    .line 422
    const/16 v28, 0x0

    .line 423
    .local v28, "menuCount":I
    const/16 v29, 0x0

    .line 424
    .local v29, "menuWidth":I
    const/16 v20, 0x0

    .line 425
    .local v20, "hastctmenu":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_27

    .line 426
    const/4 v4, 0x1

    if-le v15, v4, :cond_26

    .line 427
    if-eqz v19, :cond_28

    .line 428
    add-int/lit8 v28, v15, -0x1

    .line 433
    :cond_26
    :goto_13
    const/4 v4, 0x1

    move/from16 v0, v28

    if-le v0, v4, :cond_29

    .line 434
    const/16 v20, 0x1

    .line 435
    add-int v4, v41, v40

    add-int/lit8 v42, v28, 0x1

    div-int v29, v4, v42

    .line 436
    div-int/lit8 v4, v29, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    .line 443
    :cond_27
    :goto_14
    const/16 v23, 0x0

    :goto_15
    move/from16 v0, v23

    if-ge v0, v15, :cond_2c

    .line 444
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 445
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/ActionMenuView$LayoutParams;

    .line 447
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v4, :cond_2a

    .line 443
    :goto_16
    add-int/lit8 v23, v23, 0x1

    goto :goto_15

    .line 430
    .end local v5    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_28
    move/from16 v28, v15

    goto :goto_13

    .line 438
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    goto :goto_14

    .line 451
    .restart local v5    # "child":Landroid/view/View;
    .restart local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_2b

    if-eqz v20, :cond_2b

    .line 452
    move/from16 v39, v29

    .line 459
    .local v39, "width":I
    :goto_17
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v39

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v4, v8}, Landroid/view/View;->measure(II)V

    goto :goto_16

    .line 454
    .end local v39    # "width":I
    :cond_2b
    move-object/from16 v0, v25

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v4, v6

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v42, v0

    add-int v39, v4, v42

    .restart local v39    # "width":I
    goto :goto_17

    .line 465
    .end local v5    # "child":Landroid/view/View;
    .end local v20    # "hastctmenu":Z
    .end local v25    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v28    # "menuCount":I
    .end local v29    # "menuWidth":I
    .end local v39    # "width":I
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_2e

    .line 466
    const/16 v23, 0x0

    :goto_18
    move/from16 v0, v23

    if-ge v0, v15, :cond_2e

    .line 468
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 469
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v4, v4, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_2d

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v42, 0x1050135

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v42, 0x40000000    # 2.0f

    move/from16 v0, v42

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v4, v8}, Landroid/view/View;->measure(II)V

    .line 466
    :cond_2d
    add-int/lit8 v23, v23, 0x1

    goto :goto_18

    .line 475
    .end local v5    # "child":Landroid/view/View;
    :cond_2e
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v0, v4, :cond_2f

    .line 476
    move/from16 v22, v27

    .line 480
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-eqz v4, :cond_30

    .line 482
    add-int v4, v41, v40

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    .line 484
    :cond_30
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 765
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 871
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 738
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 740
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 741
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 746
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 751
    if-eqz p1, :cond_2

    .line 752
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 755
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 756
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 760
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 752
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 760
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 771
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 772
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 799
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 801
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 802
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 803
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 804
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 805
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 807
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 808
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 811
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 805
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 723
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 878
    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return v2

    .line 882
    :cond_1
    iget-boolean v3, p0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    if-nez v3, :cond_0

    .line 886
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 887
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 888
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 889
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 890
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 892
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 893
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 787
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 788
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 777
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 154
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 156
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 159
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 701
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 702
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 703
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 579
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 584
    .local v6, "childCount":I
    sub-int v31, p5, p3

    div-int/lit8 v15, v31, 0x2

    .line 585
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 586
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 587
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 588
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 589
    .local v16, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 591
    .local v30, "widthRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    .line 596
    :cond_2
    const/4 v8, 0x0

    .line 597
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v11

    .line 598
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_9

    .line 599
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 600
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 598
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 604
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    .line 605
    .local v19, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 606
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 607
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 608
    add-int v18, v18, v7

    .line 611
    :cond_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 614
    .local v9, "height":I
    if-eqz v11, :cond_6

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v12, v31, v32

    .line 616
    .local v12, "l":I
    add-int v20, v12, v18

    .line 621
    .local v20, "r":I
    :goto_3
    div-int/lit8 v31, v9, 0x2

    sub-int v26, v15, v31

    .line 622
    .local v26, "t":I
    add-int v5, v26, v9

    .line 623
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v28

    .line 627
    .local v28, "w":I
    sub-int v31, v28, v18

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 630
    .end local v28    # "w":I
    :cond_5
    sub-int v30, v30, v18

    .line 631
    const/4 v8, 0x1

    .line 632
    goto :goto_2

    .line 618
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v20, v31, v32

    .line 619
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 633
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_7
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v21, v31, v32

    .line 634
    .local v21, "size":I
    add-int v17, v17, v21

    .line 635
    sub-int v30, v30, v21

    .line 636
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 637
    add-int v17, v17, v7

    .line 639
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 643
    .end local v19    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_9
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_a

    if-nez v8, :cond_a

    .line 645
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 646
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 647
    .local v29, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 648
    .restart local v9    # "height":I
    sub-int v31, p4, p2

    div-int/lit8 v14, v31, 0x2

    .line 649
    .local v14, "midHorizontal":I
    div-int/lit8 v31, v29, 0x2

    sub-int v12, v14, v31

    .line 650
    .restart local v12    # "l":I
    div-int/lit8 v31, v9, 0x2

    sub-int v26, v15, v31

    .line 651
    .restart local v26    # "t":I
    add-int v31, v12, v29

    add-int v32, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 655
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_a
    if-eqz v8, :cond_c

    const/16 v31, 0x0

    :goto_4
    sub-int v22, v16, v31

    .line 656
    .local v22, "spacerCount":I
    const/16 v32, 0x0

    if-lez v22, :cond_d

    div-int v31, v30, v22

    :goto_5
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 658
    .local v23, "spacerSize":I
    if-eqz v11, :cond_f

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v25, v31, v32

    .line 660
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 662
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 663
    .local v13, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 660
    :cond_b
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 655
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_c
    const/16 v31, 0x1

    goto :goto_4

    .line 656
    .restart local v22    # "spacerCount":I
    :cond_d
    const/16 v31, 0x0

    goto :goto_5

    .line 667
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_e
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v25, v25, v31

    .line 668
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 669
    .restart local v29    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 670
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v26, v15, v31

    .line 671
    .restart local v26    # "t":I
    sub-int v31, v25, v29

    add-int v32, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 672
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v23

    sub-int v25, v25, v31

    goto :goto_7

    .line 675
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 677
    .local v24, "startLeft":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->useTctStyle:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 679
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctPadding:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->tctMaxPadding:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    add-int v24, v24, v31

    .line 682
    :cond_10
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 683
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 684
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 685
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_12

    .line 682
    :cond_11
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 689
    :cond_12
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v24, v24, v31

    .line 690
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 691
    .restart local v29    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 692
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v26, v15, v31

    .line 693
    .restart local v26    # "t":I
    add-int v31, v24, v29

    add-int v32, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 694
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v23

    add-int v24, v24, v31

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 168
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 169
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 171
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 172
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 177
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 178
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 179
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 180
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 184
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 195
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 169
    goto :goto_0

    .line 188
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 189
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 191
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 906
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 819
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 820
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 821
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 163
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 712
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 713
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 734
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 119
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 120
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 143
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 144
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 145
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
