.class public Lcom/android/exsettings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 65
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/sim/SimDialogActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setUserPrefDataSubIdInDb(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/content/Context;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/sim/SimDialogActivity;->displayDdsAlertIfNeeded(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->carrierSwitchingEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->showCarrierSwitching(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimDialogActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exsettings/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method private static carrierSwitchingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private displayDdsAlertIfNeeded(Landroid/content/Context;II)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "defaultDataSubId"    # I

    .prologue
    .line 456
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 457
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 458
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    sget-object v7, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default Data SubId ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {p1, p3}, Lcom/android/exsettings/sim/SimDialogActivity;->isDdsSwitchAlertDialogSupported(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v7

    const/16 v8, 0x13

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_1

    .line 469
    :cond_0
    sget-object v7, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v8, "DDS switch request from LTE sub"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 472
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0aba

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0abb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, "warningString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 479
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "yes":Ljava/lang/String;
    new-instance v7, Lcom/android/exsettings/sim/SimDialogActivity$6;

    invoke-direct {v7, p0, p2, v2, p1}, Lcom/android/exsettings/sim/SimDialogActivity$6;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;ILandroid/telephony/SubscriptionManager;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "no":Ljava/lang/String;
    new-instance v7, Lcom/android/exsettings/sim/SimDialogActivity$7;

    invoke-direct {v7, p0, p2}, Lcom/android/exsettings/sim/SimDialogActivity$7;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;I)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 506
    const/4 v7, 0x1

    .line 508
    .end local v0    # "alertDlg":Landroid/app/AlertDialog;
    .end local v1    # "no":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "warningString":Ljava/lang/String;
    .end local v6    # "yes":Ljava/lang/String;
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 114
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c03c5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    const v4, 0x7f0c03c6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    const v4, 0x7f0c006d

    new-instance v5, Lcom/android/exsettings/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/exsettings/sim/SimDialogActivity$1;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v4, 0x7f0c006e

    new-instance v5, Lcom/android/exsettings/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/exsettings/sim/SimDialogActivity$2;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 146
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x3

    .line 435
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 437
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 438
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 440
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 441
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 442
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 444
    :cond_0
    sget-object v5, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResourcesForSubId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mccmnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 448
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 449
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 451
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method private static isDdsSwitchAlertDialogSupported(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 423
    invoke-static {p0, p1}, Lcom/android/exsettings/sim/SimDialogActivity;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 424
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 149
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 150
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 151
    const v1, 0x7f0c09cd

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 161
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 162
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 163
    return-void
.end method

.method private setUserPrefDataSubIdInDb(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_preferred_data_sub"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    sget-object v0, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating data subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 166
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 167
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 168
    return-void
.end method

.method private static showCarrierSwitching(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.loadcarrier.preferred_sim_swapped"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "target_slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 182
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 183
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 184
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 187
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 189
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 190
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 195
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;ILjava/util/List;)Landroid/app/Dialog;
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v7, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    if-nez p3, :cond_0

    const/16 v24, 0x0

    .line 204
    .local v24, "selectableSubInfoLength":I
    :goto_0
    new-instance v2, Lcom/android/exsettings/sim/SimDialogActivity$3;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/exsettings/sim/SimDialogActivity$3;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 268
    .local v2, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v20, Lcom/android/exsettings/sim/SimDialogActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/sim/SimDialogActivity$4;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    .line 279
    .local v20, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v16, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 281
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v27

    .line 282
    .local v27, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v28

    .line 283
    .local v28, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v23

    .line 286
    .local v23, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c09e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 289
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v22

    .line 291
    .local v22, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v22 .. v22}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v26

    .line 293
    .local v26, "subId":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_1

    .line 294
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    .line 296
    .local v25, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v24    # "selectableSubInfoLength":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v26    # "subId":I
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v24

    goto/16 :goto_0

    .line 298
    .restart local v2    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v16    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v20    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v24    # "selectableSubInfoLength":I
    .restart local v26    # "subId":I
    .restart local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v22    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v26    # "subId":I
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c09e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 306
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 308
    .local v18, "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_3

    .line 309
    const-string v18, ""

    .line 311
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 314
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 315
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .line 316
    .restart local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    .line 317
    .restart local v18    # "displayName":Ljava/lang/CharSequence;
    if-nez v18, :cond_5

    .line 318
    const-string v18, ""

    .line 320
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 324
    .end local v18    # "displayName":Ljava/lang/CharSequence;
    .end local v19    # "i":I
    .end local v25    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 326
    .local v13, "arr":[Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v15, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    move-object/from16 v10, v16

    :goto_4
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0400ea

    move-object/from16 v9, p0

    move/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/android/exsettings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 335
    .local v8, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 346
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dialog type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in SIM dialog."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    move-object v10, v7

    goto :goto_4

    :cond_8
    move-object/from16 v10, p3

    goto :goto_4

    .line 337
    .restart local v8    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v3, 0x7f0c09cc

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 350
    :goto_5
    invoke-virtual {v15, v8, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    .line 351
    .local v17, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 353
    new-instance v3, Lcom/android/exsettings/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/exsettings/sim/SimDialogActivity$5;-><init>(Lcom/android/exsettings/sim/SimDialogActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 360
    return-object v17

    .line 340
    .end local v17    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v3, 0x7f0c09ce

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 343
    :pswitch_2
    const v3, 0x7f0c09d8

    invoke-virtual {v15, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 81
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v4, Lcom/android/exsettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dialog type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sent."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 91
    .local v2, "phCount":I
    sget-object v4, Lcom/android/exsettings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show Dialog dialogType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 93
    invoke-virtual {p0, p0, v0, v3}, Lcom/android/exsettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;ILjava/util/List;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 106
    .end local v2    # "phCount":I
    .end local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v2    # "phCount":I
    .restart local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimDialogActivity;->finish()V

    goto :goto_0

    .line 100
    .end local v2    # "phCount":I
    .end local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_1
    sget-object v4, Lcom/android/exsettings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
