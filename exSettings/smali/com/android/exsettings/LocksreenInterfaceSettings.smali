.class public Lcom/android/exsettings/LocksreenInterfaceSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "LocksreenInterfaceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final KEY_DISPLAY_SIGNATURE:Ljava/lang/String;

.field private final KEY_LOCKSREEN_DROP_DOWN_MENU:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mDisplaySignature:Landroid/preference/SwitchPreference;

.field private mDropDownMenu:Landroid/preference/SwitchPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOwnerInfo:Landroid/widget/EditText;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const-string v0, "LocksreenInterfaceSettings"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "locksreen_drop_down_menu"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->KEY_LOCKSREEN_DROP_DOWN_MENU:Ljava/lang/String;

    .line 52
    const-string v0, "display_signature"

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->KEY_DISPLAY_SIGNATURE:Ljava/lang/String;

    return-void
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-string v0, "locksreen_drop_down_menu"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDropDownMenu:Landroid/preference/SwitchPreference;

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDropDownMenu:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDropDownMenu:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreen_drop_menu"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    const-string v0, "display_signature"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDisplaySignature:Landroid/preference/SwitchPreference;

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDisplaySignature:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const-string v0, "drop_down_menu"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->removePreference(Ljava/lang/String;)V

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    .line 97
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mDisplaySignature:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mView:Landroid/view/View;

    const v3, 0x7f1200c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 101
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 105
    if-eqz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 108
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 113
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->addPreferencesFromResource(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->initPreference()V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const v0, 0x7f040063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mView:Landroid/view/View;

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mUserId:I

    .line 91
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    invoke-direct {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->initView()V

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->saveChanges()V

    .line 151
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 120
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 121
    .local v0, "isChecked":Z
    const-string v3, "locksreen_drop_down_menu"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    if-eqz v0, :cond_1

    move v1, v2

    .line 123
    .local v1, "val":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_drop_menu"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    .end local v1    # "val":I
    :cond_0
    :goto_1
    return v2

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_2
    const-string v3, "display_signature"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mUserId:I

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 126
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 128
    if-eqz v0, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 133
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_1

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/exsettings/LocksreenInterfaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 145
    return-void
.end method

.method saveChanges()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "info":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/exsettings/LocksreenInterfaceSettings;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 155
    return-void
.end method
