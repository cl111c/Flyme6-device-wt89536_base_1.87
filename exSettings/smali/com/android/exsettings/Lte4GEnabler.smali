.class public Lcom/android/exsettings/Lte4GEnabler;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/Lte4GEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;

.field private static mHandler:Lcom/android/exsettings/Lte4GEnabler$MyHandler;

.field private static final sPhoneCount:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mCtMccMncs:[Ljava/lang/String;

.field private mDialogClicked:Z

.field private mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/exsettings/Lte4GEnabler;->sPhoneCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sw"    # Landroid/widget/Switch;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z

    .line 186
    new-instance v0, Lcom/android/exsettings/Lte4GEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/Lte4GEnabler$4;-><init>(Lcom/android/exsettings/Lte4GEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 73
    iput-object p1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 75
    new-instance v0, Lcom/android/exsettings/Lte4GEnabler$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/Lte4GEnabler$MyHandler;-><init>(Lcom/android/exsettings/Lte4GEnabler;Lcom/android/exsettings/Lte4GEnabler$1;)V

    sput-object v0, Lcom/android/exsettings/Lte4GEnabler;->mHandler:Lcom/android/exsettings/Lte4GEnabler$MyHandler;

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->setPrefNetwork()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/Lte4GEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/exsettings/Lte4GEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/exsettings/Lte4GEnabler;->mDialogClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/exsettings/Lte4GEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->promptUser()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/Lte4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/Lte4GEnabler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->setSwitchStatus()V

    return-void
.end method

.method private callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/exsettings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/exsettings/Lte4GEnabler;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredNetworkType(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 294
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 295
    .local v0, "settingsNetworkMode":I
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 296
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 310
    :goto_0
    const-string v3, "Lte4GEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v0

    .line 302
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Lte4GEnabler"

    const-string v4, "getPreferredNetworkType: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProperNwMode(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/exsettings/Lte4GEnabler;->isCtCard(I)Z

    move-result v0

    .line 241
    .local v0, "isCtCardPresent":Z
    if-eqz v0, :cond_0

    const/16 v1, 0xa

    .line 243
    .local v1, "lteNwMode":I
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x7

    .line 245
    .local v2, "nwMode":I
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .end local v1    # "lteNwMode":I
    :goto_2
    return v1

    .line 241
    .end local v2    # "nwMode":I
    :cond_0
    const/16 v1, 0x14

    goto :goto_0

    .line 243
    .restart local v1    # "lteNwMode":I
    :cond_1
    const/16 v2, 0x12

    goto :goto_1

    .restart local v2    # "nwMode":I
    :cond_2
    move v1, v2

    .line 245
    goto :goto_2
.end method

.method private isCtCard(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 225
    iget-object v9, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 226
    .local v5, "subId":[I
    iget-object v9, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    aget v10, v5, v8

    invoke-virtual {v9, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 227
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/exsettings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 228
    const-string v9, "%03d%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "mccMnc":Ljava/lang/String;
    const-string v9, "Lte4GEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slot: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mccMnc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mCtMccMncs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 231
    .local v1, "ctMccMnc":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 236
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ctMccMnc":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mccMnc":Ljava/lang/String;
    :goto_1
    return v7

    .line 230
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "ctMccMnc":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mccMnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ctMccMnc":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_1
    move v7, v8

    .line 236
    goto :goto_1
.end method

.method private isDdsSubInLteMode()Z
    .locals 7

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "rlt":Z
    iget-object v4, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 114
    .local v1, "ddsSubId":I
    iget-object v4, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 115
    .local v0, "ddsSlotId":I
    invoke-direct {p0, v0}, Lcom/android/exsettings/Lte4GEnabler;->getPreferredNetworkType(I)I

    move-result v3

    .line 116
    .local v3, "type":I
    const/16 v4, 0x16

    if-eq v3, v4, :cond_0

    const/16 v4, 0x14

    if-eq v3, v4, :cond_0

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 128
    const/4 v2, 0x1

    .line 130
    :cond_1
    const-string v4, "Lte4GEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDdsSubInLteMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v2
.end method

.method private isPrefTDDDataOnly(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network_band_preferred"

    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    .local v1, "tddEnabled":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 182
    .end local v1    # "tddEnabled":I
    :cond_0
    :goto_0
    return v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private promptUser()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0b7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006e

    new-instance v2, Lcom/android/exsettings/Lte4GEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/Lte4GEnabler$2;-><init>(Lcom/android/exsettings/Lte4GEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006d

    new-instance v2, Lcom/android/exsettings/Lte4GEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/Lte4GEnabler$1;-><init>(Lcom/android/exsettings/Lte4GEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 164
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/exsettings/Lte4GEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/Lte4GEnabler$3;-><init>(Lcom/android/exsettings/Lte4GEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    :cond_0
    return-void
.end method

.method private setPrefNetwork()V
    .locals 6

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 202
    const-string v3, "Lte4GEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 208
    .local v0, "ddsSlotId":I
    invoke-direct {p0, v0}, Lcom/android/exsettings/Lte4GEnabler;->getProperNwMode(I)I

    move-result v2

    .line 209
    .local v2, "networkType":I
    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/Lte4GEnabler;->storeNwModeIntoDb(II)V

    .line 210
    invoke-direct {p0, v0}, Lcom/android/exsettings/Lte4GEnabler;->isPrefTDDDataOnly(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const/16 v3, 0xb

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/exsettings/Lte4GEnabler;->setPrefNetwork(III)V

    .line 222
    .end local v0    # "ddsSlotId":I
    .end local v2    # "networkType":I
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v0    # "ddsSlotId":I
    .restart local v2    # "networkType":I
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/exsettings/Lte4GEnabler;->setPrefNetwork(II)V

    goto :goto_0

    .line 216
    .end local v0    # "ddsSlotId":I
    .end local v2    # "networkType":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v3, Lcom/android/exsettings/Lte4GEnabler;->sPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 217
    invoke-direct {p0, v1}, Lcom/android/exsettings/Lte4GEnabler;->getProperNwMode(I)I

    move-result v2

    .line 218
    .restart local v2    # "networkType":I
    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/Lte4GEnabler;->storeNwModeIntoDb(II)V

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/android/exsettings/Lte4GEnabler;->setPrefNetwork(II)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setPrefNetwork(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "network"    # I

    .prologue
    .line 259
    new-instance v2, Landroid/os/Messenger;

    sget-object v3, Lcom/android/exsettings/Lte4GEnabler;->mHandler:Lcom/android/exsettings/Lte4GEnabler$MyHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 260
    .local v2, "msger":Landroid/os/Messenger;
    sget-object v3, Lcom/android/exsettings/Lte4GEnabler;->mHandler:Lcom/android/exsettings/Lte4GEnabler$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 262
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "slot"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v3, "network"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v3, "callback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 268
    const-string v3, "set_pref_network"

    invoke-direct {p0, v3, v0}, Lcom/android/exsettings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 269
    return-void
.end method

.method private setSwitchStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->isDdsSubInLteMode()Z

    move-result v0

    .line 102
    .local v0, "isLTEMode":Z
    iget-object v2, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/Lte4GEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/Lte4GEnabler;->isThereSimReady()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method private storeNwModeIntoDb(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode_default"

    invoke-static {v1, v2, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 251
    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 252
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public isThereSimReady()Z
    .locals 5

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "rlt":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/exsettings/Lte4GEnabler;->sPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 137
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 140
    :cond_1
    const-string v2, "Lte4GEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThereSimReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->setSwitchStatus()V

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method public setPrefNetwork(III)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "network"    # I
    .param p3, "band"    # I

    .prologue
    .line 272
    sget-object v2, Lcom/android/exsettings/Lte4GEnabler;->mHandler:Lcom/android/exsettings/Lte4GEnabler$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/exsettings/Lte4GEnabler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 275
    new-instance v2, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 278
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v2, "network"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string v2, "band"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v2, "callback"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    const-string v2, "set_pref_network"

    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/Lte4GEnabler;->callBinder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 284
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "sw"    # Landroid/widget/Switch;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 93
    invoke-direct {p0}, Lcom/android/exsettings/Lte4GEnabler;->setSwitchStatus()V

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/exsettings/Lte4GEnabler;->mLte4GEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
