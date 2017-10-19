.class Lcom/android/exsettings/wakeup/AppSelect$2;
.super Ljava/lang/Object;
.source "AppSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/AppSelect;->showConfirmDialog(IILjava/lang/String;Ljava/lang/String;ILandroid/view/View;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/AppSelect;

.field final synthetic val$l:Landroid/widget/ListView;

.field final synthetic val$newPos:I

.field final synthetic val$oldPos:I

.field final synthetic val$pkname:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/AppSelect;IILjava/lang/String;Landroid/widget/ListView;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iput p2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$oldPos:I

    iput p3, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$newPos:I

    iput-object p4, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$pkname:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$l:Landroid/widget/ListView;

    iput p6, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$position:I

    iput-object p7, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 511
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$000(Lcom/android/exsettings/wakeup/AppSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iget v3, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$oldPos:I

    # invokes: Lcom/android/exsettings/wakeup/AppSelect;->positionToKey(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/exsettings/wakeup/AppSelect;->access$100(Lcom/android/exsettings/wakeup/AppSelect;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "noAction"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mActions:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$200(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$oldPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "noAction"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$000(Lcom/android/exsettings/wakeup/AppSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iget v3, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$newPos:I

    # invokes: Lcom/android/exsettings/wakeup/AppSelect;->positionToKey(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/exsettings/wakeup/AppSelect;->access$100(Lcom/android/exsettings/wakeup/AppSelect;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$pkname:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 516
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$000(Lcom/android/exsettings/wakeup/AppSelect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iget v3, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$newPos:I

    # invokes: Lcom/android/exsettings/wakeup/AppSelect;->positionToGestureEnableKey(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/exsettings/wakeup/AppSelect;->access$300(Lcom/android/exsettings/wakeup/AppSelect;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$l:Landroid/widget/ListView;

    # invokes: Lcom/android/exsettings/wakeup/AppSelect;->resetCheck(Landroid/widget/ListView;)V
    invoke-static {v1, v2}, Lcom/android/exsettings/wakeup/AppSelect;->access$400(Lcom/android/exsettings/wakeup/AppSelect;Landroid/widget/ListView;)V

    .line 519
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$500(Lcom/android/exsettings/wakeup/AppSelect;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I
    invoke-static {v2}, Lcom/android/exsettings/wakeup/AppSelect;->access$500(Lcom/android/exsettings/wakeup/AppSelect;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    # getter for: Lcom/android/exsettings/wakeup/AppSelect;->mApp:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exsettings/wakeup/AppSelect;->access$600(Lcom/android/exsettings/wakeup/AppSelect;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;

    iput-boolean v4, v1, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 523
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;

    .line 524
    .local v0, "vh":Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;
    iget-object v1, v0, Lcom/android/exsettings/wakeup/AppSelect$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 525
    iget-object v1, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->this$0:Lcom/android/exsettings/wakeup/AppSelect;

    iget v2, p0, Lcom/android/exsettings/wakeup/AppSelect$2;->val$position:I

    # setter for: Lcom/android/exsettings/wakeup/AppSelect;->lastPos:I
    invoke-static {v1, v2}, Lcom/android/exsettings/wakeup/AppSelect;->access$502(Lcom/android/exsettings/wakeup/AppSelect;I)I

    .line 526
    return-void
.end method
