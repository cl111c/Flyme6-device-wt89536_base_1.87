.class public Lcom/android/exsettings/wifi/AccessPointInfo;
.super Landroid/app/Activity;
.source "AccessPointInfo.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/AccessPointInfo$13;,
        Lcom/android/exsettings/wifi/AccessPointInfo$PskType;
    }
.end annotation


# instance fields
.field private CMCCLoginStatus:I

.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private isConnectedLink:Z

.field private mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mApAddr:Landroid/widget/TextView;

.field private mApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mApFrequency:Landroid/widget/TextView;

.field private mApRssi:Landroid/widget/TextView;

.field private mApSecurity:Landroid/widget/TextView;

.field private mApSpeed:Landroid/widget/TextView;

.field private mApStatus:Landroid/widget/TextView;

.field private mCMCCAccountItem:Landroid/widget/TextView;

.field private mCMCCAccountNumber:Landroid/widget/TextView;

.field private mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

.field private mCMCCListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCerPathString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCert_Cnt:I

.field private mCert_Set:Z

.field private mCertificateAs:Ljava/lang/String;

.field private mCertificateAsPath:Ljava/lang/String;

.field private mCertificatePathIndex:I

.field private mCertificateSpinner:Landroid/widget/Spinner;

.field private mCertificateText:Landroid/widget/TextView;

.field private mCertificateUser:Ljava/lang/String;

.field private mCertificateUserPath:Ljava/lang/String;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mDelete:Landroid/widget/Button;

.field private mDialog:Lcom/android/exsettings/wifi/WifiDialog;

.field private mDisconnect:Landroid/widget/Button;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAkaAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapMethods:[Ljava/lang/String;

.field private mEapSimAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mFrequency:Ljava/lang/String;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddr:Ljava/lang/String;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIpStyle:I

.field private mJoin:Landroid/widget/Button;

.field private mLevel:I

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkId:I

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mOffLine:Landroid/widget/Button;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurity:Ljava/lang/String;

.field private mSecurityInt:I

.field private mSecurityString:Ljava/lang/String;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mSsid:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mWapiKeyTypeSpinner:Landroid/widget/Spinner;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private sp:Landroid/content/SharedPreferences;

.field private tm:Landroid/telephony/TelephonyManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificatePathIndex:I

    .line 150
    iput-boolean v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Set:Z

    .line 151
    iput v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Cnt:I

    .line 196
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 199
    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 233
    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    .line 234
    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 262
    iput-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 264
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 265
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 297
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$1;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 308
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$2;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 318
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$3;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 330
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$4;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$5;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$5;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCListener:Landroid/content/DialogInterface$OnClickListener;

    .line 363
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$6;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$6;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo;->doLogoutAndDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exsettings/wifi/AccessPointInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->clearAccountInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exsettings/wifi/AccessPointInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exsettings/wifi/AccessPointInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->ipAndProxyFieldsAreValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/WifiDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/AccessPointInfo;)Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/wifi/AccessPointInfo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/wifi/AccessPointInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo;->recordCMCCStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exsettings/wifi/AccessPointInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/wifi/AccessPointInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointInfo;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    return v0
.end method

.method private clearAccountInfo()V
    .locals 2

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1148
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1150
    return-void
.end method

.method private disableEnabledAps(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p1, "networkIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1827
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1828
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1829
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1831
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1832
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1836
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private doLogout(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1053
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$9;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo$9;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V

    .line 1072
    .local v0, "logoutRunnable":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1073
    return-void
.end method

.method private doLogoutAndDelete(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1079
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$10;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo$10;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V

    .line 1100
    .local v0, "logoutRunnable":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1101
    return-void
.end method

.method private doLogoutAndDisconnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1105
    new-instance v0, Lcom/android/exsettings/wifi/AccessPointInfo$11;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo$11;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;Ljava/lang/String;)V

    .line 1125
    .local v0, "logoutRunnable":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1126
    return-void
.end method

.method private enableListedAps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1817
    .local p1, "networkIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1818
    .local v1, "networkId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    .line 1822
    .end local v1    # "networkId":I
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 1823
    return-void
.end method

.method private getCMCCAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_account_number_recode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCMCCStatus()I
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1644
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :goto_0
    return-object v1

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1645
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/exsettings/wifi/AccessPointInfo$PskType;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 2259
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2260
    .local v0, "wpa":Z
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2261
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2262
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointInfo$PskType;->WPA_WPA2:Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    .line 2269
    :goto_0
    return-object v2

    .line 2263
    :cond_0
    if-eqz v1, :cond_1

    .line 2264
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointInfo$PskType;->WPA2:Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    goto :goto_0

    .line 2265
    :cond_1
    if-eqz v0, :cond_2

    .line 2266
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointInfo$PskType;->WPA:Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    goto :goto_0

    .line 2268
    :cond_2
    const-string v2, "AccessPointInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    sget-object v2, Lcom/android/exsettings/wifi/AccessPointInfo$PskType;->UNKNOWN:Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    goto :goto_0
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 2313
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    const/4 v0, 0x1

    .line 2324
    :goto_0
    return v0

    .line 2315
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2316
    const/4 v0, 0x2

    goto :goto_0

    .line 2317
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2318
    const/4 v0, 0x3

    goto :goto_0

    .line 2319
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2320
    const/4 v0, 0x4

    goto :goto_0

    .line 2321
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2322
    const/4 v0, 0x5

    goto :goto_0

    .line 2324
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getconfig()Landroid/net/wifi/WifiConfiguration;
    .locals 14

    .prologue
    .line 2029
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2031
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 2032
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2036
    :goto_0
    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 2038
    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    packed-switch v9, :pswitch_data_0

    .line 2192
    const/4 v9, 0x0

    .line 2216
    :goto_1
    return-object v9

    .line 2034
    :cond_0
    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 2040
    :pswitch_0
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2198
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 2213
    :goto_3
    new-instance v9, Landroid/net/IpConfiguration;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v12, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v13, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    move-object v9, v2

    .line 2216
    goto :goto_1

    .line 2044
    :pswitch_1
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2045
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2046
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2047
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 2048
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 2049
    .local v4, "length":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2051
    .local v5, "password":Ljava/lang/String;
    const/16 v9, 0xa

    if-eq v4, v9, :cond_2

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_2

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_3

    :cond_2
    const-string v9, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2053
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    goto :goto_2

    .line 2055
    :cond_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    goto :goto_2

    .line 2061
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2062
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 2063
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2064
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2065
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 2067
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 2073
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2074
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 2075
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2076
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2077
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 2082
    .end local v5    # "password":Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 2083
    const-string v9, "AccessPointInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wapiPskType  WAPI PSK key type  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2079
    .restart local v5    # "password":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_4

    .line 2087
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2088
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateAs:Ljava/lang/String;

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 2089
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateUser:Ljava/lang/String;

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 2093
    :pswitch_5
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2094
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 2095
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2097
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v10, "CMCC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2099
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2100
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 2101
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 2102
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 2103
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2104
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2105
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2109
    :cond_7
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v10, "CMCC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2111
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2112
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 2113
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 2114
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 2115
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2116
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2117
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2121
    :cond_8
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v10, "CMCC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 2122
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object v9, v2

    .line 2123
    goto/16 :goto_1

    .line 2126
    :cond_9
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 2127
    .local v3, "eapMethod":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 2128
    .local v6, "phase2Method":I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 2130
    packed-switch v3, :pswitch_data_2

    .line 2164
    :pswitch_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 2167
    :goto_5
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2168
    .local v0, "caCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2169
    const-string v0, ""

    .line 2170
    :cond_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 2171
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2172
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2173
    const-string v1, ""

    .line 2174
    :cond_b
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 2175
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2176
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2179
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2183
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2184
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2137
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_7
    packed-switch v6, :pswitch_data_3

    .line 2148
    const-string v9, "AccessPointInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown phase2 method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2139
    :pswitch_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 2142
    :pswitch_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 2145
    :pswitch_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 2154
    :pswitch_b
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2155
    .local v7, "selectedSimCardName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 2157
    .local v8, "selectedSimCardNumber":I
    const-string v9, "AccessPointInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedSimCardNumber is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 2159
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 2188
    .end local v7    # "selectedSimCardName":Ljava/lang/String;
    .end local v8    # "selectedSimCardNumber":I
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_c
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2200
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    .end local v3    # "eapMethod":I
    .end local v6    # "phase2Method":I
    :pswitch_c
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 2204
    :pswitch_d
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 2208
    :pswitch_e
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 2038
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2198
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 2130
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 2137
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private handleCertificateChange(I)V
    .locals 4
    .param p1, "Certificate"    # I

    .prologue
    .line 845
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCerPathString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 846
    .local v1, "string":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateUser:Ljava/lang/String;

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateUserPath:Ljava/lang/String;

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateAs:Ljava/lang/String;

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/as.cer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateAsPath:Ljava/lang/String;

    .line 852
    iput p1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificatePathIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v1    # "string":[Ljava/lang/String;
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1722
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1726
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 1727
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 1728
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 1729
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 1769
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 1722
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 1734
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 1735
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1736
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 1738
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 1740
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1741
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1743
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1744
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1745
    .local v3, "port":I
    const/4 v5, 0x0

    .line 1747
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1748
    invoke-static {v2, v4, v1}, Lcom/android/exsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1752
    :goto_2
    if-nez v5, :cond_3

    .line 1753
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 1769
    goto :goto_1

    .line 1749
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c0101

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 1755
    goto :goto_1

    .line 1757
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 1758
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1759
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1760
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 1761
    goto :goto_1

    .line 1763
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1764
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 1765
    goto :goto_1

    .line 1767
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private isConfigChanged()Z
    .locals 27

    .prologue
    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .line 1843
    .local v20, "newWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 1845
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type 10"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/16 v25, 0x1

    .line 1970
    :goto_0
    return v25

    .line 1848
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 1849
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type wapiPskType Changed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/16 v25, 0x1

    goto :goto_0

    .line 1855
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    :cond_2
    const/4 v15, 0x1

    .line 1859
    .local v15, "isWapiCertChanged":Z
    :goto_1
    if-eqz v15, :cond_4

    .line 1860
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isWapiCertChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1857
    .end local v15    # "isWapiCertChanged":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1867
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "CMCC-AUTO"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1869
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1871
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/4 v7, 0x1

    .line 1872
    .local v7, "isEapMethodChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1873
    .local v13, "isPhase2MethodChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    const/4 v3, 0x1

    .line 1874
    .local v3, "isCaCertChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const/4 v4, 0x1

    .line 1875
    .local v4, "isClientCertChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    const/4 v9, 0x1

    .line 1876
    .local v9, "isIdentityChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    const/4 v2, 0x1

    .line 1877
    .local v2, "isAnonymousIdentityChanged":Z
    :goto_7
    const/4 v12, 0x0

    .line 1878
    .local v12, "isPasswordChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->isShown()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->length()I

    move-result v25

    if-lez v25, :cond_6

    .line 1880
    const/4 v12, 0x1

    .line 1883
    :cond_6
    if-nez v7, :cond_7

    if-nez v13, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v9, :cond_7

    if-nez v2, :cond_7

    if-eqz v12, :cond_e

    .line 1885
    :cond_7
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type EapMethodChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1871
    .end local v2    # "isAnonymousIdentityChanged":Z
    .end local v3    # "isCaCertChanged":Z
    .end local v4    # "isClientCertChanged":Z
    .end local v7    # "isEapMethodChanged":Z
    .end local v9    # "isIdentityChanged":Z
    .end local v12    # "isPasswordChanged":Z
    .end local v13    # "isPhase2MethodChanged":Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1872
    .restart local v7    # "isEapMethodChanged":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1873
    .restart local v13    # "isPhase2MethodChanged":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1874
    .restart local v3    # "isCaCertChanged":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1875
    .restart local v4    # "isClientCertChanged":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    .line 1876
    .restart local v9    # "isIdentityChanged":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1892
    .end local v3    # "isCaCertChanged":Z
    .end local v4    # "isClientCertChanged":Z
    .end local v7    # "isEapMethodChanged":Z
    .end local v9    # "isIdentityChanged":Z
    .end local v13    # "isPhase2MethodChanged":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    if-nez v20, :cond_10

    .line 1893
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1896
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 1897
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type ProxySettings changed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1899
    :cond_11
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v25

    sget-object v26, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v20, :cond_16

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v22

    .line 1902
    .local v22, "oldProxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v17

    .line 1903
    .local v17, "newProxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-virtual/range {v22 .. v22}, Landroid/net/ProxyInfo;->getPort()I

    move-result v25

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPort()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    invoke-virtual/range {v22 .. v22}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    :cond_12
    const/4 v14, 0x1

    .line 1906
    .local v14, "isStaticProxyChanged":Z
    :goto_8
    if-eqz v14, :cond_16

    .line 1907
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isStaticProxyChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1903
    .end local v14    # "isStaticProxyChanged":Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_8

    .line 1911
    .end local v17    # "newProxyProperties":Landroid/net/ProxyInfo;
    .end local v22    # "oldProxyProperties":Landroid/net/ProxyInfo;
    :cond_14
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v25

    sget-object v26, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v20, :cond_16

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v23

    .line 1914
    .local v23, "oldProxyPropertiesPac":Landroid/net/ProxyInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v18

    .line 1915
    .local v18, "newProxyPropertiesPac":Landroid/net/ProxyInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    const/4 v11, 0x1

    .line 1916
    .local v11, "isPacProxyChanged":Z
    :goto_9
    if-eqz v11, :cond_16

    .line 1917
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isPacProxyChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1915
    .end local v11    # "isPacProxyChanged":Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_9

    .line 1925
    .end local v18    # "newProxyPropertiesPac":Landroid/net/ProxyInfo;
    .end local v23    # "oldProxyPropertiesPac":Landroid/net/ProxyInfo;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_17

    .line 1926
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type IpAssignment changed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1928
    :cond_17
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v25

    sget-object v26, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    if-eqz v25, :cond_20

    if-eqz v20, :cond_20

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v24

    .line 1931
    .local v24, "oldStaticConfig":Landroid/net/StaticIpConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v19

    .line 1933
    .local v19, "newStaticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v24, :cond_20

    if-eqz v19, :cond_20

    .line 1934
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 1935
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_19

    :cond_18
    const/4 v10, 0x1

    .line 1937
    .local v10, "isIpChanged":Z
    :goto_a
    if-eqz v10, :cond_1a

    .line 1938
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isIpChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1935
    .end local v10    # "isIpChanged":Z
    :cond_19
    const/4 v10, 0x0

    goto :goto_a

    .line 1943
    :cond_1a
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 1944
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    const/4 v8, 0x1

    .line 1945
    .local v8, "isGatewayChanged":Z
    :goto_b
    if-eqz v8, :cond_1c

    .line 1946
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isGatewayChanged"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1944
    .end local v8    # "isGatewayChanged":Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_b

    .line 1951
    :cond_1c
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1952
    .local v21, "oldDnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1953
    .local v16, "newDnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 1954
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/InetAddress;

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/InetAddress;

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1d

    const/4 v5, 0x1

    .line 1955
    .local v5, "isDns1Changed":Z
    :goto_c
    if-eqz v5, :cond_1e

    .line 1956
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isDns1Changed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1954
    .end local v5    # "isDns1Changed":Z
    :cond_1d
    const/4 v5, 0x0

    goto :goto_c

    .line 1960
    :cond_1e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_20

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 1961
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/InetAddress;

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/InetAddress;

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1f

    const/4 v6, 0x1

    .line 1962
    .local v6, "isDns2Changed":Z
    :goto_d
    if-eqz v6, :cond_20

    .line 1963
    const-string v25, "AccessPointInfo"

    const-string v26, "isConfigChanged type isDns2Changed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1961
    .end local v6    # "isDns2Changed":Z
    :cond_1f
    const/4 v6, 0x0

    goto :goto_d

    .line 1970
    .end local v16    # "newDnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v19    # "newStaticConfig":Landroid/net/StaticIpConfiguration;
    .end local v21    # "oldDnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v24    # "oldStaticConfig":Landroid/net/StaticIpConfiguration;
    :cond_20
    const/16 v25, 0x0

    goto/16 :goto_0
.end method

.method private isCurrentSSIDConnected()Z
    .locals 2

    .prologue
    .line 1810
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    .line 1799
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1800
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1801
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1802
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1803
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1806
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1167
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-virtual {v3, p2, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1169
    :cond_0
    new-array v2, v6, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 1179
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1181
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1182
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1183
    return-void

    .line 1173
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 1174
    .local v1, "array":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 1175
    array-length v3, v2

    invoke-static {v2, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1176
    move-object v2, v1

    goto :goto_0
.end method

.method private recordCMCCStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1132
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1134
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1316
    const v0, 0x7f120292

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1297
    const v0, 0x7f12028c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1299
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 1978
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    .line 1980
    .local v6, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    .local v3, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCerPathString:Ljava/util/ArrayList;

    .line 1983
    iput-boolean v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Set:Z

    .line 1984
    iput v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Cnt:I

    .line 1986
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/wapi_certificate"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1988
    .local v5, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1989
    const-string v9, "AccessPointInfo"

    const-string v10, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1995
    .local v4, "certificateList":[Ljava/io/File;
    array-length v9, v4

    iput v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Cnt:I

    .line 1996
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v9, v4

    if-ge v7, v9, :cond_4

    .line 1997
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1998
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v7

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/as.cer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v0, "ASCertFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v7

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/user.cer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2001
    .local v1, "UserCertFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2002
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCerPathString:Ljava/util/ArrayList;

    aget-object v10, v4, v7

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Set:Z

    .line 1996
    .end local v0    # "ASCertFile":Ljava/io/File;
    .end local v1    # "UserCertFile":Ljava/io/File;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2008
    :cond_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v2, v6, v10, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2011
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2012
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2015
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v9, v9, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 2016
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->sp:Landroid/content/SharedPreferences;

    const-string v10, "wapiCertIndex"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2017
    .local v8, "wapiCertPathIndex":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v8}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2022
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v4    # "certificateList":[Ljava/io/File;
    .end local v7    # "i":I
    .end local v8    # "wapiCertPathIndex":I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1309
    const v0, 0x7f120290

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1321
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    const v0, 0x7f120294

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    const v0, 0x7f120296

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1292
    const v0, 0x7f12028a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1294
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1153
    if-eqz p2, :cond_0

    .line 1155
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1156
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1157
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1163
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1156
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 1288
    const v0, 0x7f120288

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1302
    const v0, 0x7f12028e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1304
    return-void
.end method

.method private setVisibility(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1636
    invoke-virtual {p0, p1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1637
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 12
    .param p1, "eapMethod"    # I

    .prologue
    const v11, 0x7f120288

    const v10, 0x1090009

    const v9, 0x1090008

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1187
    const v4, 0x7f120286

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    const v4, 0x7f120290

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    const v4, 0x7f12028c

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    const v4, 0x7f120294

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    const v4, 0x7f120296

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    packed-switch p1, :pswitch_data_0

    .line 1285
    :goto_0
    return-void

    .line 1198
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPhase2Invisible()V

    .line 1199
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setCaCertInvisible()V

    .line 1200
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setAnonymousIdentInvisible()V

    .line 1201
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setUserCertInvisible()V

    .line 1202
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSimCardInvisible()V

    goto :goto_0

    .line 1205
    :pswitch_1
    const v4, 0x7f12028e

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPhase2Invisible()V

    .line 1207
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setAnonymousIdentInvisible()V

    .line 1208
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPasswordInvisible()V

    .line 1209
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSimCardInvisible()V

    goto :goto_0

    .line 1213
    :pswitch_2
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1215
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1217
    :cond_0
    const v4, 0x7f12028a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    const v4, 0x7f120292

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setUserCertInvisible()V

    .line 1220
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSimCardInvisible()V

    goto :goto_0

    .line 1224
    :pswitch_3
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_1

    .line 1225
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1226
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1228
    :cond_1
    const v4, 0x7f12028a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    const v4, 0x7f120292

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setUserCertInvisible()V

    .line 1231
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSimCardInvisible()V

    goto :goto_0

    .line 1235
    :pswitch_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v4, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1239
    .local v1, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1241
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1244
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v4, v8, :cond_2

    .line 1245
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v3, v4, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 1246
    .local v3, "simCard":I
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimDisplayNames:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1247
    .local v2, "selectedSimCardName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v4, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1250
    .end local v2    # "selectedSimCardName":Ljava/lang/String;
    .end local v3    # "simCard":I
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPhase2Invisible()V

    .line 1253
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setCaCertInvisible()V

    .line 1254
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setAnonymousIdentInvisible()V

    .line 1255
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setUserCertInvisible()V

    .line 1256
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPasswordInvisible()V

    .line 1257
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1260
    .end local v1    # "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1264
    .local v0, "eapAkaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1266
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1269
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v4, v8, :cond_3

    .line 1270
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v3, v4, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 1271
    .restart local v3    # "simCard":I
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimDisplayNames:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1272
    .restart local v2    # "selectedSimCardName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v4, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1275
    .end local v2    # "selectedSimCardName":Ljava/lang/String;
    .end local v3    # "simCard":I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPhase2Invisible()V

    .line 1278
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setCaCertInvisible()V

    .line 1279
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setAnonymousIdentInvisible()V

    .line 1280
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setUserCertInvisible()V

    .line 1281
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setPasswordInvisible()V

    .line 1282
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 9

    .prologue
    const v8, 0x7f1202a5

    const/4 v7, 0x0

    const v6, 0x7f1202a7

    const/16 v5, 0x8

    .line 1489
    const/4 v0, 0x0

    .line 1491
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v3, v3, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1494
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1497
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1498
    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1500
    const v3, 0x7f1202a8

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    .line 1501
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1502
    const v3, 0x7f1202a9

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mGatewayView:Landroid/widget/TextView;

    .line 1503
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1504
    const v3, 0x7f1202aa

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1506
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1507
    const v3, 0x7f1202ab

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns1View:Landroid/widget/TextView;

    .line 1508
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1509
    const v3, 0x7f1202ac

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns2View:Landroid/widget/TextView;

    .line 1510
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1512
    :cond_1
    if-eqz v0, :cond_5

    .line 1513
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1514
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_7

    .line 1515
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1516
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1523
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1527
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1528
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1530
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1531
    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1548
    const v3, 0x7f12029a

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    :cond_6
    return-void

    .line 1537
    .restart local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_7
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApAddr:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 1538
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApAddr:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1544
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f12029b

    const v8, 0x7f1202a1

    const v7, 0x7f12029e

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1556
    const/4 v0, 0x0

    .line 1558
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v3, v3, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1561
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1564
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1565
    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1568
    const v3, 0x7f1202a2

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    .line 1569
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1570
    const v3, 0x7f1202a3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPortView:Landroid/widget/TextView;

    .line 1571
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1572
    const v3, 0x7f1202a4

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1573
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1575
    :cond_1
    if-eqz v0, :cond_2

    .line 1576
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1577
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1578
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1603
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1604
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    :cond_3
    return-void

    .line 1583
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1584
    invoke-direct {p0, v7, v5}, Lcom/android/exsettings/wifi/AccessPointInfo;->setVisibility(II)V

    .line 1585
    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/wifi/AccessPointInfo;->setVisibility(II)V

    .line 1586
    const v3, 0x7f12029f

    invoke-direct {p0, v3, v6}, Lcom/android/exsettings/wifi/AccessPointInfo;->setVisibility(II)V

    .line 1588
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 1589
    const v3, 0x7f1202a0

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    .line 1590
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1592
    :cond_5
    if-eqz v0, :cond_2

    .line 1593
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1594
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1595
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1599
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    const v10, 0x7f120299

    const v9, 0x7f120298

    const v8, 0x7f120297

    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 1328
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v3, :cond_0

    .line 1486
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    .line 1336
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v5, "CMCC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1340
    :cond_1
    const v3, 0x7f120284

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1331
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v3, v3, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    goto :goto_1

    .line 1346
    :cond_3
    const v3, 0x7f120284

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    .line 1350
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1351
    const v3, 0x7f12025c

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    .line 1352
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1353
    const v3, 0x7f120274

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1354
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    .line 1355
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1357
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v3, v3, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 1358
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f0c02ce

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 1359
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 1360
    const-string v3, "AccessPointInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wapiPskType: in  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1370
    :cond_4
    :goto_2
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    .line 1371
    const v3, 0x7f12025c

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    const v3, 0x7f120295

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    const v3, 0x7f120274

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :cond_5
    :goto_3
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    .line 1402
    const v3, 0x7f120285

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1363
    :cond_6
    const-string v3, "AccessPointInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wapiPskType: in  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 1377
    :cond_7
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_8

    .line 1379
    const v3, 0x7f12025c

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    const v3, 0x7f120295

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    const v3, 0x7f120274

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1382
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateText:Landroid/widget/TextView;

    .line 1385
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    .line 1386
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->setCertificateSpinnerAdapter()V

    .line 1388
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1390
    :cond_8
    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    .line 1393
    const v3, 0x7f12025c

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    const v3, 0x7f120295

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    const v3, 0x7f120274

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    invoke-virtual {p0, v10}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1397
    invoke-virtual {p0, v8}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1405
    :cond_9
    const v3, 0x7f120285

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v3, :cond_c

    .line 1422
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethods:[Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    .line 1425
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1428
    const v3, 0x7f120287

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1429
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1430
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1431
    const v3, 0x7f12028b

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1432
    const v3, 0x7f120289

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 1433
    const v3, 0x7f12028d

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1434
    const v3, 0x7f12028f

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1435
    const v3, 0x7f120291

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapIdentityView:Landroid/widget/TextView;

    .line 1436
    const v3, 0x7f120293

    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1438
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/wifi/AccessPointInfo;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/wifi/AccessPointInfo;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1442
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v3, v3, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    .line 1443
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1444
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 1445
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1447
    .local v2, "phase2Method":I
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-le v3, v0, :cond_a

    .line 1448
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1451
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->showEapFieldsByMethod(I)V

    .line 1452
    packed-switch v0, :pswitch_data_0

    .line 1470
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1473
    :goto_4
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1474
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1475
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1454
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 1465
    :pswitch_1
    const-string v3, "AccessPointInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1456
    :pswitch_2
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1459
    :pswitch_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1462
    :pswitch_4
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1480
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v2    # "phase2Method":I
    :cond_b
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1481
    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1484
    :cond_c
    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1454
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 14
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    const v12, 0x7f0c030e

    const v11, 0x7f0c030c

    const/4 v10, 0x0

    .line 1651
    iget-object v13, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    if-nez v13, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return v10

    .line 1654
    :cond_1
    iget-object v13, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1655
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v10, v11

    .line 1656
    goto :goto_0

    .line 1658
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/exsettings/wifi/AccessPointInfo;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1659
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_3

    move v10, v11

    .line 1660
    goto :goto_0

    .line 1663
    :cond_3
    const/4 v9, -0x1

    .line 1665
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1666
    if-ltz v9, :cond_4

    const/16 v11, 0x20

    if-le v9, v11, :cond_5

    .line 1667
    :cond_4
    const v10, 0x7f0c030f

    goto :goto_0

    .line 1669
    :cond_5
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :goto_1
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1677
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1680
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 1681
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1682
    .local v0, "addr":[B
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x1

    aput-byte v13, v0, v11

    .line 1683
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1695
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1698
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1700
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns1View:Landroid/widget/TextView;

    const v13, 0x7f0c0311

    invoke-virtual {p0, v13}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    :goto_3
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 1710
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 1712
    if-nez v2, :cond_a

    move v10, v12

    .line 1713
    goto/16 :goto_0

    .line 1670
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1672
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v11, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const v13, 0x7f0c0317

    invoke-virtual {p0, v13}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1688
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/AccessPointInfo;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 1689
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_7

    .line 1690
    const v10, 0x7f0c030d

    goto/16 :goto_0

    .line 1692
    :cond_7
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 1702
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 1703
    if-nez v2, :cond_9

    move v10, v12

    .line 1704
    goto/16 :goto_0

    .line 1706
    :cond_9
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1715
    :cond_a
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1685
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v11

    goto :goto_2

    .line 1684
    :catch_2
    move-exception v11

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/AccessPointInfo$12;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$12;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2223
    return-void
.end method

.method public getSecurityString(ZILcom/android/exsettings/wifi/AccessPointInfo$PskType;)Ljava/lang/String;
    .locals 2
    .param p1, "concise"    # Z
    .param p2, "security"    # I
    .param p3, "pskType"    # Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    .prologue
    .line 2274
    packed-switch p2, :pswitch_data_0

    .line 2308
    if-eqz p1, :cond_8

    const-string v0, ""

    :goto_0
    return-object v0

    .line 2276
    :pswitch_0
    if-eqz p1, :cond_0

    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2279
    :pswitch_1
    sget-object v0, Lcom/android/exsettings/wifi/AccessPointInfo$13;->$SwitchMap$com$android$settings$wifi$AccessPointInfo$PskType:[I

    invoke-virtual {p3}, Lcom/android/exsettings/wifi/AccessPointInfo$PskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 2291
    if-eqz p1, :cond_4

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2281
    :pswitch_2
    if-eqz p1, :cond_1

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2284
    :pswitch_3
    if-eqz p1, :cond_2

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2287
    :pswitch_4
    if-eqz p1, :cond_3

    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2291
    :cond_4
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2295
    :pswitch_5
    if-eqz p1, :cond_5

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2300
    :pswitch_6
    if-eqz p1, :cond_6

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2303
    :pswitch_7
    if-eqz p1, :cond_7

    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2308
    :cond_8
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2279
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getWAPICertIsOK()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Set:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2244
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f120274

    if-ne v1, v2, :cond_0

    .line 2245
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2246
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 2250
    if-ltz v0, :cond_0

    .line 2251
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2254
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 2246
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x41800000    # 16.0f

    const/4 v9, 0x5

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1005
    :goto_0
    return-void

    .line 871
    :pswitch_0
    const-string v0, "AccessPointInfo"

    const-string v1, "The bt_connect clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-ne v0, v9, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "wapiCertIndex"

    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificatePathIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 881
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 884
    :cond_0
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    if-eq v0, v4, :cond_3

    .line 885
    const-string v0, "AccessPointInfo"

    const-string v1, "The bt_connect clicked  mNetworkId != INVALID_NETWORK_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 891
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto :goto_0

    .line 893
    :cond_3
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    if-ne v0, v4, :cond_6

    .line 895
    const-string v0, "AccessPointInfo"

    const-string v1, "The bt_connect clicked AccessPoint.SECURITY_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 898
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_5

    .line 899
    :cond_4
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 902
    :cond_5
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 903
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 904
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v7, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 905
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_0

    .line 908
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 912
    :cond_7
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .line 913
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCDialog:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->show()V

    goto/16 :goto_0

    .line 915
    :cond_8
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-eq v0, v9, :cond_9

    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 919
    :cond_9
    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPointSecurity:I

    if-ne v0, v9, :cond_a

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getWAPICertIsOK()Z

    move-result v0

    if-nez v0, :cond_a

    .line 920
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0c5a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 924
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_0

    .line 922
    :cond_a
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 927
    :cond_b
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_d

    .line 928
    :cond_c
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->setConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 932
    :cond_d
    new-instance v0, Lcom/android/exsettings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    .line 933
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDialog:Lcom/android/exsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiDialog;->show()V

    goto/16 :goto_0

    .line 940
    :pswitch_1
    const-string v0, "AccessPointInfo"

    const-string v1, "The bt_delete clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0c0c4f

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 944
    const v0, 0x7f0c0c50

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 946
    const v0, 0x104000a

    new-instance v1, Lcom/android/exsettings/wifi/AccessPointInfo$7;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$7;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 966
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/exsettings/wifi/AccessPointInfo$8;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/AccessPointInfo$8;-><init>(Lcom/android/exsettings/wifi/AccessPointInfo;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    .line 975
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 976
    const/4 v0, -0x2

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_0

    .line 979
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    :pswitch_2
    const-string v0, "AccessPointInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bt_offline clicked mSsid == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 982
    const-string v0, "CMCC-WEB"

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->doLogout(Ljava/lang/String;)V

    .line 987
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_0

    .line 984
    :cond_e
    const v0, 0x7f0c0c51

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 990
    :pswitch_3
    const-string v0, "AccessPointInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bt_disconnect clicked mSsid == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    const-string v1, "CMCC-WEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    if-eq v0, v3, :cond_f

    iget v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 995
    :cond_f
    const-string v0, "CMCC-WEB"

    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->doLogoutAndDisconnect(Ljava/lang/String;)V

    .line 1000
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_0

    .line 997
    :cond_10
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_3

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202af
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mContext:Landroid/content/Context;

    .line 388
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 389
    const-string v26, "cmcc_info"

    const/16 v27, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 392
    const-string v26, "wapi"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->sp:Landroid/content/SharedPreferences;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->editor:Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-static/range {p0 .. p0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->getInstance(Landroid/content/Context;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->init()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 399
    const-string v26, "AccessPointInfo"

    const-string v27, "CMCCWLANAuthenticator init successful"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :goto_0
    new-instance v26, Landroid/widget/ArrayAdapter;

    const v27, 0x1090008

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0028

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v26, v0

    const v27, 0x1090009

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 411
    new-instance v26, Landroid/widget/ArrayAdapter;

    const v27, 0x1090008

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0029

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v26, v0

    const v27, 0x1090009

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 416
    const-string v26, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 418
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    .line 419
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    .line 420
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0027

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethods:[Ljava/lang/String;

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a001e

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 424
    .local v24, "signal":[Ljava/lang/String;
    const v26, 0x7f0c02cf

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->unspecifiedCert:Ljava/lang/String;

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 426
    .local v13, "intent":Landroid/content/Intent;
    const-string v26, "APInfo"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 427
    .local v7, "apInfo":Landroid/os/Bundle;
    const-string v26, "IS_CONNECTED_LINK"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->isConnectedLink:Z

    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->isConnectedLink:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 433
    const v26, 0x7f04013c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->setContentView(I)V

    .line 434
    const v26, 0x7f1202b5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    .line 435
    const v26, 0x7f1202b4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    .line 448
    :goto_1
    const v26, 0x7f120277

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    .line 449
    const v26, 0x7f12027f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSecurity:Landroid/widget/TextView;

    .line 450
    const v26, 0x7f120279

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApRssi:Landroid/widget/TextView;

    .line 451
    const v26, 0x7f12027b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSpeed:Landroid/widget/TextView;

    .line 452
    const v26, 0x7f120282

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApAddr:Landroid/widget/TextView;

    .line 454
    const v26, 0x7f1202b2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    .line 455
    const v26, 0x7f1202b0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    .line 456
    const v26, 0x7f1202af

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    .line 457
    const v26, 0x7f1202b1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v26, 0x7f1202a6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Spinner;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 466
    const v26, 0x7f12029d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Spinner;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getCMCCStatus()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    .line 470
    if-eqz v7, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->isConnectedLink:Z

    move/from16 v26, v0

    if-nez v26, :cond_26

    .line 472
    const-string v26, "SSID"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    .line 473
    const-string v26, "SECURITY"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurity:Ljava/lang/String;

    .line 474
    const-string v26, "SECURITY_INT"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    .line 475
    const-string v26, "LEVEL"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mLevel:I

    .line 476
    const-string v26, "CONFIG"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 477
    const-string v26, "STATE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/16 v26, 0x0

    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 478
    const-string v26, "SPEED"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSpeed:I

    .line 479
    const-string v26, "FREQUENCY"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mFrequency:Ljava/lang/String;

    .line 480
    const-string v26, "IPSTYLE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpStyle:I

    .line 481
    const-string v26, "IPADRR"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddr:Ljava/lang/String;

    .line 482
    const-string v26, "NETWORKID"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    .line 484
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v5, "accessPointSavedState":Landroid/os/Bundle;
    const-string v26, "wifi_ap_state"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 486
    new-instance v26, Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 491
    const v26, 0x7f12027c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const v26, 0x7f12027d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 497
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0c0c54

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getCMCCAccount()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mLevel:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mLevel:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApRssi:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mLevel:I

    move/from16 v27, v0

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSpeed:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSpeed:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c0c59

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApAddr:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAddr:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mFrequency:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurity:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_5

    .line 560
    const v26, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurity:Ljava/lang/String;

    .line 563
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSecurity:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpStyle:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_6

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpStyle:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 570
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v26

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 580
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 581
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 582
    .local v18, "lp_delete":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 583
    .local v20, "lp_offline":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 584
    .local v19, "lp_disconnect":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 587
    .local v9, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 588
    :cond_8
    const v26, 0x7f12027a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 589
    const v26, 0x7f120281

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 598
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 599
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 600
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 601
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 608
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_a

    .line 623
    const v26, 0x7f120280

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->ipAndProxyFieldsAreValid()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setEnabled(Z)V

    .line 822
    .end local v5    # "accessPointSavedState":Landroid/os/Bundle;
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "lp_delete":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "lp_disconnect":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "lp_offline":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->showSecurityFields()V

    .line 824
    :goto_9
    return-void

    .line 401
    .end local v7    # "apInfo":Landroid/os/Bundle;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v24    # "signal":[Ljava/lang/String;
    :cond_c
    const-string v26, "AccessPointInfo"

    const-string v27, "CMCCWLANAuthenticator init failed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .restart local v7    # "apInfo":Landroid/os/Bundle;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v24    # "signal":[Ljava/lang/String;
    :cond_d
    const v26, 0x7f04013b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->setContentView(I)V

    goto/16 :goto_1

    .line 440
    :cond_e
    if-eqz v7, :cond_f

    const-string v26, "SSID"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 441
    const v26, 0x7f04013c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->setContentView(I)V

    .line 442
    const v26, 0x7f1202b5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    .line 443
    const v26, 0x7f1202b4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 445
    :cond_f
    const v26, 0x7f04013b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->setContentView(I)V

    goto/16 :goto_1

    .line 477
    :cond_10
    const-string v26, "STATE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    goto/16 :goto_2

    .line 502
    .restart local v5    # "accessPointSavedState":Landroid/os/Bundle;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c2f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 506
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c57

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c57

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 513
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c56

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c56

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 520
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c58

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 524
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    if-nez v26, :cond_16

    .line 525
    const v26, 0x7f120276

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 527
    const v26, 0x7f1202b6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 530
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 539
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/exsettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 573
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v26

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_4

    .line 576
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 602
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v18    # "lp_delete":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19    # "lp_disconnect":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v20    # "lp_offline":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1a
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 603
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 604
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 605
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 606
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 611
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 612
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 613
    const/16 v26, 0x36c

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 614
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x24

    const/16 v29, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 619
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 615
    :cond_1d
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 616
    const/16 v26, 0x6ae

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 617
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x24

    const/16 v29, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_a

    .line 625
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 633
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 635
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 636
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 637
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 638
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 639
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 646
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    :cond_21
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_a

    .line 667
    const v26, 0x7f120283

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 640
    :cond_22
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 641
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 642
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 643
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 644
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_b

    .line 649
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 650
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 651
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 652
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 653
    const/16 v26, 0x192

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 654
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 661
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 655
    :cond_25
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 656
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 657
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 658
    const/16 v26, 0x32a

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 659
    const/16 v26, 0x66

    const/16 v27, 0x1e

    const/16 v28, 0x66

    const/16 v29, 0x1e

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_d

    .line 672
    .end local v5    # "accessPointSavedState":Landroid/os/Bundle;
    .end local v9    # "config":Landroid/content/res/Configuration;
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "lp_delete":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "lp_disconnect":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "lp_offline":Landroid/widget/LinearLayout$LayoutParams;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->isConnectedLink:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 674
    const v26, 0x7f12027c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 675
    const v26, 0x7f12027d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    .line 677
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 678
    .local v10, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v10, :cond_29

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v26

    if-eqz v26, :cond_29

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    .line 697
    const/16 v16, 0x2

    .line 698
    .local v16, "ipStyle":I
    const/4 v6, 0x0

    .line 699
    .local v6, "address":Ljava/lang/String;
    const/16 v26, 0x9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 702
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 704
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_28

    .line 706
    new-instance v26, Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 708
    :cond_28
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v26

    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2c

    .line 709
    const/16 v16, 0x1

    .line 710
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v25

    .line 711
    .local v25, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v25, :cond_2b

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 712
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 682
    .end local v6    # "address":Ljava/lang/String;
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "ipStyle":I
    .end local v25    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_29
    const-string v26, "AccessPointInfo"

    const-string v27, "Wifi is not connected,finish activity"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_9

    .line 691
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    goto/16 :goto_9

    .line 714
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "ipStyle":I
    .restart local v25    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 717
    .end local v25    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_2c
    const/16 v16, 0x0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2d

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    .line 720
    .local v14, "ipAddr":I
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 721
    .local v15, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v14, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 725
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 726
    goto/16 :goto_e

    .line 727
    .end local v14    # "ipAddr":I
    .end local v15    # "ipBuf":Ljava/lang/StringBuffer;
    :cond_2d
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 733
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v23

    .line 734
    .local v23, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v23, :cond_30

    .line 735
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2f
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_30

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/ScanResult;

    .line 737
    .local v22, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2f

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/exsettings/wifi/AccessPointInfo$PskType;

    move-result-object v21

    .line 741
    .local v21, "pskType":Lcom/android/exsettings/wifi/AccessPointInfo$PskType;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exsettings/wifi/AccessPointInfo;->getSecurityString(ZILcom/android/exsettings/wifi/AccessPointInfo$PskType;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityString:Ljava/lang/String;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_2f

    .line 743
    const v26, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityString:Ljava/lang/String;

    goto :goto_f

    .line 750
    .end local v21    # "pskType":Lcom/android/exsettings/wifi/AccessPointInfo$PskType;
    .end local v22    # "result":Landroid/net/wifi/ScanResult;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_37

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c0c54

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_31

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->CMCCLoginStatus:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_36

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountNumber:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getCMCCAccount()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :cond_31
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSecurity:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApRssi:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v27

    const/16 v28, 0x5

    invoke-static/range {v27 .. v28}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v27

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApSpeed:Landroid/widget/TextView;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c0c59

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApAddr:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-gt v0, v1, :cond_32

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 776
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_34

    .line 777
    const-string v8, ""

    .line 778
    .local v8, "band":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_33

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    .line 780
    .local v11, "frequency":I
    const/16 v26, 0x960

    move/from16 v0, v26

    if-lt v11, v0, :cond_38

    const/16 v26, 0x9c4

    move/from16 v0, v26

    if-ge v11, v0, :cond_38

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0265

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 790
    .end local v11    # "frequency":I
    :cond_33
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApFrequency:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    .end local v8    # "band":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_35

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v26

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 803
    :cond_35
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDelete:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSsid:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3c

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "CMCC-WEB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3d

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 817
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSecurityInt:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_b

    .line 818
    const v26, 0x7f120283

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 758
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCMCCAccountItem:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x7f0c0c2f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AccessPointInfo;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 764
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mApStatus:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0c58

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 783
    .restart local v8    # "band":Ljava/lang/String;
    .restart local v11    # "frequency":I
    :cond_38
    const/16 v26, 0x1324

    move/from16 v0, v26

    if-lt v11, v0, :cond_39

    const/16 v26, 0x170c

    move/from16 v0, v26

    if-ge v11, v0, :cond_39

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0266

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_11

    .line 787
    :cond_39
    const-string v26, "AccessPointInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unexpected frequency "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 796
    .end local v8    # "band":Ljava/lang/String;
    .end local v11    # "frequency":I
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v26

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3b

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_12

    .line 799
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_12

    .line 809
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mDisconnect:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13

    .line 815
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AccessPointInfo;->mOffLine:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_14
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->showIpConfigFields()V

    .line 840
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mJoin:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->ipAndProxyFieldsAreValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 841
    return-void

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 832
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->showProxyFields()V

    goto :goto_0

    .line 833
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->showSecurityFields()V

    goto :goto_0

    .line 835
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 837
    .local v0, "cert_sel":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 838
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->handleCertificateChange(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1776
    packed-switch p1, :pswitch_data_0

    .line 1795
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1778
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v0, "enabledApList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->isCurrentSSIDConnected()Z

    move-result v1

    .line 1780
    .local v1, "needDisableAllNetwork":Z
    iget v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mNetworkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->ipAndProxyFieldsAreValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->isConfigChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1781
    const-string v2, "AccessPointInfo"

    const-string v3, "onkeydown saved!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    if-eqz v1, :cond_0

    .line 1783
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->disableEnabledAps(Ljava/util/List;)V

    .line 1785
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->getconfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1786
    if-eqz v1, :cond_1

    .line 1787
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/AccessPointInfo;->enableListedAps(Ljava/util/List;)V

    .line 1791
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AccessPointInfo;->finish()V

    .line 1792
    const/4 v2, 0x1

    goto :goto_0

    .line 1776
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2229
    return-void
.end method

.method submit(Lcom/android/exsettings/wifi/WifiConfigController;)V
    .locals 11
    .param p1, "configController"    # Lcom/android/exsettings/wifi/WifiConfigController;

    .prologue
    const/4 v9, -0x1

    .line 1009
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1012
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v6, "AccessPointInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "submit config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-nez v0, :cond_1

    .line 1015
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v6, v6, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_0

    .line 1017
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v7, v7, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    iget-object v8, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v9, :cond_2

    .line 1021
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_0

    .line 1022
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1025
    :cond_2
    invoke-virtual {p1}, Lcom/android/exsettings/wifi/WifiConfigController;->isEdit()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1027
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 1028
    .local v5, "selectedPosition":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 1029
    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1030
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "host":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1032
    .local v4, "portStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1033
    .local v3, "port":I
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, "exclusionList":Ljava/lang/String;
    new-instance v6, Landroid/net/IpConfiguration;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v8, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    new-instance v10, Landroid/net/ProxyInfo;

    invoke-direct {v10, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 1038
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1042
    .end local v5    # "selectedPosition":I
    :cond_4
    new-instance v6, Landroid/net/IpConfiguration;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v8, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v9, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v10, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 1045
    iget-object v6, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/exsettings/wifi/AccessPointInfo;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
