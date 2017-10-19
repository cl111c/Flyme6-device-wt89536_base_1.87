.class public Lcom/android/exsettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

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

.field public mCert_Cnt:I

.field private mCert_Set:Z

.field private mCertificateAs:Ljava/lang/String;

.field private mCertificateAsPath:Ljava/lang/String;

.field private mCertificateSpinner:Landroid/widget/Spinner;

.field private mCertificateText:Landroid/widget/TextView;

.field private mCertificateUser:Ljava/lang/String;

.field private mCertificateUserPath:Ljava/lang/String;

.field private final mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mModify:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

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

.field public mPsk_key_type:I

.field private mSavedPassword:Ljava/lang/String;

.field private mSecuritySpinner:Landroid/widget/Spinner;

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

.field private mSsidName:Ljava/lang/String;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiKeyTypeSpinner:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private selectedSimCardNumber:I

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/exsettingslib/wifi/AccessPoint;ZZ)V
    .locals 26
    .param p1, "parent"    # Lcom/android/exsettings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/exsettingslib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v21, "*********"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSavedPassword:Ljava/lang/String;

    .line 143
    const-string v21, "unspecified"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 172
    sget-object v21, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 173
    sget-object v21, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 174
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 175
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 186
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 204
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 205
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 206
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mPsk_key_type:I

    .line 214
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    .line 216
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 217
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 218
    if-nez p3, :cond_2

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 220
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    .line 221
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    .line 223
    new-instance v21, Landroid/os/Handler;

    invoke-direct/range {v21 .. v21}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 227
    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "phone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 230
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 231
    const v21, 0x7f0a001e

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 232
    const v21, 0x7f0c0d22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidName:Ljava/lang/String;

    .line 233
    new-instance v21, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1090008

    const v24, 0x7f0a0028

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v21 .. v24}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v21, v0

    const v22, 0x1090009

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 238
    new-instance v21, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1090008

    const v24, 0x7f0a0029

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v21 .. v24}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v21, v0

    const v22, 0x1090009

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c02cf

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202cb

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202ca

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c0296

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120299

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120297

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120298

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120271

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120272

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120134

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c7

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02e0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02e2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 438
    :cond_1
    return-void

    .line 218
    .end local v13    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v21

    goto/16 :goto_0

    .line 276
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->security:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c0c6c

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120157

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 280
    .local v7, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->addCMCCRow(Landroid/view/ViewGroup;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f12025c

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 286
    .local v5, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_6

    .line 287
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 290
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "wep_wlan"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 293
    .local v20, "wep_wifi":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v20    # "wep_wifi":Landroid/content/SharedPreferences;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02dc

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 297
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-eqz v21, :cond_5

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 300
    const/16 v16, 0x0

    .line 301
    .local v16, "ssidChinese":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_8

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/WifiConfigController;->isChinese(C)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 303
    const/16 v16, 0x1

    .line 307
    :cond_8
    if-nez v16, :cond_9

    .line 308
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/WifiConfigController;->mSavedPassword:Ljava/lang/String;

    .line 311
    :cond_9
    const-string v21, "WifiConfigController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get the presharekey = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSavedPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mSavedPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 301
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 325
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "ssidChinese":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f120157

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 329
    .restart local v7    # "group":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 330
    .local v14, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 332
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v21

    sget-object v22, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    .line 334
    const/4 v14, 0x1

    .line 336
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v18

    .line 337
    .local v18, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 338
    const v21, 0x7f0c02bd

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 346
    .end local v18    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_c
    :goto_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v21

    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    .line 348
    const/4 v14, 0x1

    .line 355
    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 356
    const v21, 0x7f0c02bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c02c0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 361
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v21

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v21

    if-eqz v21, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 363
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c7

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    if-eqz v14, :cond_10

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202c9

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02e0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 342
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 349
    :cond_12
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v21

    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    .line 351
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 353
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 378
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    .line 379
    .local v17, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v15

    .line 381
    .local v15, "signalLevel":Ljava/lang/String;
    if-nez v17, :cond_16

    if-eqz v15, :cond_16

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02dc

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 427
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v21

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isActive()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 428
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0c02de

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 384
    :cond_16
    if-eqz v17, :cond_18

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v11

    .line 386
    .local v11, "isEphemeral":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 387
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v12, 0x0

    .line 388
    .local v12, "providerFriendlyName":Ljava/lang/String;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 389
    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 391
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11, v12}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 393
    .local v19, "summary":Ljava/lang/String;
    const v21, 0x7f0c02ba

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 396
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "isEphemeral":Z
    .end local v12    # "providerFriendlyName":Ljava/lang/String;
    .end local v19    # "summary":Ljava/lang/String;
    :cond_18
    if-eqz v15, :cond_19

    .line 397
    const v21, 0x7f0c02b9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v1, v15}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 400
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/exsettingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 401
    .local v10, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    .line 402
    const v21, 0x7f0c02bb

    const v22, 0x7f0c0267

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 406
    :cond_1a
    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1b

    .line 407
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    .line 408
    .local v6, "frequency":I
    const/4 v3, 0x0

    .line 410
    .local v3, "band":Ljava/lang/String;
    const/16 v21, 0x960

    move/from16 v0, v21

    if-lt v6, v0, :cond_1c

    const/16 v21, 0x9c4

    move/from16 v0, v21

    if-ge v6, v0, :cond_1c

    .line 412
    const v21, 0x7f0c0265

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    :goto_7
    if-eqz v3, :cond_1b

    .line 420
    const v21, 0x7f0c02bc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v1, v3}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 424
    .end local v3    # "band":Ljava/lang/String;
    .end local v6    # "frequency":I
    :cond_1b
    const v21, 0x7f0c02b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/exsettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f1202a5

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 413
    .restart local v3    # "band":Ljava/lang/String;
    .restart local v6    # "frequency":I
    :cond_1c
    const/16 v21, 0x1324

    move/from16 v0, v21

    if-lt v6, v0, :cond_1d

    const/16 v21, 0x170c

    move/from16 v0, v21

    if-ge v6, v0, :cond_1d

    .line 415
    const v21, 0x7f0c0266

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 417
    :cond_1d
    const-string v21, "WifiConfigController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unexpected frequency "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private addCMCCRow(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040145

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "row":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040146

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f120028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 443
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    return-void
.end method

.method private eapMethodSelected()I
    .locals 2

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "eapMethodStr":Ljava/lang/String;
    const-string v1, "PEAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    const/4 v1, 0x0

    .line 1551
    :goto_0
    return v1

    .line 1538
    :cond_0
    const-string v1, "TLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1539
    const/4 v1, 0x1

    goto :goto_0

    .line 1540
    :cond_1
    const-string v1, "TTLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1541
    const/4 v1, 0x2

    goto :goto_0

    .line 1542
    :cond_2
    const-string v1, "PWD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1543
    const/4 v1, 0x3

    goto :goto_0

    .line 1544
    :cond_3
    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1545
    const/4 v1, 0x4

    goto :goto_0

    .line 1546
    :cond_4
    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1547
    const/4 v1, 0x5

    goto :goto_0

    .line 1548
    :cond_5
    const-string v1, "AKA\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1549
    const/4 v1, 0x6

    goto :goto_0

    .line 1551
    :cond_6
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 786
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    return-object v1

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 787
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSIMInfo()V
    .locals 8

    .prologue
    .line 1513
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1515
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1517
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1518
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x7f0c09d4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayname":Ljava/lang/String;
    goto :goto_1

    .line 1524
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 457
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCertificateChange(I)V
    .locals 4
    .param p1, "Certificate"    # I

    .prologue
    .line 1479
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 1480
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

    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    .line 1482
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

    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateUserPath:Ljava/lang/String;

    .line 1484
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

    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    .line 1486
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

    iput-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateAsPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v1    # "string":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1488
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 736
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 740
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 741
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 742
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/exsettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 743
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 781
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 736
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 748
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 749
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 750
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 751
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 752
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 753
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 757
    .local v3, "port":I
    const/4 v5, 0x0

    .line 759
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 760
    invoke-static {v2, v4, v1}, Lcom/android/exsettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 764
    :goto_2
    if-nez v5, :cond_3

    .line 765
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 781
    goto :goto_1

    .line 761
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0c0101

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 767
    goto :goto_1

    .line 769
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 770
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 771
    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 772
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 773
    goto :goto_1

    .line 775
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 776
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 777
    goto :goto_1

    .line 779
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private isCarrierAPFunction()Z
    .locals 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChinese(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1405
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1406
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 1412
    :cond_0
    const/4 v1, 0x1

    .line 1414
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1278
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1280
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1282
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1290
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1292
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1293
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1294
    return-void

    .line 1284
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1285
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1286
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1149
    return-void
.end method

.method private setCertificateSpinnerAdapter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1311
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1313
    .local v6, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v3, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    .line 1316
    iput-boolean v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 1317
    iput v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1319
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/wapi_certificate"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v5, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1322
    const-string v8, "WifiConfigController"

    const-string v9, " WifiConfigController.java->setCertificateSpinnerAdapter(), No Install Directory Present !! "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1327
    .local v4, "certificateList":[Ljava/io/File;
    array-length v8, v4

    iput v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    .line 1328
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    .line 1329
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1330
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/as.cer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v0, "ASCertFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/user.cer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v1, "UserCertFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1333
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCerPathString:Ljava/util/ArrayList;

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    .end local v0    # "ASCertFile":Ljava/io/File;
    .end local v1    # "UserCertFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1338
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Set:Z

    .line 1339
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v2, v6, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1342
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1343
    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1345
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v4    # "certificateList":[Ljava/io/File;
    .end local v7    # "i":I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1139
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1162
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1144
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1297
    if-eqz p2, :cond_0

    .line 1299
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1300
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1301
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1307
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1300
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f120288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f12028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1154
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1272
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9
    .param p1, "eapMethod"    # I

    .prologue
    const v7, 0x7f120292

    const v6, 0x7f12028a

    const/4 v8, 0x0

    .line 1044
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isCarrierAPFunction()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1202c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f120290

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f12028c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f120294

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f120296

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1058
    .local v1, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1130
    :goto_1
    return-void

    .line 1047
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f120286

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1060
    .restart local v1    # "context":Landroid/content/Context;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1061
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1062
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1063
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1064
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1067
    :pswitch_1
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f12028e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1069
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1070
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1071
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1075
    :pswitch_2
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_1

    .line 1076
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1077
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1079
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isCarrierAPFunction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1080
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1202c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1081
    .local v3, "mIdentityView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0d21

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1084
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1085
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1090
    .end local v3    # "mIdentityView":Landroid/widget/TextView;
    :goto_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1091
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1087
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1095
    :pswitch_3
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_3

    .line 1096
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1097
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1099
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1102
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_1

    .line 1107
    :pswitch_4
    const/4 v0, 0x0

    .line 1108
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v4, :cond_4

    .line 1109
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1111
    :cond_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1115
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1117
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1118
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f120288

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    if-eqz v0, :cond_5

    .line 1120
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1122
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1123
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1124
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1125
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1126
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1127
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_1

    .line 1058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f1202a7

    const/4 v5, 0x0

    .line 1168
    const/4 v0, 0x0

    .line 1170
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1176
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1177
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1179
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1180
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1181
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1182
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1183
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1185
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1186
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1187
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1188
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1189
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1191
    :cond_1
    if-eqz v0, :cond_5

    .line 1192
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1193
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1194
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1195
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1202
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1206
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1207
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1210
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1215
    :cond_6
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f1202a1

    const v8, 0x7f12029f

    const v7, 0x7f12029e

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1220
    const/4 v0, 0x0

    .line 1222
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f12029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1228
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1229
    invoke-direct {p0, v7, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1230
    invoke-direct {p0, v9, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1231
    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1232
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1233
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1234
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1235
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1236
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1237
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1238
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1240
    :cond_1
    if-eqz v0, :cond_2

    .line 1241
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1242
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1243
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1248
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1249
    invoke-direct {p0, v7, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1250
    invoke-direct {p0, v9, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1251
    invoke-direct {p0, v8, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1253
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1254
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1202a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1255
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1257
    :cond_4
    if-eqz v0, :cond_2

    .line 1258
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1259
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1260
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1264
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1265
    invoke-direct {p0, v9, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1266
    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 14

    .prologue
    const v13, 0x7f120299

    const v12, 0x7f120298

    const v11, 0x7f120297

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 861
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v6, :cond_0

    .line 862
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 867
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 878
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 879
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12025c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 880
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 881
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120274

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 882
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    .line 883
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 885
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 886
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v7, 0x7f0c02ce

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 887
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 888
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wapiPskType: in  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 897
    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 898
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12025c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120295

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120274

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 933
    :cond_2
    :goto_2
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    .line 934
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120285

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 891
    :cond_3
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wapiPskType: in  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 904
    :cond_4
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 908
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12025c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120295

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120274

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateText:Landroid/widget/TextView;

    .line 914
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    .line 917
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 918
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->setCertificateSpinnerAdapter()V

    .line 919
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 921
    :cond_5
    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 924
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12025c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120295

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120274

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 937
    :cond_6
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120285

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v6, :cond_c

    .line 940
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->getSIMInfo()V

    .line 941
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isCarrierAPFunction()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 942
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f1202c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 946
    :goto_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 947
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 949
    :cond_7
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, "eapMethods":[Ljava/lang/String;
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x1090008

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 953
    .local v5, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 955
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 957
    .end local v2    # "eapMethods":[Ljava/lang/String;
    .end local v5    # "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_8
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12028b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 958
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12028d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 959
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f12028f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 960
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120289

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 961
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120291

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 962
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120293

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 964
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v7, "CACERT_"

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 965
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v7, "USRPKEY_"

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 968
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 969
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v3, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 970
    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 971
    .local v1, "eapMethod":I
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 972
    .local v4, "phase2Method":I
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 973
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 974
    packed-switch v1, :pswitch_data_0

    .line 998
    :pswitch_0
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1001
    :goto_4
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1002
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1003
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 944
    .end local v1    # "eapMethod":I
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v4    # "phase2Method":I
    :cond_9
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v7, 0x7f120287

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    goto/16 :goto_3

    .line 976
    .restart local v1    # "eapMethod":I
    .restart local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v4    # "phase2Method":I
    :pswitch_1
    packed-switch v4, :pswitch_data_1

    .line 987
    :pswitch_2
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid phase 2 method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 978
    :pswitch_3
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 981
    :pswitch_4
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 984
    :pswitch_5
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 994
    :pswitch_6
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 995
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1006
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "eapMethod":I
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v4    # "phase2Method":I
    :cond_a
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isCarrierAPFunction()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1007
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->eapMethodSelected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1009
    :cond_b
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1013
    :cond_c
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isCarrierAPFunction()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1014
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->eapMethodSelected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1016
    :cond_d
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/exsettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 974
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 976
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 793
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 857
    :goto_0
    return v10

    .line 795
    :cond_0
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 796
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0c030c

    goto :goto_0

    .line 798
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 799
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 800
    const v10, 0x7f0c030c

    goto :goto_0

    .line 803
    :cond_2
    const/4 v9, -0x1

    .line 805
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 806
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 807
    :cond_3
    const v10, 0x7f0c030f

    goto :goto_0

    .line 809
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_1
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 820
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 821
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 822
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 823
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 838
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 840
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0311

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :goto_3
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 850
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 852
    if-nez v2, :cond_9

    .line 853
    const v10, 0x7f0c030e

    goto/16 :goto_0

    .line 810
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 812
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0317

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 828
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 829
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 830
    const v10, 0x7f0c030d

    goto/16 :goto_0

    .line 832
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 842
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 843
    if-nez v2, :cond_8

    .line 844
    const v10, 0x7f0c030e

    goto/16 :goto_0

    .line 846
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 855
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 825
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 824
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/WifiConfigController$1;-><init>(Lcom/android/exsettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1371
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 518
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v3

    .line 519
    .local v3, "submit":Landroid/widget/Button;
    if-nez v3, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    const/4 v0, 0x0

    .line 522
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 524
    .local v2, "passwordInvalid":Z
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-ge v4, v7, :cond_4

    .line 527
    :cond_3
    const/4 v2, 0x1

    .line 532
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 533
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v4, v7, :cond_a

    .line 534
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 535
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "password":Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_6

    .line 537
    :cond_5
    const/4 v2, 0x1

    .line 545
    .end local v1    # "password":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 547
    const/4 v2, 0x0

    .line 551
    :cond_7
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-eqz v2, :cond_b

    .line 553
    :cond_9
    const/4 v0, 0x0

    .line 561
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/exsettingslib/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    iput-boolean v6, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    goto/16 :goto_0

    .line 540
    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    .line 555
    :cond_b
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 556
    const/4 v0, 0x1

    goto :goto_2

    .line 558
    :cond_c
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    .line 573
    iget-boolean v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 574
    const/4 v2, 0x0

    .line 732
    :goto_0
    return-object v2

    .line 577
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 579
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 580
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 583
    iput-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 591
    :goto_1
    iget v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 725
    const/4 v2, 0x0

    goto :goto_0

    .line 584
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-nez v7, :cond_2

    .line 585
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 588
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 593
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 728
    :cond_3
    :goto_2
    new-instance v7, Landroid/net/IpConfiguration;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v9, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v10, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v11, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    .line 597
    :pswitch_1
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 600
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 601
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 602
    .local v4, "length":I
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 604
    .local v5, "password":Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_5

    :cond_4
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 606
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_2

    .line 608
    :cond_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_2

    .line 614
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 615
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 616
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    .restart local v5    # "password":Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 618
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 620
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 627
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 628
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_7

    .line 629
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 630
    .restart local v5    # "password":Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 631
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 636
    .end local v5    # "password":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 637
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wapiPskType  WAPI PSK key type  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 633
    .restart local v5    # "password":Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 641
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_4
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 642
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 643
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 650
    :pswitch_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 651
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    .line 652
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 654
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 658
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->eapMethodSelected()I

    move-result v3

    .line 662
    .local v3, "eapMethod":I
    :goto_4
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 663
    .local v6, "phase2Method":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 664
    packed-switch v3, :pswitch_data_1

    .line 692
    :pswitch_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 695
    :goto_5
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    .local v0, "caCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v0, ""

    .line 697
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 698
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v1, ""

    .line 700
    :cond_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 701
    if-eq v3, v12, :cond_b

    const/4 v7, 0x5

    if-eq v3, v7, :cond_b

    const/4 v7, 0x6

    if-ne v3, v7, :cond_d

    .line 702
    :cond_b
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 703
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 713
    :goto_6
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 716
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 717
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 660
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    .end local v3    # "eapMethod":I
    .end local v6    # "phase2Method":I
    :cond_c
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .restart local v3    # "eapMethod":I
    goto :goto_4

    .line 669
    .restart local v6    # "phase2Method":I
    :pswitch_7
    packed-switch v6, :pswitch_data_2

    .line 680
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 671
    :pswitch_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 674
    :pswitch_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 677
    :pswitch_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 687
    :pswitch_b
    iget-object v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 688
    iget v7, p0, Lcom/android/exsettings/wifi/WifiConfigController;->selectedSimCardNumber:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    goto/16 :goto_5

    .line 704
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_d
    if-ne v3, v11, :cond_e

    .line 705
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 706
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 708
    :cond_e
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 709
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 721
    :cond_f
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 664
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 669
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method getSecurity()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method getWlanMsg()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 482
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 484
    .local v0, "wep_wlan_msg":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f120271

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 485
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 487
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->isWepPasswordValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 497
    .end local v0    # "wep_wlan_msg":[Ljava/lang/String;
    :goto_1
    return-object v0

    .line 490
    .restart local v0    # "wep_wlan_msg":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/exsettingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 462
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/exsettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/exsettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 469
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isModify()Z
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mModify:Z

    return v0
.end method

.method isWepPasswordValid()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 502
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 504
    .local v0, "length":I
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "password":Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_2

    :cond_0
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    .end local v0    # "length":I
    .end local v1    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 508
    .restart local v0    # "length":I
    .restart local v1    # "password":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_1

    .line 512
    .end local v0    # "length":I
    .end local v1    # "password":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f1202c9

    .line 1420
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f120274

    if-ne v1, v2, :cond_2

    .line 1421
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1422
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1426
    if-ltz v0, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1436
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1422
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1429
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1202c8

    if-ne v1, v2, :cond_0

    .line 1430
    if-eqz p2, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1433
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 1440
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 1441
    iput p3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1442
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1470
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1473
    :cond_1
    return-void

    .line 1443
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_3

    .line 1444
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1445
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    .line 1446
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1449
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_5

    .line 1450
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCertificateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1451
    .local v0, "cert_sel":I
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ############# WifiConfigController.java->onItemSelected() Cert_selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mCert_Cnt:I

    if-ge v0, v1, :cond_0

    .line 1453
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiConfigController;->handleCertificateChange(I)V

    goto :goto_0

    .line 1456
    .end local v0    # "cert_sel":I
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_6

    .line 1457
    iget v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPsk_key_type:I

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPsk_key_type:I

    .line 1459
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wapiPskType  WAPI PSK key type changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPsk_key_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1466
    :cond_6
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0
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
    .line 1497
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
    .line 1376
    return-void
.end method

.method public updatePassword()V
    .locals 3

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1504
    .local v0, "passwdView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f120274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1509
    return-void

    .line 1504
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method
