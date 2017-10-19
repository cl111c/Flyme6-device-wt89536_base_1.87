.class public Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private final FLAG_IS_LOCKSCREEN_CLOSED:Ljava/lang/String;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForFingerprint:Z

.field private mHasChallenge:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRequirePassword:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 116
    const-string v0, "isLockScreenClosed"

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->FLAG_IS_LOCKSCREEN_CLOSED:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 631
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "unlock_set_off"

    .line 354
    :goto_0
    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 354
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :sswitch_0
    const-string v0, "unlock_set_pattern"

    goto :goto_0

    .line 347
    :sswitch_1
    const-string v0, "unlock_set_pin"

    goto :goto_0

    .line 350
    :sswitch_2
    const-string v0, "unlock_set_password"

    goto :goto_0

    .line 352
    :sswitch_3
    const-string v0, "unlock_set_none"

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    .line 571
    .local v0, "hasFingerprints":Z
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 588
    if-eqz v0, :cond_3

    const v1, 0x7f0c01ed

    :goto_0
    return v1

    .line 573
    :sswitch_0
    if-eqz v0, :cond_0

    const v1, 0x7f0c01e7

    goto :goto_0

    :cond_0
    const v1, 0x7f0c01e6

    goto :goto_0

    .line 578
    :sswitch_1
    if-eqz v0, :cond_1

    const v1, 0x7f0c01e9

    goto :goto_0

    :cond_1
    const v1, 0x7f0c01e8

    goto :goto_0

    .line 584
    :sswitch_2
    if-eqz v0, :cond_2

    const v1, 0x7f0c01eb

    goto :goto_0

    :cond_2
    const v1, 0x7f0c01ea

    goto :goto_0

    .line 588
    :cond_3
    const v1, 0x7f0c01ec

    goto :goto_0

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 595
    const-string v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 7
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 227
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 228
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->isOwner()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v6

    if-nez v6, :cond_1

    .line 230
    iput p1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 231
    iput-boolean p2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 236
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 237
    .local v0, "accEn":Z
    iget-object v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v4

    .line 238
    .local v4, "required":Z
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v3

    .line 239
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "for_fingerprint"

    iget-boolean v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const/16 v5, 0x65

    invoke-virtual {p0, v3, v5}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    .end local v0    # "accEn":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "required":Z
    :goto_0
    return-void

    .line 243
    :cond_1
    iput-boolean v5, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private removeAllFingerprintTemplatesAndFinish()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 552
    iget-object v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v6, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 600
    const v2, 0x16058

    invoke-static {v2, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 602
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    move v0, v1

    .line 621
    :goto_1
    return v0

    .line 605
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {p0, v0, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 608
    :cond_1
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    const/high16 v2, 0x10000

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 611
    :cond_2
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    const/high16 v2, 0x20000

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 614
    :cond_3
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    const/high16 v2, 0x40000

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    .line 618
    :cond_4
    const-string v1, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 626
    .local v1, "message":I
    invoke-static {v1, p1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(ILjava/lang/String;)Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 628
    .local v0, "dialog":Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_warning_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 3

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 333
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 334
    const v2, 0x7f0c01dc

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 336
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 429
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 438
    const v5, 0x7f0c06b5

    invoke-virtual {p0, v5}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 441
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 442
    .local v2, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 443
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 444
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 442
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :sswitch_0
    const-string v7, "unlock_set_pattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "unlock_set_pin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "unlock_set_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 448
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 444
    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_1
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 281
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 282
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 284
    .local v5, "quality":I
    const/4 v3, 0x0

    .line 285
    .local v3, "isCloseLockScreen":Z
    const-string v6, ":settings:show_fragment_args"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 287
    const-string v6, "isLockScreenClosed"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 289
    :cond_0
    const-string v6, "ChooseLockGenericFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePreferencesOrFinish() isCloseLockScreen =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-ne v5, v9, :cond_3

    .line 292
    const-string v6, "minimum_quality"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 293
    invoke-direct {p0, v5}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v5

    .line 294
    if-eqz v3, :cond_1

    .line 295
    const-string v6, "ChooseLockGenericFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity finish updatePreferencesOrFinish quality=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0, v5, v10}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 297
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 328
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v6, "hide_disabled_prefs"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 303
    .local v1, "hideDisabledPrefs":Z
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 304
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 309
    :cond_2
    const v6, 0x7f08004c

    invoke-virtual {p0, v6}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 311
    invoke-virtual {p0, v5, v1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 312
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 313
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    goto :goto_0

    .line 326
    .end local v1    # "hideDisabledPrefs":Z
    .end local v4    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_3
    invoke-virtual {p0, v5, v10}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 360
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 366
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 367
    move p1, v0

    .line 369
    :cond_0
    return p1
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 382
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 10
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 394
    .local v1, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 395
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 396
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v8, v4, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_2

    .line 397
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 399
    .local v0, "enabled":Z
    const/4 v5, 0x1

    .line 400
    .local v5, "visible":Z
    const-string v8, "unlock_set_off"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 401
    if-gtz p1, :cond_3

    move v0, v6

    .line 402
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 404
    const/4 v5, 0x0

    .line 415
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    .line 416
    move v5, v0

    .line 418
    :cond_1
    if-nez v5, :cond_c

    .line 419
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "visible":Z
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0    # "enabled":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "visible":Z
    :cond_3
    move v0, v7

    .line 401
    goto :goto_1

    .line 406
    :cond_4
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 407
    if-gtz p1, :cond_5

    move v0, v6

    :goto_4
    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_4

    .line 408
    :cond_6
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 409
    const/high16 v8, 0x10000

    if-gt p1, v8, :cond_7

    move v0, v6

    :goto_5
    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_5

    .line 410
    :cond_8
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 411
    const/high16 v8, 0x30000

    if-gt p1, v8, :cond_9

    move v0, v6

    :goto_6
    goto :goto_2

    :cond_9
    move v0, v7

    goto :goto_6

    .line 412
    :cond_a
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 413
    const/high16 v8, 0x60000

    if-gt p1, v8, :cond_b

    move v0, v6

    :goto_7
    goto :goto_2

    :cond_b
    move v0, v7

    goto :goto_7

    .line 420
    :cond_c
    if-nez v0, :cond_2

    .line 421
    const v8, 0x7f0c01dd

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 422
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 426
    .end local v0    # "enabled":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "visible":Z
    :cond_d
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 492
    invoke-static {p1, p2, p3}, Lcom/android/exsettings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 566
    const v0, 0x7f0c098f

    return v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J

    .prologue
    .line 464
    invoke-static/range {p1 .. p7}, Lcom/android/exsettings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static/range {p1 .. p6}, Lcom/android/exsettings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J

    .prologue
    .line 482
    invoke-static {p1, p2, p3, p4}, Lcom/android/exsettings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-static {p1, p2, p3}, Lcom/android/exsettings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 252
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 253
    iput-boolean v3, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 254
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 268
    :goto_0
    return-void

    .line 256
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 258
    const-string v0, "extra_require_password"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 260
    iget v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 261
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "fingerprint"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 147
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 148
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 149
    new-instance v2, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 150
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    iget-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 154
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "confirm_credentials"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/exsettings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 157
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "has_challenge"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "for_fingerprint"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 167
    if-eqz p1, :cond_1

    .line 168
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 169
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 170
    const-string v2, "encrypt_requested_quality"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 171
    const-string v2, "encrypt_requested_disabled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 175
    :cond_1
    iget-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 188
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v4

    .line 157
    goto :goto_0

    .line 177
    :cond_4
    iget-boolean v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 178
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 180
    .local v1, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    const v4, 0x7f0c01ce

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 182
    iput-boolean v3, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 183
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 185
    :cond_5
    iput-boolean v3, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 561
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->sanitizePassword()V

    .line 562
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    iget-boolean v3, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 195
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 196
    .local v2, "listView":Landroid/widget/ListView;
    const v3, 0x7f040023

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "fingerprintHeader":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 200
    .end local v0    # "fingerprintHeader":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/16 v9, 0x66

    .line 506
    iget-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to update password without confirming it"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 512
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 513
    .local v1, "context":Landroid/content/Context;
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 515
    .local v3, "minLength":I
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    .line 516
    const/4 v3, 0x4

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 520
    .local v4, "maxLength":I
    iget-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_2

    .line 521
    iget-boolean v5, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v8

    .line 527
    .local v8, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 547
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 524
    .restart local v3    # "minLength":I
    .restart local v4    # "maxLength":I
    :cond_2
    iget-boolean v5, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 528
    .end local v3    # "minLength":I
    .end local v4    # "maxLength":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_5

    .line 530
    iget-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v0, :cond_4

    .line 531
    iget-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p0, v1, v0, v6, v7}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v8

    .line 537
    .restart local v8    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v8, v9}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 534
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v2, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 538
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    if-nez p1, :cond_6

    .line 539
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 540
    iget-object v0, p0, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 542
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplatesAndFinish()V

    .line 543
    invoke-virtual {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 545
    :cond_6
    invoke-direct {p0}, Lcom/android/exsettings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplatesAndFinish()V

    goto :goto_1
.end method
