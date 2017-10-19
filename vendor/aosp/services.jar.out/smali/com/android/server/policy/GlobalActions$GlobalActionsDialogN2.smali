.class final Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialogN2"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    const/16 v12, 0x11

    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 1543
    const v2, 0x10302ef

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1545
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1546
    .local v10, "main":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v8, "blur":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/policy/CmccUtils;->createScreenShort(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1549
    .local v0, "blurImg":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/server/policy/GlobalActions$ScreenListener;

    invoke-direct {v2, p1}, Lcom/android/server/policy/GlobalActions$ScreenListener;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/policy/GlobalActions;->mListener:Lcom/android/server/policy/GlobalActions$ScreenListener;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$2202(Lcom/android/server/policy/GlobalActions$ScreenListener;)Lcom/android/server/policy/GlobalActions$ScreenListener;

    .line 1550
    # getter for: Lcom/android/server/policy/GlobalActions;->mListener:Lcom/android/server/policy/GlobalActions$ScreenListener;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$2200()Lcom/android/server/policy/GlobalActions$ScreenListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$ScreenListener;->enable()V

    .line 1551
    if-eqz v0, :cond_1

    .line 1552
    const/16 v2, 0xa

    invoke-static {p1, v0, v2, v6}, Lcom/android/server/policy/BlurUtils;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1553
    # getter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1500()I

    move-result v2

    # setter for: Lcom/android/server/policy/GlobalActions;->mRotate:I
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1402(I)I

    .line 1554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1555
    .local v9, "mScreenIs":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1556
    .local v5, "mMatrix":Landroid/graphics/Matrix;
    if-eq v9, v6, :cond_3

    .line 1557
    # getter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1500()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1558
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1567
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1568
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1569
    const/4 v0, 0x0

    .line 1572
    .end local v5    # "mMatrix":Landroid/graphics/Matrix;
    .end local v9    # "mScreenIs":I
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1573
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1574
    .local v7, "background":Landroid/view/View;
    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1575
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1576
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1578
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1579
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x384

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    invoke-super {p0, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1581
    return-void

    .line 1559
    .end local v7    # "background":Landroid/view/View;
    .restart local v5    # "mMatrix":Landroid/graphics/Matrix;
    .restart local v9    # "mScreenIs":I
    :cond_2
    # getter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1500()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1560
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 1563
    :cond_3
    # getter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1500()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1564
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;->dismiss()V

    .line 1585
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
