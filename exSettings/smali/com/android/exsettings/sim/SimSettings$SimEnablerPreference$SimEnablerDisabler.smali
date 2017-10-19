.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;
.super Landroid/os/AsyncTask;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
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

.field final synthetic this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 1

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Lcom/android/exsettings/sim/SimSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p2, "x1"    # Lcom/android/exsettings/sim/SimSettings$1;

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1017
    const/4 v1, -0x1

    .line 1018
    .local v1, "result":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    .line 1020
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1800(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2000(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IExtTelephony;->activateUiccCard(I)I

    move-result v1

    .line 1022
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1031
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1024
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2000(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate  sub failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2100(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1029
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to activate sub Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2100(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1003
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->newProvisionedState:I

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$2200(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V

    .line 1037
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1003
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1010
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z
    invoke-static {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1602(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Z)Z

    .line 1011
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    # invokes: Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->access$1700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    .line 1012
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->this$1:Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 1013
    return-void
.end method
