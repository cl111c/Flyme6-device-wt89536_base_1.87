.class Lcom/android/exsettings/notification/DragGridView$2;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/notification/DragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/notification/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/exsettings/notification/DragGridView;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x19

    .line 359
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->moveY:I
    invoke-static {v2}, Lcom/android/exsettings/notification/DragGridView;->access$600(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mUpScrollBorder:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$700(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 360
    const/16 v0, -0x50

    .line 361
    .local v0, "scrollY":I
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v2, v2, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, v3, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->moveX:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$900(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->moveY:I
    invoke-static {v4}, Lcom/android/exsettings/notification/DragGridView;->access$600(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v4

    # invokes: Lcom/android/exsettings/notification/DragGridView;->onSwapItem(II)V
    invoke-static {v2, v3, v4}, Lcom/android/exsettings/notification/DragGridView;->access$1000(Lcom/android/exsettings/notification/DragGridView;II)V

    .line 374
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$1100(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    invoke-virtual {v4}, Lcom/android/exsettings/notification/DragGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exsettings/notification/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDragPosition:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$1100(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettings/notification/DragGridView;->smoothScrollToPositionFromTop(II)V

    .line 377
    return-void

    .line 362
    .end local v0    # "scrollY":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->moveY:I
    invoke-static {v2}, Lcom/android/exsettings/notification/DragGridView;->access$600(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDownScrollBorder:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$800(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 363
    const/16 v0, 0x50

    .line 364
    .restart local v0    # "scrollY":I
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v2, v2, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, v3, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    .end local v0    # "scrollY":I
    :cond_1
    const/4 v0, 0x0

    .line 367
    .restart local v0    # "scrollY":I
    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v2, v2, Lcom/android/exsettings/notification/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$2;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v3, v3, Lcom/android/exsettings/notification/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
