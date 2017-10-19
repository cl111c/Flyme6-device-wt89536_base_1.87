.class public Lcom/android/exsettings/LocksreenSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LocksreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final FLAG_IS_LOCKSCREEN_CLOSED:Ljava/lang/String;

.field private final KEY_LOCKSREEN_TYPE:Ljava/lang/String;

.field private final KEY_PASSWORD_LOCKSREEN:Ljava/lang/String;

.field private final KEY_SECURITY_PASSWORD:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private locksreentypeIndex:I

.field private mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

.field private mContext:Landroid/content/Context;

.field private mDefaultSwipe:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSreenType:Landroid/preference/SwitchPreference;

.field private mLockSreenTypeItem:[Ljava/lang/String;

.field private mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mSecurityPw:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/exsettings/LocksreenSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const-string v0, "LocksreenSettings"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "security_password"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->KEY_SECURITY_PASSWORD:Ljava/lang/String;

    .line 65
    const-string v0, "password_locksreen"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->KEY_PASSWORD_LOCKSREEN:Ljava/lang/String;

    .line 66
    const-string v0, "locksreen_type"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->KEY_LOCKSREEN_TYPE:Ljava/lang/String;

    .line 68
    const-string v0, "isLockScreenClosed"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->FLAG_IS_LOCKSCREEN_CLOSED:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/LocksreenSettings;->mDefaultSwipe:Z

    .line 238
    new-instance v0, Lcom/android/exsettings/LocksreenSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/LocksreenSettings$2;-><init>(Lcom/android/exsettings/LocksreenSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    new-instance v0, Lcom/android/exsettings/LocksreenSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/LocksreenSettings$3;-><init>(Lcom/android/exsettings/LocksreenSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/LocksreenSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/LocksreenSettings;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/exsettings/LocksreenSettings;->locksreentypeIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/exsettings/LocksreenSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/LocksreenSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/exsettings/LocksreenSettings;->locksreentypeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/LocksreenSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/LocksreenSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/exsettings/LocksreenSettings;->clickLockSreenTypeOK(I)V

    return-void
.end method

.method private clickLockSreenTypeOK(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    if-nez p1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    if-ne p1, v2, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "resid":I
    sget v1, Lcom/android/exsettings/LocksreenSettings;->MY_USER_ID:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const v0, 0x7f0c0ced

    .line 111
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mSecurityPw:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 130
    return-void

    .line 113
    :cond_0
    sget v1, Lcom/android/exsettings/LocksreenSettings;->MY_USER_ID:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    goto :goto_0

    .line 115
    :sswitch_0
    const v0, 0x7f0c0cee

    .line 116
    goto :goto_1

    .line 119
    :sswitch_1
    const v0, 0x7f0c0cef

    .line 120
    goto :goto_1

    .line 124
    :sswitch_2
    const v0, 0x7f0c0cf0

    goto :goto_1

    .line 113
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

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    const-string v1, "security_password"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LocksreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mSecurityPw:Landroid/preference/Preference;

    .line 135
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mSecurityPw:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    const-string v1, "locksreen_type"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LocksreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    .line 138
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "random_lockscreen"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "random_lockscreen":I
    if-ne v0, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0cf2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 161
    :goto_0
    const-string v1, "password_locksreen"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LocksreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v1, "locksreen_type"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LocksreenSettings;->removePreference(Ljava/lang/String;)V

    .line 167
    const-string v1, "password_locksreen"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LocksreenSettings;->removePreference(Ljava/lang/String;)V

    .line 168
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    const v4, 0x7f0c0a95

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lockscreen_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/exsettings/LocksreenSettings;->mDefaultSwipe:Z

    .line 150
    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/exsettings/LocksreenSettings;->mDefaultSwipe:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 149
    goto :goto_1
.end method

.method private showLockSreenTypeStatusDialog()V
    .locals 7

    .prologue
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v2, "labelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/exsettings/LocksreenSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f040124

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 221
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    const/4 v1, 0x0

    .line 226
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/exsettings/LocksreenSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0ce6

    invoke-virtual {p0, v5}, Lcom/android/exsettings/LocksreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/LocksreenSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0585

    new-instance v6, Lcom/android/exsettings/LocksreenSettings$1;

    invoke-direct {v6, p0}, Lcom/android/exsettings/LocksreenSettings$1;-><init>(Lcom/android/exsettings/LocksreenSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 236
    .local v3, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 237
    return-void

    .line 223
    .end local v3    # "mAlertDialog":Landroid/app/AlertDialog;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenType:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 97
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 98
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocksreenSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mLockSreenTypeItem:[Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/android/exsettings/LocksreenSettings;->initPreference()V

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 292
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0c01cc

    const/16 v4, 0x7b

    const/4 v7, 0x1

    .line 189
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 190
    .local v6, "iSure":Z
    const-string v0, "password_locksreen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    if-eqz v6, :cond_1

    .line 192
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/LocksreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 212
    :cond_0
    :goto_0
    return v7

    .line 196
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "isLockScreenClosed"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/LocksreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 205
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v0, "locksreen_type"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_type"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0c01cc

    const/16 v4, 0x7b

    .line 173
    const-string v0, "security_password"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/LocksreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 184
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_1
    const-string v0, "password_locksreen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mPwLockSreen:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0}, Lcom/android/exsettings/SwitchPreferenceOnly;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/LocksreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "locksreen_type"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/exsettings/LocksreenSettings;->showLockSreenTypeStatusDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/android/exsettings/LocksreenSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/LocksreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/LocksreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 287
    return-void
.end method
