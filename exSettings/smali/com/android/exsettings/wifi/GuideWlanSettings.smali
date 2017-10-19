.class public Lcom/android/exsettings/wifi/GuideWlanSettings;
.super Landroid/app/Activity;
.source "GuideWlanSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;,
        Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;
    }
.end annotation


# instance fields
.field animationContextIn:Landroid/view/animation/Animation;

.field animationContextOut:Landroid/view/animation/Animation;

.field animationIndicatorOut:Landroid/view/animation/Animation;

.field animationTitleTextIn:Landroid/view/animation/Animation;

.field animationTitleTextOut:Landroid/view/animation/Animation;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private textViewTitle:Landroid/widget/TextView;

.field private wifiSettingsFragmentLayout:Landroid/widget/FrameLayout;

.field private wlanBack:Landroid/widget/Button;

.field private wlanSkip:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wifiSettingsFragmentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/GuideWlanSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/GuideWlanSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private initViews()V
    .locals 14

    .prologue
    const v13, 0x7f050021

    const v12, 0x7f02022a

    const-wide/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "tct_split_button_bar"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "splitActionBarId":I
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/GuideWlanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, "ActionView":Landroid/widget/LinearLayout;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "button1"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "button1Id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "button2"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "button2Id":I
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->showTctBottomBar(Z)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    .line 85
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    const v5, 0x7f0c0c61

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 86
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    new-instance v5, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;

    invoke-direct {v5, p0}, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    .line 89
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    const v5, 0x7f0c0c5f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 90
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    new-instance v5, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;

    invoke-direct {v5, p0}, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanSkip:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 95
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wlanBack:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 100
    const v4, 0x7f12010c

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/GuideWlanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->textViewTitle:Landroid/widget/TextView;

    .line 102
    const v4, 0x7f12010d

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/GuideWlanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wifiSettingsFragmentLayout:Landroid/widget/FrameLayout;

    .line 103
    const v4, 0x7f05001f

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    .line 104
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->textViewTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextIn:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    const v4, 0x7f050020

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextIn:Landroid/view/animation/Animation;

    .line 107
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->wifiSettingsFragmentLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextIn:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    const v4, 0x7f050022

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    .line 111
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationTitleTextOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 113
    invoke-static {p0, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextOut:Landroid/view/animation/Animation;

    .line 114
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 115
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationContextOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 116
    invoke-static {p0, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationIndicatorOut:Landroid/view/animation/Animation;

    .line 117
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationIndicatorOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    iget-object v4, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->animationIndicatorOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 119
    invoke-virtual {p0, v8, v8}, Lcom/android/exsettings/wifi/GuideWlanSettings;->overridePendingTransition(II)V

    .line 121
    const v4, 0x7f1200f4

    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/GuideWlanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->showTctBottomBar(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0c0c5f

    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanBackSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setBottomButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0c0c60

    invoke-virtual {p0, v5}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;

    invoke-direct {v6, p0}, Lcom/android/exsettings/wifi/GuideWlanSettings$WlanSkipSettingsListener;-><init>(Lcom/android/exsettings/wifi/GuideWlanSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setBottomButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f04007c

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->setContentView(I)V

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "actionBarId":I
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 61
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/exsettings/wifi/GuideWlanSettings;->initViews()V

    .line 66
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/wifi/GuideWlanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/exsettings/wifi/GuideWlanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 74
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 134
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
