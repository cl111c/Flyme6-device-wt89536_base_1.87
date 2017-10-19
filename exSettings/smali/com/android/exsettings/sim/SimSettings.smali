.class public Lcom/android/exsettings/sim/SimSettings;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;,
        Lcom/android/exsettings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;


# instance fields
.field private dataChange:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCarrierMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSelectionListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mIsCTClassA:Z

.field private mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPrimaryPrefRemoved:Z

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mPrimarySubSelectionListener:Landroid/content/DialogInterface$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceCategory;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUiccProvisionStatus:[I

.field private needUpdate:Z

.field private selectValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1248
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$6;

    invoke-direct {v0}, Lcom/android/exsettings/sim/SimSettings$6;-><init>()V

    sput-object v0, Lcom/android/exsettings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 116
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 117
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 118
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 119
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 123
    iput-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    .line 125
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 126
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 127
    iput-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    .line 128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    .line 129
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    .line 130
    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 131
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    .line 132
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 134
    const-string v0, "persist.carrier.mode"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCarrierMode:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCarrierMode:Ljava/lang/String;

    const-string v1, "ct_class_a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->mIsCTClassA:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/exsettings/sim/SimSettings;->dataChange:Z

    .line 202
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$1;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 567
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$2;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 625
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$3;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 633
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$4;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mDataSelectionListener:Landroid/content/DialogInterface$OnClickListener;

    .line 650
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$5;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelectionListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1276
    new-instance v0, Lcom/android/exsettings/sim/SimSettings$7;

    invoke-direct {v0, p0}, Lcom/android/exsettings/sim/SimSettings$7;-><init>(Lcom/android/exsettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/exsettings/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exsettings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exsettings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/exsettings/sim/SimSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/exsettings/sim/SimSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/exsettings/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->simEnablerUpdate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/exsettings/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/sim/SimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/exsettings/sim/SimSettings;->selectValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/exsettings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/exsettings/sim/SimSettings;->selectValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/exsettings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/sim/SimSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/sim/SimSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/exsettings/sim/SimSettings;->setUserPrefDataSubIdInDb(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/exsettings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->dataChange:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/exsettings/sim/SimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/exsettings/sim/SimSettings;->dataChange:Z

    return p1
.end method

.method private alertRestrictCTCardDialog()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/exsettings/sim/SimSettings;->dismissDialog(Landroid/app/Dialog;)V

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0bc3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v1, 0x7f0c0bc4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 293
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 294
    return-void
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 299
    const/4 p1, 0x0

    .line 301
    :cond_0
    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1238
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1404
    move v0, p1

    .line 1405
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/exsettings/sim/SimSettings$8;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/exsettings/sim/SimSettings$8;-><init>(Lcom/android/exsettings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 1413
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private initLTEPreference()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1319
    const-string v4, "persist.radio.primarycard"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1321
    .local v0, "isPrimarySubFeatureEnable":Z
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "config_primary_sub_setable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 1324
    .local v1, "primarySetable":Z
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPrimarySubFeatureEnable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " primarySetable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPrimaryPrefRemoved = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 1329
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1330
    :cond_1
    const-string v4, "sim_activities"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 1332
    .local v2, "simActivities":Landroid/preference/PreferenceCategory;
    iget-boolean v4, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 1333
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1334
    iput-boolean v3, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    .line 1336
    :cond_2
    return-void
.end method

.method private isCMCardForSImSlotIndex(I)Z
    .locals 8
    .param p1, "slotIdx"    # I

    .prologue
    .line 270
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "simOperator":Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, "isCMCard":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 274
    .local v1, "cmMccMnc":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    const/4 v3, 0x1

    .line 280
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmMccMnc":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " simOperator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCMCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 281
    return v3

    .line 273
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cmMccMnc":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isCTCardForSimSlotIndex(I)Z
    .locals 8
    .param p1, "slotIdx"    # I

    .prologue
    .line 255
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "simOperator":Ljava/lang/String;
    const/4 v3, 0x0

    .line 257
    .local v3, "isCTCard":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 259
    .local v1, "ctMccMnc":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    const/4 v3, 0x1

    .line 265
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ctMccMnc":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " simOperator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCTCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 266
    return v3

    .line 258
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "ctMccMnc":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 1417
    const/4 v0, 0x1

    .line 1418
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1419
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 1420
    const/4 v0, 0x0

    .line 1418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1423
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mUiccProvisionStatus:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1273
    :cond_0
    return v0
.end method

.method private listen()V
    .locals 5

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1378
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1379
    const-string v3, "SimSettings"

    const-string v4, "Register for call state change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1382
    .local v1, "subId":I
    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v0    # "i":I
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void
.end method

.method private setUserPrefDataSubIdInDb(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_preferred_data_sub"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    const-string v0, "SimSettings"

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

    .line 670
    return-void
.end method

.method private showSelectDialog(I)V
    .locals 12
    .param p1, "id"    # I

    .prologue
    .line 586
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 589
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_1

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0c09d0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "nameOne":Ljava/lang/String;
    :goto_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 598
    if-eqz v5, :cond_2

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0c09d0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "nameTwo":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f040124

    invoke-direct {v0, v6, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 607
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 609
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v6

    iput v6, p0, Lcom/android/exsettings/sim/SimSettings;->selectValue:I

    .line 610
    const v6, 0x7f0c0d33

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 611
    const v6, 0x7f0c0141

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mDataSelectionListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    :cond_0
    :goto_2
    iget v6, p0, Lcom/android/exsettings/sim/SimSettings;->selectValue:I

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 622
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 623
    return-void

    .line 593
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "nameOne":Ljava/lang/String;
    .end local v3    # "nameTwo":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0c09d0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "nameOne":Ljava/lang/String;
    goto/16 :goto_0

    .line 602
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0c09d0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "nameTwo":Ljava/lang/String;
    goto :goto_1

    .line 612
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 613
    iget-object v6, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "config_current_primary_sub"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/exsettings/sim/SimSettings;->selectValue:I

    .line 615
    const v6, 0x7f0c0b79

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 616
    const v6, 0x7f0c0141

    iget-object v7, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelectionListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private simEnablerUpdate()V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    .line 560
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->initLTEPreference()V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/sim/SimSettings;->needUpdate:Z

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1391
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 1392
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1393
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1394
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1397
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateCellularDataValues()V

    .line 334
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSimSlotValues()V

    .line 305
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateActivitesCategory()V

    .line 306
    return-void
.end method

.method private updateCellularDataValues()V
    .locals 18

    .prologue
    .line 365
    const-string v12, "sim_cellular_data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 367
    .local v8, "simPref":Landroid/preference/Preference;
    if-eqz v8, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 370
    .local v9, "sir":Landroid/telephony/SubscriptionInfo;
    const v12, 0x7f0c0d33

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 373
    if-eqz v9, :cond_6

    .line 375
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v14, 0x7f0c09d0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 378
    .local v11, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    .end local v9    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v11    # "summary":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const-string v12, "persist.radio.primarycard"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 388
    .local v5, "isPrimarySubFeatureEnable":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "config_primary_sub_setable"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v7, 0x1

    .line 390
    .local v7, "primarySetable":Z
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isPrimarySubFeatureEnable :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " primarySetable :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mPrimaryPrefRemoved = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exsettings/sim/SimSettings;->mPrimaryPrefRemoved:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-eqz v12, :cond_1

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "config_current_primary_sub"

    const/4 v14, -0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 398
    .local v2, "currentPrimarySlot":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateCellularDataValues] primary slot : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 404
    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v10, :cond_8

    const/4 v6, 0x0

    .line 407
    .local v6, "lteSummary":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v12, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    .end local v2    # "currentPrimarySlot":I
    .end local v6    # "lteSummary":Ljava/lang/CharSequence;
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/sim/SimSettings;->isCallStateIdle()Z

    move-result v1

    .line 414
    .local v1, "callStateIdle":Z
    const-string v12, "ril.cdma.inecmmode"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 419
    .local v3, "ecbMode":Z
    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exsettingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 429
    :cond_2
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100024

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 432
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->isCTCardForSimSlotIndex(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->isCMCardForSImSlotIndex(I)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->isCMCardForSImSlotIndex(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exsettings/sim/SimSettings;->isCTCardForSimSlotIndex(I)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_4
    const/4 v4, 0x1

    .line 436
    .local v4, "isDdsDis":Z
    :goto_5
    if-nez v4, :cond_c

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    .end local v4    # "isDdsDis":Z
    :cond_5
    return-void

    .line 380
    .end local v1    # "callStateIdle":Z
    .end local v3    # "ecbMode":Z
    .end local v5    # "isPrimarySubFeatureEnable":Z
    .end local v7    # "primarySetable":Z
    .restart local v9    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_6
    if-nez v9, :cond_0

    .line 381
    const v12, 0x7f0c09e9

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 388
    .end local v9    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v5    # "isPrimarySubFeatureEnable":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 404
    .restart local v2    # "currentPrimarySlot":I
    .restart local v7    # "primarySetable":Z
    .restart local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v14, 0x7f0c09d0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v2, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 409
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 421
    .end local v2    # "currentPrimarySlot":I
    .restart local v1    # "callStateIdle":Z
    .restart local v3    # "ecbMode":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 432
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 436
    .restart local v4    # "isDdsDis":Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_6
.end method

.method private updateSimSlotValues()V
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->resume()V

    .line 324
    :cond_0
    return-void
.end method

.method private updateSubscriptions()V
    .locals 7

    .prologue
    .line 212
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 215
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 220
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 222
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_3

    .line 223
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 225
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;

    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/android/exsettings/sim/SimSettings$SimEnablerPreference;-><init>(Lcom/android/exsettings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 226
    .local v2, "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    iget v4, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 227
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/exsettings/sim/SimSettings;->isSubProvisioned(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v2    # "simPreference":Lcom/android/exsettings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateAllOptions()V

    .line 234
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->initLTEPreference()V

    .line 237
    iget-boolean v4, p0, Lcom/android/exsettings/sim/SimSettings;->mIsCTClassA:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->isCTCardForSimSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->alertRestrictCTCardDialog()V

    .line 242
    :cond_4
    const-string v4, "config_sub"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    sput-object v4, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    .line 243
    sget-object v4, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->setParentHandler(Landroid/os/Handler;)V

    .line 244
    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 177
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const v2, 0x7f080051

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 182
    const-string v2, "select_primary_sub"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 183
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    .line 184
    const-string v2, "sim_cards"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceCategory;

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/exsettings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exsettings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 486
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 487
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 491
    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/android/exsettings/sim/SimSettings;->mCmccConfigSub:Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;

    invoke-virtual {v0}, Lcom/android/exsettings/sim/MultiSimEnablerPreferenceCmcc;->cleanUp()V

    .line 504
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 509
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 510
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/exsettings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    instance-of v5, p2, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    if-eqz v5, :cond_1

    .line 515
    new-instance v4, Lcom/android/internal/telephony/OperatorSimInfo;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/OperatorSimInfo;-><init>(Landroid/content/Context;)V

    .line 516
    .local v4, "operatorSimInfo":Lcom/android/internal/telephony/OperatorSimInfo;
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorSimInfo;->isOperatorFeatureEnabled()Z

    move-result v2

    .line 518
    .local v2, "isCustomSimFeatureEnabled":Z
    if-nez v2, :cond_0

    .line 519
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/exsettings/sim/SimPreferenceDialog;

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v5, "slot_id"

    check-cast p2, Lcom/android/exsettings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    # invokes: Lcom/android/exsettings/sim/SimSettings$SimPreference;->getSlotId()I
    invoke-static {p2}, Lcom/android/exsettings/sim/SimSettings$SimPreference;->access$100(Lcom/android/exsettings/sim/SimSettings$SimPreference;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v3}, Lcom/android/exsettings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 550
    .end local v2    # "isCustomSimFeatureEnabled":Z
    .end local v3    # "newIntent":Landroid/content/Intent;
    .end local v4    # "operatorSimInfo":Lcom/android/internal/telephony/OperatorSimInfo;
    :cond_0
    :goto_0
    return v7

    .line 523
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v5, "sim_cellular_data"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v5, p2, :cond_2

    .line 526
    invoke-direct {p0, v7}, Lcom/android/exsettings/sim/SimSettings;->showSelectDialog(I)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v5, p0, Lcom/android/exsettings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v5, :cond_0

    .line 543
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/exsettings/sim/SimSettings;->showSelectDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 478
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/exsettings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 479
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V

    .line 480
    invoke-direct {p0}, Lcom/android/exsettings/sim/SimSettings;->listen()V

    .line 481
    return-void
.end method
