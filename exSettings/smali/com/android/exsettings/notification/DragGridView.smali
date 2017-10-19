.class public Lcom/android/exsettings/notification/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/DragGridView$OnChanageListener;
    }
.end annotation


# instance fields
.field private dragResponseMS:J

.field protected isDrag:Z

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field public mHandler:Landroid/os/Handler;

.field public mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field public mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChanageListener:Lcom/android/exsettings/notification/DragGridView$OnChanageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/notification/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/notification/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/exsettings/notification/DragGridView;->dragResponseMS:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/DragGridView;->isDrag:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/android/exsettings/notification/DragGridView$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/DragGridView$1;-><init>(Lcom/android/exsettings/notification/DragGridView;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/exsettings/notification/DragGridView$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/DragGridView$2;-><init>(Lcom/android/exsettings/notification/DragGridView;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 143
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mVibrator:Landroid/os/Vibrator;

    .line 144
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 145
    invoke-static {p1}, Lcom/android/exsettings/notification/DragGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/notification/DragGridView;->mStatusHeight:I

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/DragGridView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/notification/DragGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exsettings/notification/DragGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/DragGridView;->onSwapItem(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/notification/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/notification/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/notification/DragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->moveY:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/notification/DragGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/DragGridView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->moveX:I

    return v0
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    const/4 v3, -0x2

    .line 286
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 288
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 289
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 290
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 291
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 294
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 296
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 299
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/exsettings/notification/DragGridView;->getAlphaBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 304
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void
.end method

.method private static getAlphaBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mColor"    # I

    .prologue
    const/4 v7, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 311
    .local v1, "mAlphaBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 314
    .local v3, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, "alphaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    return-object v1
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    const/4 v5, 0x0

    .line 420
    .local v5, "statusHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "localRect":Landroid/graphics/Rect;
    move-object v6, p0

    .line 421
    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 422
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 423
    if-nez v5, :cond_0

    .line 426
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 427
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 428
    .local v3, "localObject":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 429
    .local v1, "i5":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 434
    .end local v1    # "i5":I
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 245
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 246
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-le p2, v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 254
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 341
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 342
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/DragGridView;->onSwapItem(II)V

    .line 346
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method private onSwapItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/notification/DragGridView;->pointToPosition(II)I

    move-result v0

    .line 390
    .local v0, "tempPosition":I
    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->onChanageListener:Lcom/android/exsettings/notification/DragGridView$OnChanageListener;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->onChanageListener:Lcom/android/exsettings/notification/DragGridView$OnChanageListener;

    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/exsettings/notification/DragGridView$OnChanageListener;->onChange(II)V

    .line 398
    :cond_0
    iput v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    .line 400
    :cond_1
    return-void
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 445
    .local v10, "localView1":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int v8, v0, v1

    .line 446
    .local v8, "column":I
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getChildCount()I

    move-result v7

    .line 448
    .local v7, "childCount":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 449
    .local v5, "localPaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 453
    invoke-virtual {p0, v9}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 454
    .local v6, "cellView":Landroid/view/View;
    const/4 v0, 0x4

    if-ge v9, v0, :cond_0

    .line 455
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 457
    :cond_0
    rem-int v0, v9, v8

    if-nez v0, :cond_1

    .line 458
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 460
    :cond_1
    add-int/lit8 v0, v9, 0x1

    rem-int/2addr v0, v8

    if-nez v0, :cond_2

    .line 462
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 463
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 452
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 464
    :cond_2
    add-int/lit8 v0, v9, 0x1

    rem-int v1, v7, v8

    sub-int v1, v7, v1

    if-le v0, v1, :cond_3

    .line 466
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 467
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 472
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 475
    .end local v6    # "cellView":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 184
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownX:I

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownY:I

    .line 188
    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownX:I

    iget v3, p0, Lcom/android/exsettings/notification/DragGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/notification/DragGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    .line 190
    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 191
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/exsettings/notification/DragGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    .line 199
    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownY:I

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemTop:I

    .line 200
    iget v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownX:I

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mPoint2ItemLeft:I

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/exsettings/notification/DragGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Top:I

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/exsettings/notification/DragGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mOffset2Left:I

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDownScrollBorder:I

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/exsettings/notification/DragGridView;->mUpScrollBorder:I

    .line 211
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 215
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 220
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 221
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/exsettings/notification/DragGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onStopDrag()V
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/notification/DragGridView;->removeDragImage()V

    .line 411
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/exsettings/notification/DragGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    const/4 v0, 0x1

    .line 274
    :goto_1
    return v0

    .line 262
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/exsettings/notification/DragGridView;->moveX:I

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/exsettings/notification/DragGridView;->moveY:I

    .line 265
    iget v0, p0, Lcom/android/exsettings/notification/DragGridView;->moveX:I

    iget v1, p0, Lcom/android/exsettings/notification/DragGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/notification/DragGridView;->onDragItem(II)V

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/notification/DragGridView;->onStopDrag()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/notification/DragGridView;->isDrag:Z

    goto :goto_0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnChangeListener(Lcom/android/exsettings/notification/DragGridView$OnChanageListener;)V
    .locals 0
    .param p1, "onChanageListener"    # Lcom/android/exsettings/notification/DragGridView$OnChanageListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/exsettings/notification/DragGridView;->onChanageListener:Lcom/android/exsettings/notification/DragGridView$OnChanageListener;

    .line 170
    return-void
.end method
