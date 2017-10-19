.class public Lcom/android/exsettings/wifi/CmccLoginDialog;
.super Landroid/app/AlertDialog;
.source "CmccLoginDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private CMCCDialogView:Landroid/view/View;

.field private isSavePW:Z

.field private mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

.field private mCmccInfo:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPasswordView:Landroid/widget/EditText;

.field private mRemeberPW:Landroid/widget/CheckBox;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->isSavePW:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 58
    new-instance v0, Lcom/android/exsettings/wifi/CmccLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/CmccLoginDialog$1;-><init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/CmccLoginDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginStatus(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/CmccLoginDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getCMCCLoginStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/CmccLoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/wifi/CmccLoginDialog;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/wifi/CmccLoginDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/CmccLoginDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->recordCMCCLoginInfo()V

    return-void
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "ramdonPwd"    # Z

    .prologue
    .line 197
    new-instance v0, Lcom/android/exsettings/wifi/CmccLoginDialog$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/CmccLoginDialog$5;-><init>(Lcom/android/exsettings/wifi/CmccLoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    .local v0, "loginRunnable":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method

.method private getCMCCLoginStatus()I
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v1, "cmcc_login_status_recode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private recordCMCCLoginInfo()V
    .locals 8

    .prologue
    .line 239
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "userName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "password":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 244
    .local v1, "editor_account":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_account_number_recode"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    .end local v1    # "editor_account":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->isSavePW:Z

    if-eqz v5, :cond_2

    .line 250
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 251
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v6, "cmcc_pw_recode"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "originalPW":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, "PWEditor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_pw_recode"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    .end local v0    # "PWEditor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "originalPW":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    if-eqz v4, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v6, "cmcc_pw_recode"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "originalPW":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 263
    iget-object v5, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .restart local v0    # "PWEditor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "cmcc_pw_recode"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private recordCMCCLoginStatus(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor_cmcc":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmcc_login_status_recode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/wifi/CmccLoginDialog$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/CmccLoginDialog$4;-><init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f1202bf

    if-ne v0, v1, :cond_0

    .line 191
    iput-boolean p2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->isSavePW:Z

    .line 193
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/CmccLoginDialog;->setInverseBackgroundForced(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040140

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->CMCCDialogView:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->CMCCDialogView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/CmccLoginDialog;->setView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f12025b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;

    .line 100
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->CMCCDialogView:Landroid/view/View;

    const v2, 0x7f1202bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0c39

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/wifi/CmccLoginDialog$2;

    invoke-direct {v2, p0}, Lcom/android/exsettings/wifi/CmccLoginDialog$2;-><init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c38

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/exsettings/wifi/CmccLoginDialog$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/wifi/CmccLoginDialog$3;-><init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mRemeberPW:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    const v1, 0x7f0c0c30

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/CmccLoginDialog;->setTitle(I)V

    .line 127
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 129
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    const-string v2, "cmcc_info"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->getInstance(Landroid/content/Context;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 135
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mAuthenticator:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-virtual {v1}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->init()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "CmccLoginDialog"

    const-string v2, "CMCCWLANAuthenticator init successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;

    const-string v2, "cmcc_account_number_recode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    return-void

    .line 139
    .end local v0    # "account":Ljava/lang/String;
    :cond_2
    const-string v1, "CmccLoginDialog"

    const-string v2, "CMCCWLANAuthenticator init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 157
    return-void
.end method
