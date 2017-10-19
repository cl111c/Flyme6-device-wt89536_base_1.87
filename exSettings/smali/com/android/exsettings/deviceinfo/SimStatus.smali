.class public Lcom/android/exsettings/deviceinfo/SimStatus;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;
    }
.end annotation


# instance fields
.field mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

.field private mCbAreaInfoPref:Landroid/preference/Preference;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

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

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 109
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 144
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    .line 466
    new-instance v0, Lcom/android/exsettings/deviceinfo/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/SimStatus$2;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 488
    new-instance v0, Lcom/android/exsettings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/SimStatus$3;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->queryCbAreaInfoIfneeded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/deviceinfo/SimStatus;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private queryCbAreaInfoIfneeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-boolean v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_1

    .line 224
    const-string v1, "SimStatus"

    const-string v2, "querying area info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;Lcom/android/exsettings/deviceinfo/SimStatus$1;)V

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    .line 227
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/exsettings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 231
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 237
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object p2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 256
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 309
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 326
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 313
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_3
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "networktype":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 265
    .local v8, "subId":I
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 267
    .local v0, "actualDataNetworkType":I
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 269
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_4

    .line 270
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 277
    .local v7, "show4GForLTE":Z
    :try_start_0
    const-string v9, "com.android.systemui"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/exsettings/deviceinfo/SimStatus;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 278
    .local v3, "con":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "config_show4GForLTE"

    const-string v11, "bool"

    const-string v12, "com.android.systemui"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 280
    .local v5, "id":I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 285
    .end local v3    # "con":Landroid/content/Context;
    .end local v5    # "id":I
    :goto_1
    if-eqz v6, :cond_1

    const-string v9, "LTE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    .line 286
    const-string v6, "4G"

    .line 289
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CarrierAppUtils;->getCarrierId()Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;

    move-result-object v2

    .line 290
    .local v2, "carrier":Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;
    if-eqz v2, :cond_3

    sget-object v9, Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;->TELEPHONY_CARRIER_ONE:Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;

    if-ne v9, v2, :cond_3

    .line 292
    if-eq v13, v0, :cond_2

    if-ne v13, v1, :cond_3

    .line 294
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 295
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0c26

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    :cond_3
    :goto_2
    const-string v9, "network_type"

    invoke-direct {p0, v9, v6}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 271
    .end local v2    # "carrier":Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;
    .end local v7    # "show4GForLTE":Z
    :cond_4
    if-eqz v1, :cond_0

    .line 272
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 281
    .restart local v7    # "show4GForLTE":Z
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SimStatus"

    const-string v10, "NameNotFoundException for show4GFotLTE"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "carrier":Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;
    :cond_5
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0c27

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private updatePhoneInfos()V
    .locals 4

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 432
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    if-nez v1, :cond_1

    .line 435
    const-string v2, "SimStatus"

    const-string v3, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 439
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 440
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v2, "subscription"

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 446
    new-instance v2, Lcom/android/exsettings/deviceinfo/SimStatus$1;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus$1;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;I)V

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 7

    .prologue
    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, "showLatestAreaInfo":Z
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 398
    const-string v4, "br"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    const/4 v3, 0x1

    .line 404
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 406
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_1
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "imei":Ljava/lang/String;
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v4, "baseband_version"

    const-string v5, "gsm.version.baseband"

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v4, "imei_sv"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mCbAreaInfoPref:Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 419
    if-eqz v3, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mCbAreaInfoPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 424
    :goto_0
    iput-boolean v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 426
    :cond_2
    return-void

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mCbAreaInfoPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 331
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 333
    .local v1, "dataState":I
    packed-switch v2, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Lcom/android/exsettings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "voiceDisplay":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lcom/android/exsettings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_1
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void

    .line 336
    .end local v0    # "dataDisplay":Ljava/lang/String;
    .end local v3    # "voiceDisplay":Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x1

    if-ne v4, v1, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    .restart local v0    # "dataDisplay":Ljava/lang/String;
    .restart local v3    # "voiceDisplay":Ljava/lang/String;
    :cond_1
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0090

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x2b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 151
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 153
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 156
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 158
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 159
    const-string v1, "latest_area_info"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mCbAreaInfoPref:Landroid/preference/Preference;

    .line 161
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    if-nez v1, :cond_1

    .line 162
    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 184
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    :goto_0
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 166
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 167
    const v1, 0x1090044

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->setContentView(I)V

    .line 169
    const v1, 0x1020012

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 170
    const v1, 0x1020013

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 171
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 173
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 174
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    move-object v1, v2

    .line 164
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Lcom/android/exsettings/deviceinfo/SimStatus$AreaInfoReceiver;

    .line 220
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePreference()V

    .line 197
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 198
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 199
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateDataState()V

    .line 200
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 204
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->queryCbAreaInfoIfneeded()V

    .line 206
    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 11
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    .line 366
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    .line 367
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 368
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 369
    .local v0, "dataState":I
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 371
    .local v1, "r":Landroid/content/res/Resources;
    if-ne v10, v4, :cond_0

    if-eq v10, v0, :cond_1

    :cond_0
    const/4 v5, 0x3

    if-ne v5, v4, :cond_3

    .line 374
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    .end local v0    # "dataState":I
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v4    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 378
    .restart local v0    # "dataState":I
    .restart local v1    # "r":Landroid/content/res/Resources;
    .restart local v4    # "state":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 379
    .local v3, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 381
    .local v2, "signalAsu":I
    if-ne v6, v3, :cond_4

    .line 382
    const/4 v3, 0x0

    .line 385
    :cond_4
    if-ne v6, v2, :cond_5

    .line 386
    const/4 v2, 0x0

    .line 389
    :cond_5
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v6, 0x7f0c09e4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
