.class public Lcom/android/exsettings/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mSignalIcon:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 75
    new-array v0, v2, [I

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 77
    new-array v0, v3, [I

    const v1, 0x7f01003f

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0054
        0x7f0c0055
        0x7f0c0056
        0x7f0c0057
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 309
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointPreference$1;-><init>(Lcom/android/exsettings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 104
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 105
    const v0, 0x7f0400c9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 106
    const-string v0, "cmcc_info"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 108
    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 109
    iput v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 110
    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 309
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointPreference$1;-><init>(Lcom/android/exsettings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 117
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 118
    const v0, 0x7f0400c9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 119
    const-string v0, "cmcc_info"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 121
    iput-object p3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    .line 122
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 123
    iput-boolean p4, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    .line 127
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/exsettings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 131
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 133
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->refresh()V

    .line 134
    return-void
.end method

.method private getFrequencyBand()Ljava/lang/String;
    .locals 5

    .prologue
    .line 397
    const-string v0, ""

    .line 398
    .local v0, "band":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 400
    .local v1, "frequency":I
    const/16 v2, 0x960

    if-lt v1, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v1, v2, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0265

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .end local v1    # "frequency":I
    :cond_0
    :goto_0
    return-object v0

    .line 403
    .restart local v1    # "frequency":I
    :cond_1
    const/16 v2, 0x1324

    if-lt v1, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v1, v2, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0266

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_2
    const-string v2, "Settings.AccessPointPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isCMCCAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z
    .locals 2
    .param p0, "mAccessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-static {p0, p1}, Lcom/android/exsettings/wifi/AccessPointPreference;->isCarrierAp(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isCMCCAUTOAP(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z
    .locals 2
    .param p0, "mAccessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/android/exsettings/wifi/AccessPointPreference;->isCarrierAp(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isCarrierAp(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z
    .locals 4
    .param p0, "mAccessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 339
    if-nez p0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    const-string v2, "CMCC-WEB"

    iget-object v3, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    :cond_2
    iget v2, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_3
    const-string v2, "CMCC"

    iget-object v3, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget v2, p0, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 354
    goto :goto_0
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method createAPBundle(Lcom/android/exsettingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 14
    .param p1, "ap"    # Lcom/android/exsettingslib/wifi/AccessPoint;

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x2e

    .line 414
    if-nez p1, :cond_0

    .line 415
    const/4 v2, 0x0

    .line 470
    :goto_0
    return-object v2

    .line 417
    :cond_0
    const/4 v7, 0x2

    .line 418
    .local v7, "ipStyle":I
    const-string v1, "None"

    .line 419
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v10, "SSID"

    iget-object v11, p1, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v10, "SECURITY"

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v10, "LEVEL"

    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v10, "CONFIG"

    iget-object v11, p1, Lcom/android/exsettingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 426
    const-string v10, "STATE"

    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_1
    const-string v10, "NETWORKID"

    iget v11, p1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget v10, p1, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v10, v13, :cond_1

    .line 433
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 434
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v10, v11, :cond_5

    .line 435
    const/4 v7, 0x1

    .line 436
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    .line 437
    .local v8, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v8, :cond_4

    iget-object v10, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v10, :cond_4

    .line 438
    iget-object v10, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 458
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_1
    :goto_2
    const-string v10, "IPSTYLE"

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v10, "IPADRR"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 462
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    if-eq v10, v13, :cond_2

    .line 463
    const-string v10, "SPEED"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    :cond_2
    const-string v10, "FREQUENCY"

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getFrequencyBand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v10, "SECURITY_INT"

    iget v11, p1, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, "accessPointSavedState":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 469
    const-string v10, "wifi_ap_state"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 428
    .end local v0    # "accessPointSavedState":Landroid/os/Bundle;
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v10, "STATE"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v8    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 443
    .end local v8    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    const/4 v7, 0x0

    .line 444
    invoke-virtual {p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 445
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_6

    .line 446
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 447
    .local v5, "ipAddr":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v6, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v10, v5, 0xff

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v11, v5, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    goto/16 :goto_2

    .line 454
    .end local v5    # "ipAddr":I
    .end local v6    # "ipBuf":Ljava/lang/StringBuffer;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public getAccessPoint()Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x4

    const/4 v11, 0x0

    const v10, 0x7f0201d9

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 145
    const v6, 0x7f12018e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mSignalIcon:Landroid/widget/ImageView;

    .line 146
    const v6, 0x7f120157

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 147
    .local v2, "infoButton":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    const v6, 0x7f120032

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 152
    .local v5, "linkIcon":Landroid/widget/ImageView;
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_1

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "device_provisioned"

    invoke-static {v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 157
    .local v4, "isProvisioned":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "user_setup_complete"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "isComplete":I
    if-ne v4, v7, :cond_2

    if-ne v3, v7, :cond_2

    .line 159
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_1

    .line 160
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const v6, 0x7f0201d9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v3    # "isComplete":I
    .end local v4    # "isProvisioned":I
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v6, :cond_6

    .line 206
    :goto_1
    return-void

    .line 164
    .restart local v3    # "isComplete":I
    .restart local v4    # "isProvisioned":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v9, :cond_3

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 165
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    const v6, 0x7f0201d9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    .end local v3    # "isComplete":I
    .end local v4    # "isProvisioned":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_4

    .line 173
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_4
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3    # "isComplete":I
    .restart local v4    # "isProvisioned":I
    :cond_5
    const/4 v6, 0x4

    :try_start_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 188
    .end local v3    # "isComplete":I
    .end local v4    # "isProvisioned":I
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 191
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mSignalIcon:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 194
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mSignalIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_7
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 199
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 201
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v11, v11, v9, v11}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 203
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    const-string v6, "cmcc"

    const-string v10, "persist.carrier.mode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    :cond_8
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move v6, v8

    .line 203
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/wifi/AccessPointInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, "apInfoIntent":Landroid/content/Intent;
    const-string v1, "APInfo"

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->createAPBundle(Lcom/android/exsettingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 301
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 246
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_3

    .line 247
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 254
    .local v1, "level":I
    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    if-eq v1, v2, :cond_0

    .line 255
    iput v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    .line 256
    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->notifyChanged()V

    .line 259
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 261
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-static {v2, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->isCarrierAp(Lcom/android/exsettingslib/wifi/AccessPoint;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    const-string v3, "CMCC-WEB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v3, "cmcc_login_status_recode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 271
    const v2, 0x7f0c0c3a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 280
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 281
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    const-string v3, ","

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 283
    :cond_1
    if-ltz v1, :cond_2

    sget-object v2, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 284
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    const-string v3, ","

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/exsettings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 287
    :cond_2
    return-void

    .line 249
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    :pswitch_0
    const v2, 0x7f0c0c3b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 268
    :pswitch_1
    const v2, 0x7f0c0c3c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 275
    :cond_4
    iget-boolean v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 234
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    # invokes: Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;->access$000(Lcom/android/exsettings/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 240
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 209
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 210
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 221
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_3

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 218
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v1, Lcom/android/exsettings/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_1

    .line 225
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
