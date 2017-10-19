.class public Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

.field private mLaunchedConfirmLock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 110
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 111
    .local v6, "challenge":J
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 112
    .local v1, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    const v0, 0x7f0c0185

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-boolean v2, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 78
    if-ne p1, v3, :cond_2

    .line 79
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 80
    const-string v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 81
    const v3, 0x7f050025

    const v4, 0x7f050026

    invoke-virtual {p0, v3, v4}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 85
    :cond_2
    if-ne p1, v4, :cond_6

    .line 86
    if-ne p2, v3, :cond_3

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 89
    :cond_3
    if-ne p2, v4, :cond_4

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 92
    :cond_4
    if-ne p2, v5, :cond_5

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 96
    :cond_5
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 97
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 98
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 100
    .local v2, "max":I
    if-lt v0, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 105
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 43
    const v0, 0x7f0c0195

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 44
    if-eqz p1, :cond_1

    const-string v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 46
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    .line 49
    :cond_0
    const v0, 0x7f1200da

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    iput-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    .line 51
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;->startAnimation()V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/exsettings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/exsettings/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 63
    return-void
.end method
