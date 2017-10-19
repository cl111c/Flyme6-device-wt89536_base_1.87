.class public Lcom/android/exsettings/HomeScreenSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "HomeScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final KEY_SCREEN_INFORMATION:Ljava/lang/String;

.field private mScreenInformationShow:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 31
    const-string v0, "main_screen_information"

    iput-object v0, p0, Lcom/android/exsettings/HomeScreenSettings;->KEY_SCREEN_INFORMATION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/exsettings/HomeScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lcom/android/exsettings/HomeScreenSettings;->addPreferencesFromResource(I)V

    .line 43
    const-string v2, "main_screen_information"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/HomeScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/exsettings/HomeScreenSettings;->mScreenInformationShow:Landroid/preference/SwitchPreference;

    .line 44
    iget-object v2, p0, Lcom/android/exsettings/HomeScreenSettings;->mScreenInformationShow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/exsettings/HomeScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_left_screen_flag"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 47
    .local v1, "enabled":Z
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/HomeScreenSettings;->mScreenInformationShow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 48
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    .local v0, "isChecked":Z
    const-string v3, "main_screen_information"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    if-eqz v0, :cond_1

    move v1, v2

    .line 55
    .local v1, "val":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/HomeScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_left_screen_flag"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    .end local v1    # "val":I
    :cond_0
    return v2

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
