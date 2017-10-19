.class Lcom/android/exsettings/sim/SimSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "action":Ljava/lang/String;
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v5, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1282
    const-string v5, "phone"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1284
    .local v2, "phoneId":I
    const-string v5, "newProvisionState"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1286
    .local v1, "newProvisionedState":I
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$000(Lcom/android/exsettings/sim/SimSettings;)V

    .line 1287
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED on phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new sub state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    .end local v1    # "newProvisionedState":I
    .end local v2    # "phoneId":I
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1292
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->dataChange:Z
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$900(Lcom/android/exsettings/sim/SimSettings;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1293
    const-string v5, "subscription"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1295
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 1296
    .local v3, "slotId":I
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data sub change:  subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "slotId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    if-nez v3, :cond_4

    .line 1298
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0da4

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1302
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # setter for: Lcom/android/exsettings/sim/SimSettings;->dataChange:Z
    invoke-static {v5, v8}, Lcom/android/exsettings/sim/SimSettings;->access$902(Lcom/android/exsettings/sim/SimSettings;Z)Z

    .line 1305
    .end local v3    # "slotId":I
    .end local v4    # "subId":I
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$3000(Lcom/android/exsettings/sim/SimSettings;)V

    goto :goto_0

    .line 1299
    .restart local v3    # "slotId":I
    .restart local v4    # "subId":I
    :cond_4
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1300
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$7;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/exsettings/sim/SimSettings;->access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0da5

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
