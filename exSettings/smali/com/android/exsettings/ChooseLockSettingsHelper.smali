.class public final Lcom/android/exsettings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 47
    iput-object p2, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 48
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z
    .locals 4
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;ZZJ)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 151
    const-string v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const-string v1, "com.android.settings"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    if-eqz p6, :cond_1

    .line 161
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 174
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J

    .prologue
    .line 118
    const/4 v11, 0x0

    .line 120
    .local v11, "launched":Z
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v10

    .line 122
    .local v10, "effectiveUserId":I
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 142
    :goto_0
    return v11

    .line 124
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const-class v5, Lcom/android/exsettings/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v11

    .line 129
    goto :goto_0

    .line 124
    :cond_1
    const-class v5, Lcom/android/exsettings/ConfirmLockPattern;

    goto :goto_1

    .line 135
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    const-class v5, Lcom/android/exsettings/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZJ)Z

    move-result v11

    goto :goto_0

    :cond_3
    const-class v5, Lcom/android/exsettings/ConfirmLockPassword;

    goto :goto_2

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J

    .prologue
    .line 110
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 10
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z

    .prologue
    .line 94
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJ)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
