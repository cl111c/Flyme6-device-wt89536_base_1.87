.class public abstract Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/exsettings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# instance fields
.field private mDark:Z

.field private final mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/exsettings/SettingsActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity$1;-><init>(Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1201eb

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 83
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    .line 86
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const v2, 0x7f0d007d

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 43
    iput-boolean v3, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 47
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 59
    return-void

    :cond_3
    move v2, v4

    .line 58
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/exsettings/SettingsActivity;->onEnterAnimationComplete()V

    .line 92
    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 97
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/exsettings/SettingsActivity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 77
    iget-object v0, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 101
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1201eb

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 106
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 110
    :cond_0
    return-void
.end method
