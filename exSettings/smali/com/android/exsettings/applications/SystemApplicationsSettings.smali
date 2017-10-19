.class public Lcom/android/exsettings/applications/SystemApplicationsSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SystemApplicationsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/exsettings/applications/SystemApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/SystemApplicationsSettings;->addPreferencesFromResource(I)V

    .line 55
    return-void
.end method
