.class Lcom/android/exsettings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/WifiCallingSettings;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/exsettings/WifiCallingSettings$1;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 71
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings$1;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v5}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 72
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 74
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v4

    .line 75
    .local v4, "switchBar":Lcom/android/exsettings/widget/SwitchBar;
    invoke-virtual {v4}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move v2, v6

    .line 78
    .local v2, "isWfcEnabled":Z
    :goto_0
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 81
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings$1;->this$0:Lcom/android/exsettings/WifiCallingSettings;

    invoke-virtual {v5}, Lcom/android/exsettings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "wifi_calling_mode"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 82
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 83
    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    :cond_0
    return-void

    .end local v2    # "isWfcEnabled":Z
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    move v2, v7

    .line 75
    goto :goto_0

    .restart local v2    # "isWfcEnabled":Z
    :cond_2
    move v5, v7

    .line 78
    goto :goto_1

    .restart local v3    # "pref":Landroid/preference/Preference;
    :cond_3
    move v6, v7

    .line 83
    goto :goto_2
.end method
