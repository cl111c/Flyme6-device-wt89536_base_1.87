.class public Lcom/android/exsettings/wifi/GuideWlanAccountSettings;
.super Landroid/app/Activity;
.source "GuideWlanAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;,
        Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;
    }
.end annotation


# instance fields
.field animationContextIn:Landroid/view/animation/Animation;

.field animationContextOut:Landroid/view/animation/Animation;

.field animationTitleTextIn:Landroid/view/animation/Animation;

.field animationTitleTextOut:Landroid/view/animation/Animation;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private putCodeEditText:Landroid/widget/EditText;

.field private putCodeTextView:Landroid/widget/TextView;

.field private putNumEditText:Landroid/widget/EditText;

.field private putNumTextView:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;

.field private wlanAccountBack:Landroid/widget/Button;

.field private wlanAccountNext:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanAccountSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const-wide/16 v12, 0x1f4

    const/4 v10, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v6, 0x7f04007a

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->setContentView(I)V

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "action_bar_container"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "actionBarId":I
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "decorView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 66
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    const-string v6, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 71
    const-string v6, "GuideWlanAccountSettings"

    const-string v7, "====DISABLE_EXPAND04"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 73
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "tct_split_button_bar"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "splitActionBarId":I
    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    .local v0, "ActionView":Landroid/widget/LinearLayout;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "button1"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "button1Id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "button2"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "button2Id":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->showTctBottomBar(Z)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;

    .line 82
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;

    const v7, 0x7f0c0c60

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 83
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountNext:Landroid/widget/Button;

    new-instance v7, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;

    invoke-direct {v7, p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountNextSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;

    .line 86
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;

    const v7, 0x7f0c0c5f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 87
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->wlanAccountBack:Landroid/widget/Button;

    new-instance v7, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;

    invoke-direct {v7, p0}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings$WlanAccountBackSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanAccountSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v6, 0x7f1200ea

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->textViewTitle:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0, v10, v10}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->overridePendingTransition(II)V

    .line 92
    const v6, 0x7f1200ee

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumTextView:Landroid/widget/TextView;

    .line 93
    const v6, 0x7f1200f1

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeTextView:Landroid/widget/TextView;

    .line 98
    const v6, 0x7f1200ef

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumEditText:Landroid/widget/EditText;

    .line 99
    const v6, 0x7f1200f2

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeEditText:Landroid/widget/EditText;

    .line 100
    const v6, 0x7f05001f

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    .line 101
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    const v6, 0x7f050020

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    .line 103
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putNumEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->putCodeEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    const v6, 0x7f050021

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    .line 110
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    invoke-virtual {v6, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 112
    const v6, 0x7f050022

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    .line 113
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v6, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    iget-object v6, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v6, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 116
    const v6, 0x7f1200f4

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanAccountSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 135
    const-string v0, "GuideWlanAccountSettings"

    const-string v1, "onDestroy - disable(StatusBarManager.DISABLE_NONE)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "paramInt"    # I
    .param p2, "paramKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 141
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 148
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
