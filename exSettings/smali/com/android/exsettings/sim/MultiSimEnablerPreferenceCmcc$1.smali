.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;
.super Landroid/os/Handler;
.source "MultiSimEnablerPreferenceCmcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCheckSub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v5}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$000(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    .line 124
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 127
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 128
    .local v1, "newProvisionedState":I
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_SHOW_RESULT_DLG result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new provisioned state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    .line 130
    if-eqz v2, :cond_1

    .line 131
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v0, 0x7f0c0b76

    .line 134
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const/4 v4, 0x2

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V
    invoke-static {v3, v4, v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;II)V

    .line 138
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$300(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->resume()V

    goto :goto_0

    .line 131
    :cond_0
    const v0, 0x7f0c0b78

    goto :goto_1

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const/4 v4, 0x3

    const/4 v5, 0x0

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showAlertDialog(II)V
    invoke-static {v3, v4, v5}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;II)V

    goto :goto_2

    .line 142
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const-string v4, "EVT_SHOW_PROGRESS_DLG"

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showProgressDialog()V
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const-string v4, "EVT_PROGRESS_DLG_TIME_OUT"

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$500()Landroid/app/ProgressDialog;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$600(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Landroid/app/Dialog;)V

    .line 148
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->resume()V

    .line 149
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const/4 v4, -0x1

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$002(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;I)I

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->removeCursor()V
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$700(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    .line 155
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->saveSimName()V
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$800(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
