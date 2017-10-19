.class Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;
.super Landroid/os/AsyncTask;
.source "MultiSimEnablerPreferenceCmcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerDisabler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field newProvisionedState:I

.field final synthetic this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V
    .locals 1

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->newProvisionedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;
    .param p2, "x1"    # Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$1;

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;-><init>(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 648
    const/4 v1, -0x1

    .line 649
    .local v1, "result":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->newProvisionedState:I

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1200(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$000(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/exsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 652
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 653
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mRequest:Z
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1300(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->activateUiccCard(I)I

    move-result v1

    .line 655
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->newProvisionedState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 665
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 657
    .restart local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v3}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 660
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activate  sub failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # getter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCheckSub:I
    invoke-static {v5}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$000(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 663
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to activate sub Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$100(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->newProvisionedState:I

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->processSetUiccDone(II)V
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1500(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;II)V

    .line 671
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 641
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 642
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    const/4 v1, 0x1

    # setter for: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->mCmdInProgress:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$1102(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;Z)Z

    .line 643
    iget-object v0, p0, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc$SimEnablerDisabler;->this$0:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    # invokes: Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->showProgressDialog()V
    invoke-static {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->access$400(Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;)V

    .line 644
    return-void
.end method
