.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1185
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1221
    :goto_0
    return-void

    .line 1187
    :pswitch_0
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v3, v3, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->simEnablerUpdate()V
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$300(Lcom/android/exsettings/sim/SimSettings;)V

    .line 1190
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1191
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1192
    .local v1, "newProvisionedState":I
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

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

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 1194
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 1195
    if-eqz v2, :cond_1

    .line 1196
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v0, 0x7f0c0b76

    .line 1199
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x2

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    invoke-static {v3, v4, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2800(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    .line 1203
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1196
    :cond_0
    const v0, 0x7f0c0b78

    goto :goto_1

    .line 1201
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x3

    const/4 v5, 0x0

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    invoke-static {v3, v4, v5}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2800(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    goto :goto_2

    .line 1207
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const-string v4, "EVT_SHOW_PROGRESS_DLG"

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    goto :goto_0

    .line 1212
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const-string v4, "EVT_PROGRESS_DLG_TIME_OUT"

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 1213
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v4, v4, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2500(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V

    .line 1215
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
