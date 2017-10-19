.class public Lcom/android/exsettings/wifi/GuideWlanCheckSettings;
.super Landroid/app/Activity;
.source "GuideWlanCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;,
        Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckNextSettingsListener;,
        Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;,
        Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckBackSettingsListener;
    }
.end annotation


# instance fields
.field private accountCheckState:I

.field animationContextIn:Landroid/view/animation/Animation;

.field animationContextOut:Landroid/view/animation/Animation;

.field animationTitleTextIn:Landroid/view/animation/Animation;

.field animationTitleTextOut:Landroid/view/animation/Animation;

.field private authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

.field private indicatorLayout:Landroid/widget/LinearLayout;

.field private inputCodeStr:Ljava/lang/String;

.field private inputNumberStr:Ljava/lang/String;

.field private mCheckFailButton:Landroid/widget/Button;

.field private mCheckFailText:Landroid/widget/TextView;

.field private mCheckFailTextBg:Landroid/widget/TextView;

.field private mCheckSuccessButton:Landroid/widget/Button;

.field private mCheckSuccessText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTextView:Landroid/widget/TextView;

.field private wlanCheckBack:Landroid/widget/Button;

.field private wlanCheckNext:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 302
    return-void
.end method

.method static synthetic access$002(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputNumberStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->recordCMCCLoginInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->jumpToInternetCostSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->changeLayoutStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->checkInput()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanCheckSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;

    return-object v0
.end method

.method private changeLayoutStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 72
    iget v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 99
    iget v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "ramdonPwd"    # Z

    .prologue
    .line 321
    new-instance v0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$2;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 353
    .local v0, "loginRunnable":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method private jumpToInternetCostSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$3;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method

.method private recordCMCCLoginInfo(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x3

    .line 357
    if-nez p2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string v3, "cmcc_info"

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    .local v1, "preferences_account":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, "editor_account":Landroid/content/SharedPreferences$Editor;
    const-string v3, "cmcc_account_number_recode"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    const-string v3, "cmcc_login_status_recode"

    if-eqz p2, :cond_1

    :goto_1
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 361
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v7, "GuideWlanCheckSettings"

    const-string v8, "onCreate()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v7, 0x7f04007b

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->setContentView(I)V

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar_container"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "actionBarId":I
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, "decorView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 132
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 135
    const v7, 0x7f1200f4

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 137
    new-instance v7, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;

    invoke-direct {v7, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$1;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mHandler:Landroid/os/Handler;

    .line 157
    const-string v7, "statusbar"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 159
    const-string v7, "GuideWlanCheckSettings"

    const-string v8, "====DISABLE_EXPAND05"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 162
    .local v5, "localIntent":Landroid/content/Intent;
    const-string v7, "number"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputNumberStr:Ljava/lang/String;

    .line 163
    const-string v7, "code"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputCodeStr:Ljava/lang/String;

    .line 164
    const-string v7, "state"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    .line 165
    const-string v7, "GuideWlanCheckSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountCheckState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->accountCheckState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "tct_split_button_bar"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 168
    .local v6, "splitActionBarId":I
    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 169
    .local v0, "ActionView":Landroid/widget/LinearLayout;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "button1"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, "button1Id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "button2"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "button2Id":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->hideTctBottomBar(Z)V

    .line 173
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    .line 174
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    const v8, 0x7f0c0c60

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 175
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckNext:Landroid/widget/Button;

    new-instance v8, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckNextSettingsListener;

    invoke-direct {v8, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckNextSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    .line 179
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    const v8, 0x7f0c0c5f

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->wlanCheckBack:Landroid/widget/Button;

    new-instance v8, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckBackSettingsListener;

    invoke-direct {v8, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckBackSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v7, 0x7f1200fd

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 185
    const v7, 0x7f1200fe

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mTextView:Landroid/widget/TextView;

    .line 186
    const v7, 0x7f1200f4

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->indicatorLayout:Landroid/widget/LinearLayout;

    .line 188
    const v7, 0x7f120100

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessText:Landroid/widget/TextView;

    .line 189
    const v7, 0x7f120102

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessButton:Landroid/widget/Button;

    .line 190
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckSuccessButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;

    invoke-direct {v8, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckSuccessListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v7, 0x7f120106

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailTextBg:Landroid/widget/TextView;

    .line 192
    const v7, 0x7f120104

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailText:Landroid/widget/TextView;

    .line 193
    const v7, 0x7f120107

    invoke-virtual {p0, v7}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    .line 194
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mCheckFailButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;

    invoke-direct {v8, p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings$WlanCheckFailListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanCheckSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->overridePendingTransition(II)V

    .line 196
    const v7, 0x7f05001f

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    .line 197
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    const v7, 0x7f050020

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationContextIn:Landroid/view/animation/Animation;

    .line 199
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationContextIn:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    const v7, 0x7f050021

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    .line 201
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 202
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 203
    const v7, 0x7f050022

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationContextOut:Landroid/view/animation/Animation;

    .line 204
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationContextOut:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->animationContextOut:Landroid/view/animation/Animation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->changeLayoutStatus()V

    .line 207
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->checkInput()V

    .line 209
    invoke-static {p0}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->getInstance(Landroid/content/Context;)Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    .line 210
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    if-eqz v7, :cond_1

    .line 211
    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->authen:Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;

    invoke-virtual {v7}, Lcom/aspire/g3wlan/client/sdk/CMCCWLANAuthenticator;->init()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    const-string v7, "GuideWlanCheckSettings"

    const-string v8, "CMCCWLANAuthenticator init successful"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    const-string v7, "CMCC-WEB"

    iget-object v8, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputNumberStr:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->inputCodeStr:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    return-void

    .line 214
    :cond_2
    const-string v7, "GuideWlanCheckSettings"

    const-string v8, "CMCCWLANAuthenticator init failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanCheckSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 224
    const-string v0, "GuideWlanCheckSettings"

    const-string v1, "onDestroy - disable(StatusBarManager.DISABLE_NONE)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "paramInt"    # I
    .param p2, "paramKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 230
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 237
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
