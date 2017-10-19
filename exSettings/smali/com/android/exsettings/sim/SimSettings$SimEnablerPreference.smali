.class Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
.super Lcom/android/exsettings/sim/SimSettings$SimPreference;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCmdInProgress:Z

.field private mCurrentUiccProvisionState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSwitch:Landroid/widget/CompoundButton;

.field private mSwitchVisibility:I

.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 777
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    .line 778
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x101008f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimPreference;-><init>(Lcom/android/exsettings/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 742
    const-string v0, "SimEnablerPreference"

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    .line 767
    iput-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 768
    iput v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 1159
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$1;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1173
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$2;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1181
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$3;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 780
    const-string v0, "Contructor..Enter"

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 781
    iput-object p2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    .line 782
    iput p4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 783
    iput-object p3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 784
    iput-object p3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 785
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 791
    :goto_0
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 793
    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setSwitchVisibility(I)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setKey(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 796
    return-void

    .line 788
    :cond_0
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$1602(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1150
    const/4 p1, 0x0

    .line 1152
    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings;->access$1300(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getProvisionedSlotId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1113
    const/4 v0, -0x1

    .line 1114
    .local v0, "activeSlotId":I
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$600(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1116
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 1117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1118
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1120
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 1123
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method private declared-synchronized handleUserRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 964
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    const-string v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 967
    const/4 v2, 0x2

    const v3, 0x7f0c0b70

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :goto_0
    monitor-exit p0

    return-void

    .line 970
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$1400(Lcom/android/exsettings/sim/SimSettings;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 971
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 973
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 976
    const/4 v2, 0x2

    const v3, 0x7f0c0b71

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 964
    .end local v0    # "i":I
    .end local v1    # "subId":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 970
    .restart local v0    # "i":I
    .restart local v1    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 981
    .end local v1    # "subId":[I
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-nez v2, :cond_4

    .line 982
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 983
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 984
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 986
    :cond_3
    const-string v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 987
    const/4 v2, 0x2

    const v3, 0x7f0c0b72

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 991
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 809
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 813
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 4

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "isSubValid":Z
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$600(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 877
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 878
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 879
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 882
    const/4 v0, 0x1

    .line 886
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 1041
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 1042
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;III)V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 1044
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 799
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 801
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 804
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 806
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 1000
    :cond_0
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;Lcom/android/exsettings/sim/SimSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "uiccProvisionState"    # Z

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: uiccProvisionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 901
    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 905
    iput-boolean p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    .line 907
    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 10
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const v6, 0x7f0c0b6d

    const v9, 0x104000a

    const/4 v8, 0x0

    .line 1048
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_1

    const-string v3, "SUB"

    .line 1050
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$2300(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 1051
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 1053
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/sim/SimSettings;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1054
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1059
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 1106
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    # setter for: Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/android/exsettings/sim/SimSettings;->access$2302(Lcom/android/exsettings/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1107
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$2300(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1108
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$2300(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void

    .line 1048
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1062
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "title":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1064
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1066
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b6f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getProvisionedSlotId(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "message":Ljava/lang/String;
    :goto_2
    const v4, 0x7f0c0b6e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1079
    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1080
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1082
    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1084
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1071
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_2

    .line 1076
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_3

    .line 1088
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1089
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1091
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1095
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b75

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, "msg":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1100
    const/4 v4, 0x0

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1095
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0b77

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1127
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_1

    const-string v1, "SUB"

    .line 1129
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0c0b73

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 1133
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-virtual {v2}, Lcom/android/exsettings/sim/SimSettings;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/exsettings/sim/SimSettings;->access$2402(Lcom/android/exsettings/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1135
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1136
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1139
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1140
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/exsettings/sim/SimSettings;->access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1142
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7530

    invoke-direct {p0, v2, v3, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 1145
    :cond_0
    return-void

    .line 1127
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1129
    .restart local v1    # "title":Ljava/lang/String;
    :cond_2
    const v2, 0x7f0c0b74

    goto :goto_1
.end method

.method private updateSummary()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 910
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 912
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v1, v5

    .line 913
    .local v1, "isActivated":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummary: subId "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " isActivated = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " slot id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 916
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_2

    const-string v0, "SIM"

    .line 917
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    .line 918
    move-object v3, v0

    .line 919
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 927
    :cond_0
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 928
    invoke-direct {p0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setChecked(Z)V

    .line 929
    return-void

    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "isActivated":Z
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 912
    goto :goto_0

    .line 916
    .restart local v1    # "isActivated":Z
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_1

    .line 923
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0b68

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c0b6a

    :goto_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_2

    .end local v3    # "summary":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c0b6b

    goto :goto_3
.end method


# virtual methods
.method public getNumOfSubsProvisioned()I
    .locals 6

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "activeSubInfoCount":I
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$600(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 941
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 942
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 943
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->onBindView(Landroid/view/View;)V

    .line 824
    const-string v0, "onBindView...."

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 825
    const v0, 0x7f120067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    .line 826
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 827
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 829
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 833
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 951
    iput-boolean p2, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->handleUserRequest()V

    .line 955
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 890
    iput p1, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 891
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 842
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 843
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 846
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$1300(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget v6, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 856
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->isCurrentSubValid()Z

    move-result v1

    .line 857
    .local v1, "isSubValid":Z
    invoke-virtual {p0, v1}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: isSubValid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provision status["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v4}, Lcom/android/exsettings/sim/SimSettings;->access$1300(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 861
    const v3, 0x7f0c09d0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 862
    if-eqz v1, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->updateSummary()V

    .line 864
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 868
    :goto_1
    return-void

    .line 848
    .end local v1    # "isSubValid":Z
    :catch_0
    move-exception v0

    .line 849
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$1300(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v7, v3, v4

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 852
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # getter for: Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/exsettings/sim/SimSettings;->access$1300(Lcom/android/exsettings/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v7, v3, v4

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v1    # "isSubValid":Z
    :cond_0
    const v3, 0x7f0c09d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
