.class public Lcom/android/exsettings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mEnabling:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/Preference;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mEnabling:Z

    .line 60
    new-instance v0, Lcom/android/exsettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/exsettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    .line 96
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 99
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 102
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/WifiApEnabler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApEnabler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/wifi/WifiApEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApEnabler;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wifi/WifiApEnabler;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 127
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    .line 130
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(II)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    const v9, 0x7f0c032b

    const v8, 0x7f0c027f

    const v7, 0x7f0c027e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 206
    .local v0, "enableWifiApSettingsExt":Z
    if-eqz v0, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    check-cast v1, Lcom/android/exsettings/HotspotPreference;

    .line 208
    .local v1, "hSwitch":Lcom/android/exsettings/HotspotPreference;
    packed-switch p1, :pswitch_data_0

    .line 236
    invoke-virtual {v1, v5}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 237
    if-ne p2, v6, :cond_1

    .line 238
    invoke-virtual {v1, v8}, Lcom/android/exsettings/HotspotPreference;->setSummary(I)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 282
    .end local v1    # "hSwitch":Lcom/android/exsettings/HotspotPreference;
    :cond_0
    :goto_1
    return-void

    .line 210
    .restart local v1    # "hSwitch":Lcom/android/exsettings/HotspotPreference;
    :pswitch_0
    invoke-virtual {v1, v9}, Lcom/android/exsettings/HotspotPreference;->setSummary(I)V

    .line 211
    invoke-virtual {v1, v5}, Lcom/android/exsettings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 218
    :pswitch_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v5}, Lcom/android/exsettings/wifi/WifiApEnabler;->postTurnOn(Landroid/content/Context;I)Z

    .line 219
    invoke-virtual {v1, v6}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 221
    invoke-virtual {v1, v6}, Lcom/android/exsettings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 224
    :pswitch_2
    const v3, 0x7f0c032c

    invoke-virtual {v1, v3}, Lcom/android/exsettings/HotspotPreference;->setSummary(I)V

    .line 225
    invoke-virtual {v1, v5}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 226
    invoke-virtual {v1, v5}, Lcom/android/exsettings/HotspotPreference;->setEnabled(Z)V

    goto :goto_1

    .line 229
    :pswitch_3
    invoke-virtual {v1, v5}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 230
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/exsettings/HotspotPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    iget-boolean v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v3, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/exsettings/HotspotPreference;->setSummary(I)V

    goto :goto_0

    .line 245
    .end local v1    # "hSwitch":Lcom/android/exsettings/HotspotPreference;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 246
    .local v2, "sSwitch":Landroid/preference/SwitchPreference;
    packed-switch p1, :pswitch_data_1

    .line 273
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 274
    if-ne p2, v6, :cond_3

    .line 275
    invoke-virtual {v2, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 279
    :goto_2
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 248
    :pswitch_4
    invoke-virtual {v2, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 249
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 256
    :pswitch_5
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 258
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 261
    :pswitch_6
    const v3, 0x7f0c032c

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 262
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 263
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 266
    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 267
    iget-object v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    iget-boolean v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v3, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postTurnOn(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "choice"    # I

    .prologue
    .line 295
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mEnabling:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Hotspot_PostConfigure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "hotspot_postConfigure_intent":Landroid/content/Intent;
    const-string v1, "choice"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mEnabling:Z

    .line 302
    .end local v0    # "hotspot_postConfigure_intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 179
    const/4 v11, 0x0

    .line 180
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 182
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 183
    check-cast v8, Ljava/lang/String;

    .line 184
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 185
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 188
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 189
    check-cast v8, Ljava/lang/String;

    .line 190
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 191
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 190
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 188
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 195
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 196
    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 197
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/exsettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 201
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 198
    :cond_7
    if-eqz v10, :cond_6

    .line 199
    iget-object v12, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    const v13, 0x7f0c027e

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 114
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiApEnabler;->setChecked(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "Checked"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    check-cast v0, Lcom/android/exsettings/HotspotPreference;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 137
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 140
    const/4 v0, 0x0

    .line 145
    .local v0, "wifiSavedState":I
    if-nez p1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 157
    :goto_0
    if-ne v0, v3, :cond_0

    .line 158
    iput-boolean v3, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/exsettingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    :goto_1
    iput-boolean p1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mEnabling:Z

    .line 168
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    const v2, 0x7f0c027e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10403af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c032d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .line 173
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
