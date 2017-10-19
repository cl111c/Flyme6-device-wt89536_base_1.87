.class public abstract Lcom/android/exsettings/fuelgauge/PowerUsageBase;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PowerUsageBase.java"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field protected mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field protected mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase$1;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase$2;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/fuelgauge/PowerUsageBase;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/fuelgauge/PowerUsageBase;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-static {p1}, Lcom/android/exsettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/exsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryLevel:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryStatus:Ljava/lang/String;

    .line 145
    const/4 v2, 0x1

    .line 148
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    .line 59
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 111
    const v1, 0x7f0c0739

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020118

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 114
    .local v0, "refresh":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 105
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 122
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 90
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 77
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 81
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 85
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 73
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    return-void
.end method

.method protected refreshStats()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 131
    return-void
.end method

.method protected updatePreference(Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;)V
    .locals 1
    .param p1, "historyPref"    # Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->setStats(Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 135
    return-void
.end method
