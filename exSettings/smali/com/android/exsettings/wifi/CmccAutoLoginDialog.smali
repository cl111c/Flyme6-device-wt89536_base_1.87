.class public Lcom/android/exsettings/wifi/CmccAutoLoginDialog;
.super Landroid/app/AlertDialog;
.source "CmccAutoLoginDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private CMCCDialogView:Landroid/view/View;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPasswordView:Landroid/widget/EditText;

.field private mRemeberPW:Landroid/widget/CheckBox;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mUsernameView:Landroid/widget/EditText;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 65
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$2;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 75
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$3;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$1;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 65
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$2;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 75
    new-instance v0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$3;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;-><init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 141
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 188
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 189
    .local v0, "cmccAutoConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v4, 0x0

    .line 191
    .local v4, "isfound":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 192
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    move-object v0, v1

    .line 194
    const/4 v4, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    if-nez v4, :cond_2

    .line 198
    const-string v5, "CMCC"

    invoke-static {v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 199
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 202
    :cond_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 203
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 205
    const-string v5, "CmccAutoLoginDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConfig  cmccAutoConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v0, v6}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 208
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f1202be

    if-ne v0, v1, :cond_0

    .line 184
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 102
    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->setInverseBackgroundForced(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04013f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->CMCCDialogView:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->CMCCDialogView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->setView(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f120291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    .line 107
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;

    .line 108
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f1202be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    .line 109
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c39

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c38

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    const v1, 0x7f0c0c3d

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->setTitle(I)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 119
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mContext:Landroid/content/Context;

    const-string v2, "cmcc_info"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 120
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v2, "cmcc_auto_account_number_recode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    return-void
.end method

.method public recordCMCCAUTOLoginInfo()V
    .locals 8

    .prologue
    .line 229
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "userName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "password":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 234
    .local v1, "editor_account":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_auto_account_number_recode"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    .end local v1    # "editor_account":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 241
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v6, "cmcc_auto_pw_recode"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "originalPW":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, "PWEditor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_auto_pw_recode"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    .end local v0    # "PWEditor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "originalPW":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    if-eqz v4, :cond_1

    .line 251
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v6, "cmcc_auto_pw_recode"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2    # "originalPW":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 253
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .restart local v0    # "PWEditor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_auto_pw_recode"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
