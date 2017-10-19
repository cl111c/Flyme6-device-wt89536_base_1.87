.class Lcom/android/exsettings/notification/DragGridView$1;
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
    .line 151
    iput-object p1, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exsettings/notification/DragGridView;->isDrag:Z

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/exsettings/notification/DragGridView;->access$000(Lcom/android/exsettings/notification/DragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mStartDragItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/exsettings/notification/DragGridView;->access$100(Lcom/android/exsettings/notification/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    iget-object v1, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/exsettings/notification/DragGridView;->access$200(Lcom/android/exsettings/notification/DragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDownX:I
    invoke-static {v2}, Lcom/android/exsettings/notification/DragGridView;->access$300(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/exsettings/notification/DragGridView$1;->this$0:Lcom/android/exsettings/notification/DragGridView;

    # getter for: Lcom/android/exsettings/notification/DragGridView;->mDownY:I
    invoke-static {v3}, Lcom/android/exsettings/notification/DragGridView;->access$400(Lcom/android/exsettings/notification/DragGridView;)I

    move-result v3

    # invokes: Lcom/android/exsettings/notification/DragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/notification/DragGridView;->access$500(Lcom/android/exsettings/notification/DragGridView;Landroid/graphics/Bitmap;II)V

    .line 161
    return-void
.end method
